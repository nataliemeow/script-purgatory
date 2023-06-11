#!/bin/bash
# Tetris in Bash.

declare -A keys
keys=(
	[A]=('.-')
	[B]='.+'
	[C]='+.'
	[D]='-.'
)

while true; do
	read -sn1 escape
	if [[ "$escape" == $'\e' ]]; then
		read -sn1 bracket
		if [[ "$bracket" == "[" ]]; then
			read -sn1 direction
			echo ${ ${keys[$direction]} :0:1}
		else
			echo '?'
		fi
	else
		echo '?'
	fi
done
