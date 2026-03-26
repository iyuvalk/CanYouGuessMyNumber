#!/bin/bash

echo "Wellcome to the CanYouGuessMyNumber Game!"
echo "========================================="
echo
echo "I have a number in mind. Can you guess it?"
echo ""
echo ""

MY_NUMBER=$( expr "$RANDOM" % 100 )
guesses=1
read -p "What is your guess? " guess
while [[ "${guess}" != "${MY_NUMBER}" ]]; do
  if [[ "${guess}" > "${MY_NUMBER}" ]]; then
    echo "That is too big"
  else
    echo "That is too small"
  fi
  read -p "What is your guess? " guess
  (( guesses += 1 ))
done

echo "You Won after ${guesses} guesses !!!!!!!!!!!!!!!!!!"
