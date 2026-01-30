#!/bin/bash

# Script to create a new Python3 Virtual Environment.
# Assumes Python3 is installed on the system.
# Dated 18th June 2020.
# 
# Usage example:
# new-venv-here.sh

set -e

# # Catch error if no input file defined
# if [ -z "$1" ]; then
  # echo "Error, no input file defined"
  # exit 1
# fi

# Default environment name is .venv

mkdir -p src
mkdir -p tests
mkdir -p docs

echo ""
echo "  Creating new Virtual Environment .venv................"
echo ""

python3 -m venv .venv

echo "  New Virtual Environment .venv created"
echo ""

# Upgrade pip in venv
source .venv/bin/activate
echo "  Upgrading pip..........."
echo ""

# Why python -m pip?
# see:-
# https://snarky.ca/why-you-should-use-python-m-pip/

python3 -m pip install -U pip

# Upgrade setuptools, not even sure this works as expected.
# source .venv/bin/activate
echo "  Upgrading setuptools..........."
echo ""

python3 -m pip install -U setuptools

# Don't commit your virtual environment to your version control system
# echo "*" > "$1"/.gitignore

# echo ""
# echo "cd /home/live/.virtualenvs then type source ""$1""/bin/activate.fish"
# #echo "cd /home/live/.virtualenvs then type source "$1"/bin/activate.fish"
# echo ""

# # Create .gitignore
# touch .gitignore
# cat << EOF > .gitignore
# # Byte-compiled / optimized / DLL files
# __pycache__/
# *.py[cod]
# *$py.class

# # C extensions
# *.so

# # Distribution / packaging
# .Python
# env/
# build/
# develop-eggs/
# dist/
# downloads/
# eggs/
# .eggs/
# lib/
# lib64/
# parts/
# sdist/
# var/
# wheels/
# *.egg-info/
# .installed.cfg
# *.egg

# # PyInstaller
# #  Usually these files are written by a python script from a template
# #  before PyInstaller builds the exe, so as to inject date/other infos into it.
# *.manifest
# *.spec

# # Installer logs
# pip-log.txt
# pip-delete-this-directory.txt

# # Unit test / coverage reports
# htmlcov/
# .tox/
# .coverage
# .coverage.*
# .cache
# nosetests.xml
# coverage.xml
# *.cover
# .hypothesis/

# # Translations
# *.mo
# *.pot

# # Django stuff:
# *.log
# local_settings.py

# # Flask stuff:
# instance/
# .webassets-cache

# # Scrapy stuff:
# .scrapy

# # Sphinx documentation
# docs/_build/

# # PyBuilder
# target/

# # Jupyter Notebook
# .ipynb_checkpoints

# # pyenv
# .python-version

# # celery beat schedule file
# celerybeat-schedule

# # SageMath parsed files
# *.sage.py

# # dotenv
# .env

# # virtualenv
# .venv
# venv/
# ENV/

# # Spyder project settings
# .spyderproject
# .spyproject

# # Rope project settings
# .ropeproject

# # mkdocs documentation
# /site

# # mypy
# .mypy_cache/

# # pycharm
# .idea/

# # pytest
# .pytest_cache/
# EOF

# create activate_this.py for use with vim.gvim ctags cscope

touch .venv/bin/activate_this.py
cat << EOF > .venv/bin/activate_this.py
# -*- coding: utf-8 -*-
"""Activate virtualenv for current interpreter:

Use exec(open(this_file).read(), {'__file__': this_file}).

This can be used when you must use an existing Python interpreter, not the virtualenv bin/python.
"""
import os
import site
import sys

try:
    abs_file = os.path.abspath(__file__)
except NameError:
    raise AssertionError("You must use exec(open(this_file).read(), {'__file__': this_file}))")

bin_dir = os.path.dirname(abs_file)
base = bin_dir[: -len("__BIN_NAME__") - 1]  # strip away the bin part from the __file__, plus the path separator

# prepend bin to PATH (this file is inside the bin directory)
os.environ["PATH"] = os.pathsep.join([bin_dir] + os.environ.get("PATH", "").split(os.pathsep))
os.environ["VIRTUAL_ENV"] = base  # virtual env is right above bin directory

# add the virtual environments libraries to the host python import mechanism
prev_length = len(sys.path)
for lib in "__LIB_FOLDERS__".split(os.pathsep):
    path = os.path.realpath(os.path.join(bin_dir, lib))
    site.addsitedir(path.decode("utf-8") if "__DECODE_PATH__" else path)
sys.path[:] = sys.path[prev_length:] + sys.path[0:prev_length]

sys.real_prefix = sys.prefix
sys.prefix = base
EOF



# I tried to automate the above instructions, with this one-liner, but it didn't work.
# cd /home/live/.virtualenvs && source "$1"/bin/activate
