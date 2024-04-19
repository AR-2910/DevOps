# Secure Backup Manager

This script performs a simple file backup and integrity check using SHA-256 checksums. It compares the checksum of the source file with the expected checksum to ensure data integrity before backing up the file.

## Used Commands
- `sha256sum`: Calculates the SHA-256 checksum of a file.
- `awk`: Extracts the checksum from the output of `sha256sum`.
- `cp`: Copies the source file to the backup directory if the integrity check passes.
- `date`: Records timestamps for backup and integrity check events.
- `basename`: Extracts the filename from the source file path.

## Use Cases
- Performing routine backups of important files.
- Verifying the integrity of files before backup to prevent data corruption.
- Automating backup processes in scripts or scheduled tasks.
- Referencing backup logs for audit trails and troubleshooting purposes in the future.

## How to Run
1. Ensure that the script file is executable (`chmod +x Secure_Backup.sh`).
2. Run the script with the following command:
   `./Secure_Backup.sh <source_file> <backup_directory> <log_file>`

## Note
Before running the script, ensure that you have the necessary permissions to read the source file and write to the backup directory. Additionally, make sure that the source file exists and the backup directory is accessible.

