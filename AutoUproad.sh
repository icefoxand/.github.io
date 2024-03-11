#!/bin/bash

DATE=`date "+%Y%m%d"`
DATE_WITH_TIME=`date "+%Y/%m/%d-%H:%M:%S"`

<<<<<<< HEAD
cd /c/Users/SSAFY/Desktop/jiwon/codeddong
=======
cd /C/Users/com/Desktop/jiwon_git/codeddong
>>>>>>> 5765eb75880bdff2ec70a320cf2e09dc92705f34

echo "adding all posts.."
git add _posts/*.md

echo "committing on ${DATE_WITH_TIME}"
git commit -am "new post ${DATE_WITH_TIME}"

echo "pushing commits to master"
git push

echo "Press Enter..."

read