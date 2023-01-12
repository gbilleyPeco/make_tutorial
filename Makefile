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

pull_data.py: sql_statements.py
	python pull_data.py 
	touch pull_data.py -m 

run_model.py: pull_data.py
	python run_model.py 
	touch run_model.py -m

output_analysis: run_model
	python output_analysis.py
