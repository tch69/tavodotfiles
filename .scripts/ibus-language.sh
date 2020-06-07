#!/bin/sh
#Display engine using on polybar, only work with IBUS since i can't find a way to do the same thing in fcitx or scim.

engine=$(ibus engine)

if [ $engine == "Unikey" ]; then
    echo "vi/Unikey";
elif [ $engine == "teni" ]; then
    echo "vi/Teni";
elif [ $engine == "Bamboo" ]; then
    echo "vi/Bamboo";
elif [ $engine == "m17n:vi:telex" ]; then
    echo "vi/m17n-telex";
elif [ $engine == "xkb:us::eng" ]; then
    echo "en-US/QWERTY";
else
    echo "unknown";
fi
