#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_NAME = make_tutorial

#################################################################################
# COMMANDS                                                                      #
#################################################################################

create_environment:
	conda create --name $(PROJECT_NAME) python=3.9.13
	@echo ">>> New conda env created. Activate with:\nsource activate $(PROJECT_NAME)"

run:
	python app.py

install_requirements:
	conda install --file requirements.txt

requirements_all.txt:
	conda list --export > requirements_all.txt
