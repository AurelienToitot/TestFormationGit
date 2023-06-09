#.ONESHELL
.SHELL:=bin/bash

gitcommit:
	git add .
	git commit -m "commit auto"
	
init:
	python3.11 -m venv virtualenv
	source virtualenv/bin/activate
	pip3 install --upgrade pip
	pip3 install ansible molecule[docker, lint]

