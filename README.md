# Export PostgreSQL Data to CSV Files
Automating PostgreSQL Data Export to CSV Files. 
When working with PostgreSQL databases, you may encounter situations where you need to export data from all tables in a schema to separate CSV files. This can be especially useful for data analysis, backups, or migrations.

**Blog -** https://blog.niteshapte.com/2024-07-06-how-to-export-postgresql-data-to-csv-files.htm

## Prerequisites
#### Create the .pgpass file in the home folder
```
touch ~/.pgpass
```

#### Add Your Database Credentials
Add your DB credentials in below format
```
your_host:your_port:your_database_name:your_username:your_password
```

#### Set the permissions on the .pgpass file
```
chmod 600 ~/.pgpass
```

## Usage
#### Clone the repository
```
git clone https://github.com/niteshapte/postgres-data-export-csv
```

#### Move to directory
```
cd postgres-data-export-csv
```

#### Make the Script Executable
```
chmod +x export_schema_data.sh
```

#### Run the script
```
./export_schema_data.sh
```
