# Make file for building bearnaise-bot

.PHONY : install
install:
	python setup.py install

.PHONY : deploy
deploy:
	rm -rf dist
	python setup.py bdist_wheel sdist --formats gztar
	twine upload dist/*

.PHONY : build
build:
	python setup.py bdist_wheel sdist --formats gztar


.PHONY : clean
clean:
	rm -f MANIFEST
	rm -f *.pyc
	rm -f **/*.pyc
	rm -f **/*.swp
	rm -rf build
	rm -rf dist
	rm -rf tmp
