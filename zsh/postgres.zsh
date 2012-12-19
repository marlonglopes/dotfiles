# Set filetype on editing. Use `\e` to open the editor from `psql`.
export PSQL_EDITOR="vim -c ':set ft=sql'"

# db-dump DB_NAME
function db-dump() {
  pg_dump -Fc -f database.dump "$1" && echo Wrote to database.dump
}

# db-restore DB_NAME
alias db-restore='pg_restore --verbose --clean --no-acl --no-owner -d'
