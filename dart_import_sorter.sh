#!/usr/bin/env bash

output=$(dart run import_sorter:main -e)

# 출력에서 숫자만 추출하고, 0보다 크면 exit 1
if [[ ${output} =~ Sorted\ ([0-9]+)\ files ]] && ((BASH_REMATCH[1] > 0)); then
	exit 1
else
	exit 0
fi
