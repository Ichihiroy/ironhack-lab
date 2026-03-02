# Shell Ops Toolkit

## Overview

This project contains Bash scripts for common DevOps tasks: file management, process monitoring, backups, log parsing, and cron scheduling.

Outputs are saved in `~/lab7-outputs/`.

---

## Scripts

- **common.sh** — shared helpers (logging, errors, dependency check)
- **fm_tool.sh** — find, archive, delete files with retention
- **proc_watch.sh** — monitor process CPU/RAM usage
- **backup.sh** — create verified backups with retention
- **log_parse.sh** — analyze nginx/syslog logs

---

## Example Usage

```bash
./fm_tool.sh --dir ~/lab7/demo --archive
./proc_watch.sh --name sleep
./backup.sh --source ~/lab7 --dest ~/lab7-outputs
./log_parse.sh --file /var/log/syslog --type syslog
```

---

## Cron

- Daily backup
- Hourly log parsing

Saved to: `lab7-outputs/lab7-cron.txt`

---

## What I Learned

- Safe Bash scripting
- Automation for ops tasks
- Log parsing with awk/grep
- Backup and retention strategies
- Cron scheduling
