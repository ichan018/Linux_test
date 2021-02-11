#!/bin/bash

echo "What would you like to do?"
echo "1: Delete file"
echo "2: Edit file"

read -p "Enter your response:" action

if [ "$action" -eq 1 ]
then 
    read -p "What file do you want to delete?" FILENAME

    if test -f "$FILENAME"
    then
        echo "Deleting file"
        rm $FILENAME
    fi
elif [ "$action" -eq 2 ]
then
    read -p "What file do you want to add text to?" FILENAME
    read -p "Enter text" TEXTENTER
    
    if test -f "$FILENAME"
    then
	echo ""
    else
	echo "Creating $FILENAME"
	touch $FILENAME
    
        fi
     echo "Adding $TEXTENTER to $FILENAME ..."
     echo "$TEXTENTER" >> $FILENAME

else
    echo "$action is not a valid number. Try again."
fi
