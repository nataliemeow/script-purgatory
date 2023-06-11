#!/bin/bash

clear
stty -echo
tput civis
trap 'tput cnorm' EXIT
printf '\e[38;5;220;1m'

aperture=' '\
'             .,-:;//;:=,
          - :M@@@MM@M#K/.,+%;,
       ,/X+ +H@@M@MM%=,-%HMMM@X/,
     -+@MM; $M@@MH+-,:XMMMM@MMMM@+-
    ;@M@@M- XM@X;. -+XXXXXHHH@H@H#@/.
  ,%MM@@MH ,@%=             .---=-=:=,.
  =@#@@@MX .,               -%HX$$%%%+;
 =-./@M@M$                   .;@MMMH@HM:
 X@/ -$MM/                    .+MM@@@M$
,@M@M: :@:                    . =X#@@@@-
,@@@MMX, -                    /H- ;@M@M=
.H@@@@M@+,                    %MM+..%#$
 /MMMM@MMM/.                  XM@MH; =;
  /%+%+$XHH@$=             , .H@@@@MX
   .=---------.          -%H.,@@@@@MX
   .%MM@@@HHHXX$$$%+- .:$MMX =M@@MM%.
     =XMMM@MM@MM#M;,-+HMM@M+ /MMMX=
       =%@M@M#@$-.=$@MM@@@M; %H%=
         ,:+$+-,/H#HMMMMMM@= =
               =++%%%%+/:-.'

width=108
height=32

(( halfwidth = width / 2 ))
(( halfheight = height / 2 ))

function br {
	printf '\e[D \e[%dB\e[3G' $1
}
function say {
	[[ $3 = 'no-br' ]] || br
	for (( i = 0 ; i < ${#1} ; i++ )); do
		[[ $i = 0 ]] || printf '\e[D \e[D'
		printf '%s_' "${1:$i:1}"
		sleep $2
	done
}
function restr {
	for (( i = 0 ; i < $2 ; i++ )); do
		printf %s "$1"
	done
}

## Layout frames.
restr '-' $halfwidth
printf ' '
restr '-' $((halfwidth - 2))
for (( j = 0 ; j < $halfheight ; j++ )); do
	printf '\n|'
	printf '\e[%dC' $((halfwidth - 2))
	printf '||'
	printf '\e[%dC' $((halfwidth - 2))
	printf '|'
done
printf '\n|'
printf '\e[%dC' $((halfwidth - 2))
printf '| '
restr '-' $((halfwidth - 2))
for (( j = 0 ; j < $halfheight ; j++ )); do
	printf '\n|'
	printf '\e[%dC' $((halfwidth - 2))
	printf '|'
done
printf '\n'
restr '-' $halfwidth

printf '\e[2;3H'

## Left window.

# Before lyrics.
say 'Forms FORM-29827281-12:' 0.075 no-br
say 'Test Assessment Report' 0.075
sleep 3

play -q StillAlive.ogg &

function now {
	echo $(( ${EPOCHREALTIME//.} / 1000 ))
}
before=$(now)

true > lyrics

# Lyrics.
br 2 && say "This was a triumph." 0.07 &
sleep 3.912 && say "I'm making a note here:" 0.07 &
sleep 6.2 && say "HUGE SUCCESS." 0.07 &
sleep 8.909 && say "It's hard to overstate" 0.12 &
sleep 11.6 && say "my satisfaction." 0.12 &
sleep 16.178 && say "Aperture Science" 0.07 &
sleep 19.966 && say "We do what we must" 0.07 &
sleep 21.653 && say "because we can." 0.07 &
sleep 25.132 && say "For the good of all of us." 0.07 &
sleep 28.407 && say "Except the ones who are dead." 0.05 &
sleep 30.681 && br && say "But there's no sense crying" 0.06 &
sleep 32.5 && say "over every mistake." 0.06 &
sleep 34.691 && say "You just keep on trying" 0.06 &
sleep 36.3 && say "till you run out of cake." 0.06 &
sleep 38.691 && say "And the Science gets done." 0.06 &
sleep 40.676 && say "And you make a neat gun." 0.06 &
sleep 42.665 && say "For the people who are" 0.06 &
sleep 44.3 && say "still alive." 0.06 &
sleep 52.132 && say "I'm not even angry." 0.07 &
sleep 56.15 && say "I'm being so sincere right now." 0.07 &
sleep 61.156 && say "Even though you broke my heart." 0.07 &
sleep 64.657 && say "And killed me." 0.07 &
sleep 68.03 && say "And tore me to pieces." 0.07 &
sleep 71.948 && say "And threw every piece into a fire." 0.07 &
sleep 77.142 && say "As they burned it hurt because I was so happy for you!" 0.07 &
sleep 82.639 && say "Now these points of data make a beautiful line." 0.07 &
sleep 86.679 && say "And we're out of beta." 0.07 &
sleep 88.671 && say "We're releasing on time." 0.07 &
sleep 90.3 && say "So I'm GLaD. I got burned." 0.07 &
sleep 92.681 && say "Think of all the things we learned" 0.07 &
sleep 94.671  && say "for the people who are still alive." 0.07 &
sleep 104.187 && say "Go ahead and leave me." 0.07 &
sleep 108.099 && say "I think I prefer to stay inside." 0.07 &
sleep 113.129 && say "Maybe you'll find someone else to help you." 0.07 &
sleep 120.231 && say "Maybe Black Mesa" 0.07 &
sleep 124.192 && say "THAT WAS A JOKE." 0.07 &
sleep 125.82 && say "HAHA. FAT CHANCE." 0.07 &
sleep 129.176 && say "Anyway, this cake is great." 0.07 &
sleep 132.745 && say "It's so delicious and moist." 0.07 &
sleep 134.693 && say "Look at me still talking" 0.07 &
sleep 136.667 && say "when there's Science to do." 0.07 &
sleep 138.696 && say "When I look out there, it makes me GLaD I'm not you." 0.07 &
sleep 142.686 && say "I've experiments to run." 0.07 &
sleep 144.674 && say "There is research to be done." 0.07 &
sleep 146.72 && say "On the people who are still alive." 0.07 &
sleep 150.822 && say "And believe me I am still alive." 0.07 &
sleep 154.725 && say "I'm doing Science and I'm still alive." 0.07 &
sleep 158.481 && say "I feel FANTASTIC and I'm still alive." 0.07 &
sleep 162.37 && say "While you're dying I'll be still alive." 0.07 &
sleep 166.418 && say "And when you're dead I will be still alive." 0.07 && ok &
sleep 170.39 && say "STILL ALIVE" 0.07 && ok &

wait
