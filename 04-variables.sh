#!/bin/bash

PERSON1=$1 #there should be no space before & after =
PERSON2=$2

echo "$PERSON1: Hey $PERSON2, How are you?"
echo "$PERSON2: Hello $PERSON1, I am fine. How are you doing"
echo "$PERSON1: I am fine too. what's up?"
echo "$PERSON2: Nothing, just going to Mars now, will you come..?"
echo "$PERSON1: Sorry, you carry on! I will come once you back.."

# sh 04-variables.sh Ram Raj.
# Above is the way to pass the arguments to the script from outside.
# Ram will be store in $1 and Raj will be store in $2