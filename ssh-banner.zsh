#! /bin/zsh

let upSeconds="$(/usr/bin/cut -d. -f1 /proc/uptime)"
let secs=$((${upSeconds}%60))
let mins=$((${upSeconds}/60%60))
let hours=$((${upSeconds}/3600%24))
let days=$((${upSeconds}/86400))
UPTIME=`printf "%d days, %02dh %02dm %02ds" "$days" "$hours" "$mins" "$secs"`
currDate=`date +"%A, %e %B %Y, %r"`
let cpuTemp=$(cat /sys/class/thermal/thermal_zone0/temp)
let cpT="${cpuTemp}/1000"
# if you want weather
# `curl -s "https://rss.accuweather.com/rss/liveweather_rss.asp?metric=1&locCode=EUR|IT|IT012|TORINO|" | sed -n '/Currently:/ s/.*: \([0-9]*\)\([CF]\).*/\2˚\3, \1/p'` (Turin)
wd=$(df -h |grep /hdd/wd)
toshiba=$(df -h |grep /hdd/toshiba)

occupT=$(echo $toshiba |awk '{ print $3 }')
totalT=$(echo $toshiba |awk '{ print $2 }')
freePercT=$(echo $toshiba |awk '{ print $5 }')
freeT=$(echo $toshiba |awk '{ print $4 }')

occupW=$(echo $wd |awk '{ print $3 }')
totalW=$(echo $wd |awk '{ print $2 }')
freePercW=$(echo $wd |awk '{ print $5 }')
freeW=$(echo $wd |awk '{ print $4 }')

banner="
     _             _     _     _     		     | ${currDate} 
    / \   _ __ ___| |__ | |   ()_ __  _   ___  __   | Cpu Temp....: ${cpT}˚C
   / _ \ | '__/ __| '_ \| |   | | '_ \| | | \ \/ /   | Uptime......: ${UPTIME}
  / ___ \| | | (__| | | | |___| | | | | |_| |>  <    | Disk0.......: ${occupT}/${totalT} (use ${freePercT}), ${freeT} left
 /_/   \_\_|  \___|_| |_|_____|_|_| |_|\__,_/_/\_\   | Disk1.......: ${occupW}/${totalW} (use ${freePercW}), ${freeW} left                                   
"


echo $banner
