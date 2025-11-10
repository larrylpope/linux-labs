
# Day 39 - Restore a Database Backup Locally

## Objective
Demonstrate restoring a MySQL/MariaDB database from a `mysqldump` backup.

## Steps
1. Dropped old database:
```sql
DROP DATABASE testdb;
```
2. Created new database:
```bash
mysql -u labuser -p -e "CREATE DATABASE testdb;"
```
3. Restored data:
```bash
mysql -u labuser -p testdb < ~/linux-labs/day39/testdb_backup.sql
```
4. Verified:
```bash
mysql -u labuser -p -e "SELECT * FROM testdb.students;"
```

## Key Commands
- `mysqldump -u user -p db > dump.sql` -> export database
- `mysql -u user -p db < dump.sql` -> import/restore backup
- `SHOW TABLES;` -> confirm schema
- `SELECT COUNT(*) FROM table;` -> verify data count

## Verification
- `students` table restored successfully
- Schema and data matched pre-backup state
- User permissions confirmed

## Notes
- Always verify dump file before restore (`head dump.sql`).
- For large DBs, consider `--single-transaction` and compression (`gzip`).
- Keep backups versioned and stored off-server.
