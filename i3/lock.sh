#!/bin/sh

bg=191314


ring=3e682f90
inside=7d7f7590

ringver=3841a17f
insidever=403e637f

ringwrong=9f202d7f
insidewrong=6134327f

keyhl=ffffff40
bshl=582da37f

pos=x+090:y+090 #position
set -e
xset s off dpms 0 10 0

i3lock -i /home/oriyo/.config/i3/lockscreen/l.jpg \
    --veriftext="" --wrongtext="" --noinputtext="" \
    --insidecolor=$inside --ringcolor=$ring \
    --insidevercolor=$insidever --ringvercolor=$ringver \
    --insidewrongcolor=$insidewrong --ringwrongcolor=$ringwrong \
    --keyhlcolor=$keyhl --bshlcolor=$bshl \
    --linecolor=${bg}ff --separatorcolor=${bg}7f \
    --radius 085 --ring-width 00 --indicator --indpos=$pos -k \
    --timecolor=ffffff99 --datecolor=ffffff99 --timesize=25 --datesize=10 \

xset s off -dpms
