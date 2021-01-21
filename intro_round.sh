#requires imagemagic
convert ./intro.gif -coalesce \
null: \
\( ./intro.gif[0]  -alpha extract \
-draw 'fill black polygon 0,0 0,15 15,0 fill white circle 15,15 15,0' \
\( +clone -flip \) -compose Multiply -composite \
\( +clone -flop \) -compose Multiply -composite \
\) \
-alpha off -compose CopyOpacity \
-layers composite \
-layers optimize \
./intro_rounded.gif;

convert -delay 6 -loop 0 ./intro_rounded.gif ./intro_v3.gif