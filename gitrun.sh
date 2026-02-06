#!/usr/bin/env bash

commit=$1
flag1=$2
name=$3

git init

if [ -n "$flag1" ] && [ -n "$name" ]; then
  git add .
  git commit -m "Initial commit"
  git remote add origin https://github.com/OgShadoww/$name

  echo "Repository initialized and remote set"
  exit 0
fi

if [ -z "$commit" ]; then
  echo "Wrong parameter"
  echo "Ussage: gitrun.sh message"
  exit 1
fi

git add .
git commit -m "$commit"
git push
