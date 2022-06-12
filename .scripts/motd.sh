#!/bin/sh
cat ~/.scripts/motd | lolcat -p 0.7
echo "\033[30m*whoosh*; you are now fox\033[0m" | lolcat -p 0.6 -i
