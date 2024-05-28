rm -r bin
mkdir -p bin

sqlite3 -init .sqliterc bin/db1.sqlite < db1/init.sql
sqlite3 -init .sqliterc bin/db2.sqlite < db2/init.sql
