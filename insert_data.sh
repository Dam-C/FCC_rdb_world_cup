#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# CLEAN DATABASE
echo $($PSQL "TRUNCATE games, teams")

# FILL DATABASE
echo -e "\n~~ TEAMS INSERTIONS ~~\n"
cat games.csv | while IFS="," read Y R W O W_GOALS O_GOALS
do
if [[ $Y != year  ]]
then
  W_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$W'")
  O_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$O'")
  if [[ -z $W_ID ]]
  then
    INSERT_W=$($PSQL "INSERT INTO teams(name) VALUES('$W')")
    W_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$W'")
    echo Inserted into teams: $W
  fi
  if [[ -z $O_ID ]]
  then
    INSERT_O=$($PSQL "INSERT INTO teams(name) VALUES('$O')")
    O_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$O'")
    echo Inserted into teams: $O
  fi  
fi
done

echo -e "\n~~ GAMES INSERTIONS ~~\n"
cat games.csv | while IFS="," read Y R W O W_GOALS O_GOALS
do
if [[ $Y != year  ]]
then
  W_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$W'")
  O_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$O'")
  INSERT_GAME_INFOS=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($Y, '$R', $W_ID, $O_ID, $W_GOALS, $O_GOALS)")
  echo Inserted into games: $Y, $R, $W_ID, $O_ID, $W_GOALS, $O_GOALS
fi
done