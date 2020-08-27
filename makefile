all: README.md

clean:
	rm README.md

README.md: 
	echo '## Guessing number of files in current directory game' > ./README.md
	echo -n 'Created on: ' >> ./README.md
	date >> ./README.md
	echo -n 'Number of lines in guessinggame.sh: ' >> ./README.md
	wc -l < ./guessinggame.sh >> ./README.md


