rand() {
	echo $(shuf -i$1-$2 -n 1)
}
randrot() {
	echo -n "0,0"
	echo -n "1 "
	echo -n "$(( $(rand 0 60) - 30 ))"
}

word() {
	w="$(grep '"....."' words.txt | shuf -n1 -)"
	w=${w:1:-1}
	echo "$w"
}
words=
for ln in {1..2}; do
	for w in {1..3}; do
		words="$words$(word)"
		[ $w != 3 ] && words="$words "
	done
	[ $ln != 2 ] && words="$words\n"
done

# -font /usr/local/share/fonts/s/ShadowsIntoLightTwo_Regular.ttf \
magick \
	-font /usr/local/share/fonts/s/ShadowsIntoLightTwo_Regular.ttf -kerning 4 \
	-background white -fill black \
	-gravity center \
	\
	-pointsize 32 \
	label:"$words" \
	-bordercolor white -border 1x1 \
	\
	+distort Arc 90 \
	+distort SRT "$(randrot)" \
	-swirl $([ $(rand 0 1) = 0 ] && echo 45 || echo -45) \
	-blur 3 \
	-resize 300x200\! \
	\
	-trim +repage pgm:- \
| display -
