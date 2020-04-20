#!usr/bin/evn bash
# File: guessinggame.sh

clear
read -p "Welcome to this Guessing Game.Please push ENTER"
echo "Do you guess how many files exist in the current directory?"
read files_guess

function getFilesDir {
    local aux=$(ls -l | wc -l)-1
    echo $aux
}

files_dir=$(getFilesDir)

while [[ $files_guess -ne $files_dir ]]
do
      if [[ files_guess -lt files_dir ]]
      then
              echo "Try again higher"
      else
              echo "Try again lower"
      fi
      echo "Want to try again?:"
      read files_guess
done

echo "Congratulations!You nailed it!"

