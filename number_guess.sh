#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

NUMBER=$(( $RANDOM % 1000 + 1 ))

echo "Enter your username: "

read USERNAME

USER_EXISTS=$($PSQL "SELECT users.user_id, username, COUNT(game_id), MIN(guesses) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME' GROUP BY user_id;")

if [[ -z "$USER_EXISTS" ]]
then
  USER_INSERT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME');")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  echo $USER_EXISTS | while IFS=" |" read USER_ID USERNAME GAMES_PLAYED BEST_GAME
  do  
    DATA=$($PSQL "SELECT * FROM users WHERE username='$USERNAME';")
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi

echo "Guess the secret number between 1 and 1000:"
read GUESS

# echo $NUMBER

NUM_GUESSES=1

while [[ $GUESS != $NUMBER ]]
do
  echo "Number of guesses '$NUM_GUESSES'"
  ((NUM_GUESSES++))

  if [[ $GUESS =~ ^-?[0-9]+$ ]]
  then
    if [[ "$GUESS" -gt  "$NUMBER" ]]
    then
      echo "It's lower than that, guess again:"
      read GUESS
    else
      echo "It's higher than that, guess again:"
      read GUESS
    fi
  else
    echo "That is not an integer, guess again:"
    read GUESS
  fi
done


USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

GAME_INSERT=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $NUM_GUESSES);")

echo "You guessed it in $NUM_GUESSES tries. The secret number was $NUMBER. Nice job!"

exit
