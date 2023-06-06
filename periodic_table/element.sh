#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"

I=0

if [[ $1 ]]
then
  echo "$($PSQL "select atomic_number,symbol,name from elements")" | while read AN BAR SYMBOL BAR NAME
  do
    if [[ $1 -eq $AN || $1 == $SYMBOL || $1 == $NAME ]]
    then
      #T=$($PSQL "select type from properties where atomic_number=$AN")
      #AM=$($PSQL "select atomic_mass from properties where atomic_number=$AN")
      #MPC=$($PSQL "select melting_point_celsius from properties where atomic_number=$AN")
      #BPC=$($PSQL "select boiling_point_celsius from properties where atomic_number=$AN")
      echo "$($PSQL "select atomic_number,symbol,name,type,atomic_mass,melting_point_celsius,boiling_point_celsius from elements inner join properties using (atomic_number) inner join types using (type_id) where atomic_number=$AN or symbol='$SYMBOL' or name='$NAME'")" | while IFS=" | " read AN SYMBOL NAME TYPE AM MPC BPC
      do
        echo "The element with atomic number $AN is $NAME ($SYMBOL). It's a $TYPE, with a mass of $AM amu. $NAME has a melting point of $MPC celsius and a boiling point of $BPC celsius."
      done
    fi
  done

  if [[ $1 =~ [0-9] ]]
  then
    J=$($PSQL "select * from elements where atomic_number=$1")
    if [[ -z $J ]]
    then
      echo "I could not find that element in the database."
    fi
  else
    K=$($PSQL "select * from elements where symbol='$1'")
    L=$($PSQL "select * from elements where name='$1'")
    if [[ -z $K && -z $L ]]
    then
      echo "I could not find that element in the database."
    fi
  fi

else
  echo "Please provide an element as an argument."
fi
