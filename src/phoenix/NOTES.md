Your project source files will be available at `/workspace`.

This template uses PostgreSQL as the database backend by default, if you would like to use SQLite instead, specify the database backend in template arguments, here's an example:
```
 $ devcontainer templates apply \
    -t 'ghcr.io/on-my-machine-works/devcontainer-templates/phoenix' \
    -a '{"database": "sqlite3"}' \
    -w ./my-project
```
