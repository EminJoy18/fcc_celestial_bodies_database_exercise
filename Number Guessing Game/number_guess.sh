#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guessing_game --tuples-only -c"

TRIES=0

CORE_GAME(){
  # the actual game begins
  NUMBER=$(( $RANDOM % 1000 + 1 ))

  echo "Guess the secret number between 1 and 1000:"
  read GUESS

  # while guess is not equal to random number
  while [[ $NUMBER -ne $GUESS ]]
  do
    # if not an integer
    if [[ ! $GUESS =~ ^[0-9]+$ ]]
    then 
      # printing that it is not an integer
      echo That is not an integer, guess again:
      #giving another guess
      read GUESS

    # if it is an integer
    else
      if [[ $NUMBER -lt $GUESS ]]
      then 
        echo "It's lower than that, guess again:"
      elif [[ $NUMBER -gt $GUESS ]]
      then
        echo "It's higher than that, guess again:"
      fi
      read GUESS
      echo -e "\nANSWER = $NUMBER\n"
    fi

    let TRIES++
  done

  let TRIES++
  echo "You guessed it in $TRIES tries. The secret number was $NUMBER. Nice job!"
}

echo "Enter your username:"
read USERNAME

DB_CHECK=$($PSQL "select * from records where username='$USERNAME'")

# no record and player is new
if [[ -z $DB_CHECK ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  CORE_GAME

  echo "$($PSQL "insert into records values('$USERNAME',$TRIES,1)")" 1> stdout.txt

# player has played previously
else
  UN=$($PSQL "select username from records where username='$USERNAME'")
  GP=$($PSQL "select games_played from records where username='$USERNAME'")
  PB=$($PSQL "select personal_best from records where username='$USERNAME'")
  echo Welcome back, $UN! You have played $GP games, and your best game took $PB guesses.

  CORE_GAME
  let GP++

  # to insert to database
  if [[ $TRIES -lt $PB ]]
  then
    echo "$($PSQL "update records set personal_best=$TRIES where username='$USERNAME'")" 1> stdout.txt
    echo "$($PSQL "update records set games_played=$GP where username='$USERNAME'")" 1> stdout.txt
  else
    echo "$($PSQL "update records set games_played=$GP where username='$USERNAME'")" 1> stdout.txt
  fi
fi 
