#!/bin/bash

MAX=100
echo "Wellcome to the CanYouGuessMyNumber Game!"
echo "========================================="
echo
echo "I have a number in mind. It is between 0 and $MAX. Can you guess it?"
echo ""
echo ""

MY_NUMBER=$( expr "$RANDOM" % $MAX )
guesses=1
read -p "What is your guess? " guess
while [[ "${guess}" != "${MY_NUMBER}" ]]; do
  if [[ ${guess} -gt ${MY_NUMBER} ]]; then
    echo "That is too big"
  else
    echo "That is too small"
  fi
  read -p "What is your guess? " guess
  (( guesses += 1 ))
done

echo "You Won after ${guesses} guesses !!!!!!!!!!!!!!!!!!"
