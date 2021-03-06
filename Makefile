.PHONY: tests
build:
	python3 setup.py sdist


.ONESHELL:
doc:
	source v/bin/activate
	cd docs
	make html

clean:
	rm -rf *.egg-info build dist src/keras_video_generators.egg-info

tests:
	nosetests -v tests/*.py --with-coverage --cover-package keras_video

tests-html:
	nosetests -v tests/*.py --with-coverage --cover-package keras_video \
		--cover-html --cover-html-dir=coverage
	xdg-open coverage/index.html
