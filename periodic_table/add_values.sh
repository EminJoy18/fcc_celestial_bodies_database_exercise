#!/bin/bash

# program to add type id to properties table

PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"

echo "$($PSQL "select type from properties")" | while read TYPE
do
  if [[ $TYPE == 'metal' ]]
  then
    echo "$($PSQL "update properties set type_id=1 where type='$TYPE'")"
  elif [[ $TYPE == 'nonmetal' ]]
  then
    echo "$($PSQL "update properties set type_id=2 where type='$TYPE'")"
  elif [[ $TYPE == 'metalloid' ]]
  then
    echo "$($PSQL "update properties set type_id=3 where type='$TYPE'")"
  fi
done
