#!/usr/bin/bash
function process_input {
	read guess
	while [[ ! $guess =~ ^[0-9]*$ ]]
	do
		echo "You've entered invalid input. You should enter numeric value."
		echo "Try again:"
		read guess
	done
}

function process_wrong_answer {
	if [[ $guess -gt $sum_of_files ]]
	then
		echo 'Your guess is greater then the correct answer.'
	else
		echo 'Your guess is less then the correct answer.'
	fi
	echo 'Try again:'
}

function files_qty {
	echo $(( $(ls -l "$1" | wc -l) - 1 ))
}

sum_of_files="$(files_qty "$(pwd)")"
echo 'Try to guess the correct quantity of files in current directory.'
echo 'Please enter your guess:'
process_input
while [[ $guess -ne $sum_of_files ]]
do
	process_wrong_answer
	process_input
done
echo "Nice job! You've guessed the correct number of files in current directory."
