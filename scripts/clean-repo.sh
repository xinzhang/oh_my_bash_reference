#~/bin/bash

git checkout master
git pull
git branch | grep -v master | xargs git branch -D
# git checkout -b feature/devops-761-api-schemas
