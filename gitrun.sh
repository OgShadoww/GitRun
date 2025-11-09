#!/bin/bash

commit=$1

if [ -z "$commit" ]; then
  echo "Please write commit text"
  exit 1
fi

git add .
git commit -m "$commit"
git push
