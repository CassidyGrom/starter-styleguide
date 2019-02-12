.PHONY: enhanced boilerplate

enhanced: 
	curl -Lk https://github.com/russellgoldenberg/starter/archive/master.zip > temp.zip
	unzip -q temp.zip
	mv starter-master/* .
	mv starter-master/.gitignore .
	mv starter-master/.eslintrc.json .
	rm -rf temp.zip starter-master Makefile docs
	rm README.md
	mv README.story.md README.md
	mv Makefile.story Makefile
	npm i
	rm package-lock.json
	gulp fetch-doc