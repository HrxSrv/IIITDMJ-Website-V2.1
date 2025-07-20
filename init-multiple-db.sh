#!/bin/bash
set -e

# Create databases
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE "IIITDMJ";
    CREATE DATABASE "fusionlab";
EOSQL

# Check if files exist before restoring
if [ -f "/docker-entrypoint-initdb.d/iiitdmj.sql" ]; then
    echo "Restoring IIITDMJ database..."
    pg_restore -U "$POSTGRES_USER" -d "IIITDMJ" /docker-entrypoint-initdb.d/iiitdmj.sql || echo "Failed to restore IIITDMJ"
fi

if [ -f "/docker-entrypoint-initdb.d/fusionlab.sql" ]; then
    echo "Restoring fusionlab database..."
    pg_restore -U "$POSTGRES_USER" -d "fusionlab" /docker-entrypoint-initdb.d/fusionlab.sql || echo "Failed to restore fusionlab"
fi