#!/bin/bash
set -e

cd $(dirname $0)
git add -f settings.xml
git commit -m 'settings.xml for heroku'
trap 'git reset HEAD~1' EXIT
git push heroku master -f

