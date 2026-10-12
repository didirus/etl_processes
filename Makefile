.DEFAULT_GOAL := help

VENV_DIR := .venv
UV := $(VENV_DIR)/bin/uv

.PHONY: help create-venv install jupyter-kernel clean

help:
	@printf '%s\n' \
		'ETL Processes course commands:' \
		'  make create-venv  Create the virtual environment and install uv' \
		'  make install      Install dependencies inside the venv and verify the environment' \
		'  make jupyter-kernel  Register a Jupyter kernel for this project' \
		'  make clean    Remove generated local environment files'

create-venv:
	python -m venv --upgrade-deps $(VENV_DIR)
	$(VENV_DIR)/bin/python -m pip install --upgrade uv

install: create-venv
	$(UV) sync
	$(UV) run python -c "import apscheduler, ipykernel, IPython, matplotlib, numpy, pandas, pyarrow, fastparquet, requests; print('Environment is ready.')"
	@printf '%s\n' 'Activate the environment in your current terminal with:'
	@printf '%s\n' '  source $(VENV_DIR)/bin/activate'

jupyter-kernel: install
	$(UV) run python -m ipykernel install --user --name etl-processes --display-name "Python (ETL Processes)"

clean:
	rm -rf .venv
