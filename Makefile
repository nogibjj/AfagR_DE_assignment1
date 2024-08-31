install:

	pip install -r requirements.txt
format: # formats the files
	black *.py

lint: # checks the code quality
	pylint --disable=R,C --ignore-patterns=test_.*?py *.py
 
test: #pytest
	python -m pytest -cov=main test_main.py 
all: install format lint test