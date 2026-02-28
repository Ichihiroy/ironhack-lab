#!/bin/bash
# Lab 2: Process Monitoring
# This script checks if a given process is running and reports its status.

process="cron"  # Name of the process to check (change this as needed)

# Use pgrep to search for the process by name.
# -x ensures an exact match (e.g., "cron" won't match "crond").
if pgrep -x "$process" > /dev/null; then
	echo "$process is running"
else
	echo "$process is NOT running"
fi
