#!/bin/bash

RANDOM_NUMBER=$(( ( RANDOM % 100 ) + 1 ))
RANDOM_CPP="main$RANDOM_NUMBER.cpp"

# Datei mit inhalt füllen, da sie ansonsten nicht commited werden
echo "Hier steht bald ganz wichtiger Code von der Datei $RANDOM_CPP" > $RANDOM_CPP

git add .
git commit -m "$RANDOM_CPP hinzugefügt"
git log --oneline --graph
