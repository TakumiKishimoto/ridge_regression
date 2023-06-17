.PHONY: install
install:
	@if [ -z "$$(pyenv versions | grep '3\.10\..*')" ]; then \
		pyenv install 3.10; \
	else \
		echo "Python 3.10 is already installed."; \
	fi
	poetry env use 3.10
	poetry install
	poetry run pre-commit install

.PHONY: run
run:
	python src/main.py

.PHONY: pre-commit
pre-commit:
	poetry run pre-commit run --all-files

.PHONY: test
test:
	poetry run pytest -s -vv --cov=. --cov-branch --cov-report=html
