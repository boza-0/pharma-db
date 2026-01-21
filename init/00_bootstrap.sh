#!/bin/sh
set -e

LOG="/var/lib/postgresql/init.log"
touch "$LOG"

echo "=== Starting controlled initialization ===" | tee -a "$LOG"

for f in /docker-entrypoint-initdb.d/*.sql.in; do
    echo "Running $f" | tee -a "$LOG"

    if psql \
        -v ON_ERROR_STOP=1 \
        -v VERBOSITY=verbose \
        --echo-errors \
        -U "$POSTGRES_USER" \
        -d "$POSTGRES_DB" \
        -f "$f" >> "$LOG" 2>&1; then
        echo "SUCCESS: $f" | tee -a "$LOG"
    else
        echo "FAILED: $f" | tee -a "$LOG"
        echo "=== Initialization aborted due to failure ===" | tee -a "$LOG"
        exit 1
    fi
done

echo "=== All SQL scripts executed successfully ===" | tee -a "$LOG"
