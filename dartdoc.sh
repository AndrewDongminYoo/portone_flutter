#!/usr/bin/env bash

# 1) 임시 경로에 문서 생성
dart doc --validate-links --output tmp/api
rm tmp/api/__404error.html

# 2) Trunk 코드 체크 및 포맷팅
trunk fmt --all
trunk check --fix --all

# 3) doc/api 디렉터리 보장
mkdir -p doc/api

# 4) rsync 로 복사하되 static-assets/ 와 __404error.html 은 제외
rsync -av --delete \
	--exclude='static-assets/' \
	tmp/api/ doc/api/

# 5) 임시 디렉터리 정리
rm -rf tmp/api
