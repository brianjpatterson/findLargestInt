#!/bin/bash

declare -a numbers=($1)

maxOf() {

	local -a numbers=($1)

	if [ ${#numbers[@]} -eq 1 ]; then
		echo "${numbers[0]}"
		return 0
	fi

	[ ${numbers[0]} -gt ${numbers[1]} ] && numbers[1]="${numbers[0]}"
	numbers=("${numbers[@]:1}")

	maxOf "${numbers[*]}"
}

maxOf "${numbers[*]}"

#--> sh findLargestInt.sh "5 3 1 9"
#--> 9
