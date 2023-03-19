#!/bin/sh
 
YAD_WIDTH=222  # 222 is minimum possible value
YAD_HEIGHT=193 # 193 is minimum possible value
DATE="$(date +"%d %m %Y %H:%M")"
 
yad --calendar --day=$(date +%d) --title="calendar" --close-on-unfocus \
        --width=10 --height=10 --posx="20" --posy="20" \ 
        --title="yad-calendar" --borders=2 >/dev/null &
