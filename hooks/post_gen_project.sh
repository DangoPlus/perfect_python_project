#!/bin/bash

cp sample.env .env
poetry env use {{cookiecutter.python_version}}
counter=0
until poetry update || [[ $counter -gt 2 ]]; do
    ((counter++))
done
docker compose up -d db
sleep 1
poetry run alembic revision --autogenerate -m "Initial migration"
docker compose down
poetry run make format

commit_message="Initial project structure based on https://github.com/andredias/perfect_python_project/tree/fastapi-complete"

if [ "{{cookiecutter.version_control}}" == "hg" ]; then
    hg init .
    if [ -n "{{cookiecutter.github_respository_url}}" ]; then
        echo '[paths]
default = {{cookiecutter.github_respository_url}}
' > .hg/hgrc
    fi
    hg add
    hg commit -m "$commit_message"
else
    mv .hgignore .gitignore
    git init .
    if [ -n "{{cookiecutter.github_respository_url}}" ]; then
        git remote add origin {{cookiecutter.github_respository_url}}
    fi
    git add -A .
    git commit -m "$commit_message"
fi

make install_hooks
