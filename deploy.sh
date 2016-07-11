#!/bin/bash
find ./public/* | grep -v ".git" | xargs rm -rf
cp -R static/* public
cd public
git add -A
git status
git commit -m 'Updated documentation'
git push origin gh-pages
