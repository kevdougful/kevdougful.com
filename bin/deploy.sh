#!/bin/bash

hugo -t Niello

cd public
echo www.kevdougful.com > CNAME
git add .

msg="rebuilding site `date`"
if [ $# -eq 1 ]
    then msg="$1"
fi
git commit -m "$msg"

git push origin master

cd ..
