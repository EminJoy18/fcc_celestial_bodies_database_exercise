# function to compare the generated random number and user guess
RESULT_CHECK(){
  # arg 1 = random number and arg 2 = user input
  if [[ $1 -lt $2 ]]
  then 
    echo "It's lower than that, guess again:"
  elif [[ $1 -gt $2 ]]
  then
    echo "It's higher than that, guess again:"
  elif [[ $1 -eq $2 ]]
  then
    echo "Nice job!"
  fi
}

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
