#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"

echo "$($PSQL "select INITCAP(symbol),name from elements")" | while IFS=" | " read SYMBOL NAME
do
  echo "$($PSQL "update elements set symbol='$SYMBOL' where name='$NAME'")"
done
