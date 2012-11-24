SHELL = /usr/bin/env bash

ROOT_DIR = $(shell pwd)
BIN_DIR = $(ROOT_DIR)/bin
PYTHON = $(shell which python)
BUILDOUT = $(BIN_DIR)/buildout
BUILDOUT_CONFIGURATION = $(ROOT_DIR)/buildout.cfg
BUILDOUT_BOOTSTRAP = $(ROOT_DIR)/bootstrap.py
BUILDOUT_BOOTSTRAP_ARGS = --distribute -c $(BUILDOUT_CONFIGURATION) 
BUILDOUT_ARGS = -c $(BUILDOUT_CONFIGURATION)
LANDSLIDE = $(BIN_DIR)/landslide
LANDSLIDE_CONFIGURATION = landslide.cfg
LANDSLIDE_ARGS = $(LANDSLIDE_CONFIGURATION)


slides:
	$(LANDSLIDE) $(LANDSLIDE_ARGS)


install: buildout


clean:
	find . -name "*.pyc" -delete


realclean: clean
	rm -rf bin/ lib/


buildout:
	mkdir -p $(ROOT_DIR)/lib/buildout
	if [ ! -x $(BUILDOUT) ]; then \
		$(PYTHON) $(BUILDOUT_BOOTSTRAP) $(BUILDOUT_BOOTSTRAP_ARGS); \
	fi
	$(BUILDOUT) $(BUILDOUT_ARGS)
