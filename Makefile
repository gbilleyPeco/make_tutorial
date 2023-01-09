#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_NAME = make_tutorial

#################################################################################
# COMMANDS    (for project 1)                                                   #
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

#################################################################################
# COMMANDS    (for project 2)                                                   #
#################################################################################

pull_data:
	pull_data.py

run_model: pull_data
	run_model.py

output_analysis: run_model
	output_analysis.py
	