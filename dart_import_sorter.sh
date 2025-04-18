#!/bin/bash

output=$(dart run import_sorter:main -e)

# 정렬된 파일 수를 파싱합니다.
sorted=$(echo "$output" | grep -Eo "Sorted [0-9]+ files" | grep -Eo "[0-9]+")
if [[ $sorted -gt 0 ]]; then
	exit 1
else
	exit 0
fi
