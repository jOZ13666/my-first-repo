all: README.md readme_content

README.md:
	touch README.md

readme_content
	echo "# Guessing Game" >> README.md
	echo "r\" >> README.md
	date +'%a, %b, %Y %T' >> README.md
	
