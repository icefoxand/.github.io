#!/bin/bash

# 깃허브 블로그의 로컬 레퍼지토리 디렉토리 주소를 써주세요. 아래의 주소를 본인 로컬 컴퓨터에 맞게 고치면 됩니다.
<<<<<<< HEAD
cd /c/Users/SSAFY/Desktop/jiwon/codeddong
=======
cd /C/Users/com/Desktop/jiwon_git/codeddong
>>>>>>> 5765eb75880bdff2ec70a320cf2e09dc92705f34

echo "adding dates to files"

DATE=`date "+%Y-%m-%d"`

# 디렉토리 내에서 파일명이 YYYY-MM-DD-*.md 형식에 맞지 않는 모든 마크다운(.md) 파일들을 찾아냅니다. 
# 이미 날짜가 붙은 파일들은 변경하지 않습니다.
# 찾아 낸 파일 중에서 마크다운 파일만을 필터링합니다.
# 그 파일들의 "파일명"만 추출하여, 각 파일들을 'YYYY-MM-DD-"파일명".md'형식으로 이름을 변경합니다.
find ./_posts -not -regex "\.\/_posts\/20[2-9][0-9]-[0-9][0-9]-[0-3][0-9]-.*\.md"| grep .md | xargs -I @ basename @ .md | xargs -I @ mv _posts/@.md _posts/${DATE}-@.md

read