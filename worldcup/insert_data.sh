#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo "$($PSQL "truncate teams,games")"
#resetting serial back to 1
#echo "$($PSQL ALTER SEQUENCE games_game_id_seq RESTART WITH 1")"
#echo "$($PSQL ALTER SEQUENCE teams_team_id_seq RESTART WITH 1")"

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != 'year' ]]
  then

     #making sure the team to be entered in teams table is unique
      W=$($PSQL "select name from teams where name='$WINNER'")

      if [[ -z $W ]]
      then
        IN=$($PSQL "insert into teams(name) values('$WINNER')")
        if [[ $IN == "INSERT 0 1" ]]
        then
          echo $WINNER, inserted into teams table.
        fi
      fi


      #making sure the opponent team to be entered in teams table is unique
      O=$($PSQL "select name from teams where name='$OPPONENT'")

      if [[ -z $O ]]
      then
        I=$($PSQL "insert into teams(name) values('$OPPONENT')")
        if [[ $I == "INSERT 0 1" ]]
        then
          echo $OPPONENT, inserted into teams table.
        fi
      fi

      WIN=$($PSQL "select team_id from teams where name='$WINNER'")
      
      OPP=$($PSQL "select team_id from teams where name='$OPPONENT'")
      REC=$($PSQL "insert into games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) values($YEAR,'$ROUND',$WIN,$OPP,$WINNER_GOALS,$OPPONENT_GOALS)")
      if [[ $REC == "INSERT 0 1" ]]
      then
        echo "Inserted into games!"
      fi

  fi
done
