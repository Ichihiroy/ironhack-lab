#!/bin/bash

WORK_DIR="lab1_test"        	# Working directory to create
BACKUP_DIR="lab1_backup"    	# Directory for backup copy
FILE_NAME="sample.txt"      	# Name of the file to create and manipulate
NEW_NAME="sample_renamed.txt"   # New name for the file after renaming

echo "Creating directory $WORK_DIR ..."
mkdir -p "$WORK_DIR"        	# Create the working directory (use -p to avoid error if it exists)

echo "Creating a sample file in $WORK_DIR ..."
echo "Hello, this is a sample file." > "$WORK_DIR/$FILE_NAME"   # Create a file with some text in it

echo "Listing files in $WORK_DIR:"
ls -l "$WORK_DIR"          	# List files to confirm creation (should see sample.txt)

echo "Creating backup directory $BACKUP_DIR ..."
mkdir -p "$BACKUP_DIR"     	# Create backup directory

echo "Copying $FILE_NAME to backup directory..."
cp "$WORK_DIR/$FILE_NAME" "$BACKUP_DIR/"   # Copy the file to the backup directory

echo "Renaming $FILE_NAME to $NEW_NAME ..."
mv "$WORK_DIR/$FILE_NAME" "$WORK_DIR/$NEW_NAME"   # Rename the file in the original directory

echo "Moving $NEW_NAME into a new subdirectory..."
NEW_SUBDIR="$WORK_DIR/subdir"
mkdir -p "$NEW_SUBDIR"                    	# Create a new subdirectory
mv "$WORK_DIR/$NEW_NAME" "$NEW_SUBDIR/"   	# Move the renamed file into the new subdirectory

echo "Deleting the file in subdirectory..."
rm "$NEW_SUBDIR/$NEW_NAME"	# Delete the file

echo "Cleaning up directories..."
rmdir "$NEW_SUBDIR"       	# Remove the now-empty subdirectory
rmdir "$WORK_DIR"         	# Remove the now-empty original directory

# (We keep the backup directory and file for verification)
echo "File operations complete. Backup copy is in $BACKUP_DIR."




