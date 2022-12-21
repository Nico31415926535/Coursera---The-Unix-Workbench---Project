all: title datetime count

title:
	echo "# Project - The Guessing Game" > README.md

datetime: title
	date >> README.md

count: title datetime
	echo "Number of lines: " >> README.md
	wc -l guessinggame.sh |egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
