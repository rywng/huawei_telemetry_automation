#!/bin/sh

set -x

out_dir=$(realpath /media/drive/private/misc/apr-lab-recording/* | fzf)

adb pull /sdcard/Huawei/BetaClub/Grab/modem/zips/ $out_dir
adb shell "rm -rf /sdcard/Huawei/BetaClub/Grab/modem/zips/"

adb shell input keyevent 4 # go back to main page
sleep 1s
adb shell input tap 500 1000 # clean logs
sleep 1s
adb shell input tap 1000 1900 # click clean
sleep 1s
adb shell input tap 837 2458 # confirm
