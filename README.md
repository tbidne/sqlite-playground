# Sqlite Playground

# Start

## Load example

```sh
$ mkdir bin
$ sqlite3 bin/db1.sqlite < db1/init.sql
$ sqlite3 -init .sqliterc
```

## Verify schema

```sh
sqlite> .open bin/db1.sqlite
sqlite> .tables
nobel
sqlite> .schema
CREATE TABLE nobel (
  winner text,
  rs int,
  subject text
);
```

## Run examples

```sh
sqlite> .read db1/ex1.sql
```
