import os
import subprocess
from datetime import datetime, timedelta

from django.conf import settings
from django.core.management.base import BaseCommand, CommandError


class Command(BaseCommand):
    help = "Create a daily MySQL database backup and remove backups older than 7 days"

    BACKUP_RETENTION_DAYS = 7

    def handle(self, *args, **options):

        # ==========================================================
        # BACKUP DIRECTORY
        # ==========================================================
        backup_dir = os.path.join(
            settings.BASE_DIR,
            "database_backups",
        )

        os.makedirs(backup_dir, exist_ok=True)

        # ==========================================================
        # BACKUP FILE NAME
        # ==========================================================
        timestamp = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")

        backup_file = os.path.join(
            backup_dir,
            f"backup_{timestamp}.sql",
        )

        # ==========================================================
        # DATABASE CONFIGURATION
        # ==========================================================
        db = settings.DATABASES["default"]

        db_name = db["NAME"]
        db_user = db["USER"]
        db_password = db["PASSWORD"]
        db_host = db.get("HOST") or "localhost"
        db_port = str(db.get("PORT") or "3306")

        # ==========================================================
        # MYSQLDUMP COMMAND
        # ==========================================================
        command = [
            "mysqldump",
            f"--host={db_host}",
            f"--port={db_port}",
            f"--user={db_user}",
            f"--password={db_password}",
            "--single-transaction",
            "--routines",
            "--triggers",
            db_name,
        ]

        # ==========================================================
        # CREATE BACKUP
        # ==========================================================
        try:
            with open(backup_file, "w") as output:

                result = subprocess.run(
                    command,
                    stdout=output,
                    stderr=subprocess.PIPE,
                    text=True,
                    check=True,
                )

        except FileNotFoundError:

            raise CommandError(
                "mysqldump was not found on the server."
            )

        except subprocess.CalledProcessError as e:

            # Remove incomplete backup
            if os.path.exists(backup_file):
                os.remove(backup_file)

            raise CommandError(
                f"Database backup failed: {e.stderr}"
            )

        # ==========================================================
        # VERIFY BACKUP
        # ==========================================================
        if not os.path.exists(backup_file):

            raise CommandError(
                "Backup command completed but the SQL file was not created."
            )

        backup_size = os.path.getsize(backup_file)

        if backup_size == 0:

            os.remove(backup_file)

            raise CommandError(
                "Backup file was created but is empty."
            )

        self.stdout.write(
            self.style.SUCCESS(
                f"Database backup created successfully: "
                f"{os.path.basename(backup_file)} "
                f"({backup_size / 1024 / 1024:.2f} MB)"
            )
        )

        # ==========================================================
        # DELETE BACKUPS OLDER THAN 7 DAYS
        # ==========================================================
        cutoff_time = datetime.now() - timedelta(
            days=self.BACKUP_RETENTION_DAYS
        )

        deleted_count = 0

        for filename in os.listdir(backup_dir):

            # Only process SQL backup files
            if not filename.endswith(".sql"):
                continue

            file_path = os.path.join(
                backup_dir,
                filename,
            )

            # Make sure it is actually a file
            if not os.path.isfile(file_path):
                continue

            file_modified_time = datetime.fromtimestamp(
                os.path.getmtime(file_path)
            )

            if file_modified_time < cutoff_time:

                try:
                    os.remove(file_path)
                    deleted_count += 1

                    self.stdout.write(
                        self.style.WARNING(
                            f"Deleted old backup: {filename}"
                        )
                    )

                except OSError as e:

                    self.stderr.write(
                        self.style.ERROR(
                            f"Could not delete {filename}: {e}"
                        )
                    )

        # ==========================================================
        # SUMMARY
        # ==========================================================
        self.stdout.write(
            self.style.SUCCESS(
                f"Backup completed. "
                f"Old backups deleted: {deleted_count}"
            )
        )