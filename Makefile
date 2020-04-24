.PHONY: docs
init:
	pip install pipenv --upgrade
	pipenv install --dev

all-tests:
	tox -r
	coverage xml -i

py36-tests:
	tox -re py36,pep8
	coverage xml -i

py37-tests:
	tox -re py37,pep8
	coverage xml -i

py38-tests:
	tox -re py38,pep8
	coverage xml -i

publish:
	pip install 'twine>=1.5.0'
	python setup.py sdist bdist_wheel
	twine upload dist/*
	rm -fr build dist .egg requests.egg-info

docs:
	sphinx-apidoc -o  docs/source/ ownca/
	cd docs && make clean && make html
	@echo "\033[95m\n\nBuild successful! View the docs homepage at docs/_build/html/index.html.\n\033[0m"
