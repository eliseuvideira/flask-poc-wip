.PHONY: setup
setup:
	python3 -m venv venv

.PHONY: install
install: setup
	pip install -r requirements.txt

.PHONY: save
save:
	pip freeze >requirements.txt

.PHONY: run
run:
	python3 src/index.py
