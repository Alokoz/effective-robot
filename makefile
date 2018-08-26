README.md:guessinggame.sh
	echo "# Guessing Game Challenge" > README.md
	echo "Date of makefile: " >> README.md
	date >> README.md
	echo "\\" >> README.md
	echo "Number of lines of code in game: " >> README.md
	wc -l < guessinggame.sh >> README.md
