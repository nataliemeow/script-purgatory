#!/bin/zsh

for bright in 40 100; {
	for (( tone = 0 ; tone < 7 ; tone++ )) {
		(( color = tone + bright ))
		if [[ $tone = 0 ]]; {
			printf '\e[0m'
		}
		if [[ $tone = 1 ]]; {
			printf '\e[30m'
		}
		printf '\e[%dm %3d ' $color $color
	}
	printf '\n'
}
