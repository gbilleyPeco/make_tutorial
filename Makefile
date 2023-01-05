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

install_requirements: requirements.txt
	conda install requirements.txt
