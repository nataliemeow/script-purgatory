#!/bin/zsh

spinner=('⠁ ' '⠂ ' '⠄ ' '⡀ ' '⢀ ' ' ⡀' ' ⢀' ' ⠠' ' ⠐' ' ⠈' ' ⠁' '⠈ ')

function TRAPINT {
	echo
	tput cnorm
	return 1
}

while {} {
	for i in $spinner; {
		tput civis
		printf "\e[K%s\e[G" $i
		sleep 0.05
	}
}

