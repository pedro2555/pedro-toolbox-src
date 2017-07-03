#!/bin/bash
mv build/default/.git .gitbuild

polymer build

mv .gitbuild build/default/.git

cd build/default

echo "<?php include_once(\"index.html\"); ?>" > index.php

git checkout master
git add . --all
git commit -m "Deploy"
git push origin master
