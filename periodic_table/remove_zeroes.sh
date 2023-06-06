#!/bin/bash

# program to remove the trailing zeroes in the atomic mass column in properties table

# ALTER TABLE table_name ALTER COLUMN column_name SET DATA TYPE new_data_type - This command was used to change the datatype of the column
# here, new_data_type = decimal

PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"

cat ../atomic_mass.txt | while IFS=" | " read AN AM
do
  if [[ $AN != "atomic_number" ]]
  then
    echo "$($PSQL "update properties set atomic_mass=$AM where atomic_number=$AN")"
  fi
done
