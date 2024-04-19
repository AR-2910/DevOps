#!/bin/bash

##############################
# Author: Abhinav
#
# Date: 15/2/24
#
# Description: This script performs a simple file backup and integrity check using SHA-256 checksums.
#
# Version: v1
##############################

source_file="$1"
backup_directory="$2"
log_file="$3"

calculate_checksums() {
    sha256sum "$1" | awk '{print $1}'
}

show_notif() {
    local message="Integrity check failed for file: $1\nExpected checksum: $2\nCalculated checksum: $3"
    echo "$message"
}

backup_file(){
    local filename=$(basename "$source_file")
    local expected_checksum=$(calculate_checksums "$source_file")
    local copied_file="$backup_directory/$filename"

    if [ "$(calculate_checksums "$source_file")" != "$expected_checksum" ]; then
        echo "$(date +"%Y-%m-%d %H:%M:%S") - Integrity check fail for file: $filename" >> "$log_file"
        show_notif "$filename" "$expected_checksum" "$(calculate_checksums "$source_file")"
    else
        echo "$(date +"%Y-%m-%d %H:%M:%S") - Integrity check passed for file: $filename" >> "$log_file"
        cp "$source_file" "$copied_file" && echo "$(date +"%Y-%m-%d %H:%M:%S") - Backup successful for file: $filename" >> "$log_file"
    fi
}

backup_file
