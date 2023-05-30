#! /bin/bash

# echo -e "\n\n~~~~ Periodic Table ~~~~\n\n"

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --tuples-only -c"

echo -e "\n\n~~~~ Periodic Table ~~~~\n\n"

if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
  echo -e "\nPlease provide an element as an argument."
  exit
fi

@@ -22,12 +22,12 @@ fi
#element not in db
if [[ -z $element ]]
then
  echo "I could not find that element in the database."
  echo -e "\nI could not find that element in the database."
  exit
fi

echo $element | while IFS=" |" read an name symbol type mass mp bp 
do
  echo "The element with atomic number $an is $name ($symbol). It's a $type, with a mass of $mass amu. $name has a melting point of $mp celsius and a boiling point of $bp celsius."
  echo -e "\nThe element with atomic number $an is $name ($symbol). It's a $type, with a mass of $mass amu. $name has a melting point of $mp celsius and a boiling point of $bp celsius."
done
