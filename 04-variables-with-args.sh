#!/bin/bash

PERSON1=$1
PERSON2=$2 # no spaces before and after equal (=)
# diff bw variables and normal text is $ in front of variable names
#$1 is argument one, $2 is argument two, we pass them at run time, running shell script sh 04-variables-with-args.sh ramesh rajesh

echo "$PERSON1:: hi $PERSON2"
echo "$PERSON2:: hi $PERSON1"
echo "$PERSON1:: how are you doing"
echo "$PERSON2:: i am fine, how are you? "