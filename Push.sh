#!/bin/bash
chmod +x push.sh

COMMIT_MSG=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)

git add --all
git commit -m "${COMMIT_MSG}"
git push -u origin master
