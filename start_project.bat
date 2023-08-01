@echo off
setlocal

REM Prompting user for the name of the Django project
set /p project_name=Enter the name of the Django project: 

REM Creating a Python virtual environment
python -m venv env

REM Activating the virtual environment
call env\Scripts\activate

REM Installing Django in the virtual environment
pip install django

REM Creating a Django project
django-admin startproject %project_name%

REM Changing directory to the newly created project
cd %project_name%

REM Migrating the Django app
python manage.py migrate

REM Deactivating the virtual environment
deactivate

echo Django project '%project_name%' created and migrated successfully.
