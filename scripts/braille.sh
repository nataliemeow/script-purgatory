#!/bin/zsh

typeset -A map=(
	0,0 2#00000001
	1,0 2#00000010
	0,1 2#00000100
	1,1 2#00001000
	0,2 2#00010000
	1,2 2#00100000
	0,3 2#01000000
	1,3 2#10000000
)
typeset -i2 bits=0
points=(0,0 1,0 1,3)
for point in ${points[@]}; {
	(( bits = bits | ${map[$point]} ))
}

printf "\u$(([##16]( $bits + 16#2800 )))"
