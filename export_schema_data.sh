#!/bin/bash

set -e  # Exit immediately if a command returns a non-zero status

# Database connection parameters
DB_HOST=""
DB_PORT=""
DB_NAME=""
SCHEMA_NAME=""

# Get a list of all tables in the schema
TABLES=$(psql -h $DB_HOST -p $DB_PORT -d $DB_NAME -t -c "SELECT table_name FROM information_schema.tables WHERE table_schema='$SCHEMA_NAME' AND table_type='BASE TABLE';")

# Export data from each table to a separate CSV file
for TABLE in $TABLES; do
    TABLE=$(echo $TABLE | xargs)  # Trim any leading/trailing whitespace
    echo "Exporting $TABLE"
    psql -h $DB_HOST -p $DB_PORT -d $DB_NAME -c "\COPY $SCHEMA_NAME.$TABLE TO STDOUT WITH CSV HEADER;" > "$TABLE.csv"
    echo "Exported $TABLE to $TABLE.csv"
done

echo "Export completed"
