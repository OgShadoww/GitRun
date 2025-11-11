#!/usr/bin/env bash

commit=$1

if [ -z "$commit" ]; then
  echo "Wrong parameter"
  echo "Ussage: gitrun.sh message"
  exit 1
fi

git add .
git commit -m "$commit"
git push
