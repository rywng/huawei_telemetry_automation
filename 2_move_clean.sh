#!/bin/sh

set -x

adb pull /sdcard/Huawei/BetaClub/Grab/modem/zips/ .
adb shell "rm -rf /sdcard/Huawei/BetaClub/Grab/modem/zips/"

adb shell input keyevent 4 # go back to main page
sleep 1s
adb shell input tap 600 1340 # system settings
sleep 1s
adb shell input tap 600 320 # disable settings
sleep 1s
adb shell input tap 1080 780 # click the lever
sleep 1s
adb shell input keyevent 4 # back to setting
sleep 1s
adb shell input keyevent 4 # go back to main page
sleep 1s
adb shell input tap 500 1000 # clean logs
sleep 1s
adb shell input tap 1000 1900 # click clean
sleep 1s
adb shell input tap 837 2458 # confirm
