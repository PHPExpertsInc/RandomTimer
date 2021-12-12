#!/bin/bash

rm -r ~/.androidjs/; time androidjs build --release
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore /home/tsmith/phpexperts.keystore "dist/Random Timer.apk" phpexperts
zipalign -v 4 "dist/Random Timer.apk" RandomTimer.apk
