#!/bin/bash
temp=$(curl -sL wttr.in/\?format\="%c%t\n")
if [ "$temp" != "" ]; then
echo $temp > ~/.scripts/weather
fi
