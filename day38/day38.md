# Day 38 - Database Backups with MySQL / MariaDB and mysqldump

## Steup
Installed MariaDB and secured installation.
Created database `testdb` and user `labuser`.

## Commands
- `mysqldump -u labuser -p testdb > testdb_backup.sql` -> dump single DB
- `sudo mysqldump --all-databases > alldbs.sql` -> dump all DBs
- `mysql -u labuser -p testdb < testdb_backup.sql` -> restore DB
- `mysql -u labuser -p -e "SHOW TABLES IN testdb;"` -> list tables

## Verification
- Confirmed dump contains DDL and data.
- Dropped and restored `testdb` successfully.
- Data verified identical post-restore.

## Notes
- `mysqldump` creates logical backups - portable across servers.
- Use `--single-transaction` for large InnoDB tables to avoid locks.
- Automate daily backups with `cron`.
- Store backups off-machine for disaster recovery.
