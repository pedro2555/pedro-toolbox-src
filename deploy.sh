#!/bin/bash
mv build/default/.git .gitbuild

polymer build

mv .gitbuild build/default/.git

cd build/default

git checkout master --force
git commit -m ""
git push origin master
