#!/bin/sh

set -x

# close two popups
adb shell input tap 500 2480
sleep 15s
adb shell input tap 860 2480

adb shell am force-stop com.huawei.betaclub
sleep 1s
adb shell am start com.huawei.betaclub
sleep 2s
adb shell input tap 1000 2500 # mine
sleep 5s
adb shell input tap 600 1340 # system settings
sleep 1s
adb shell input tap 600 320 # enable settings
sleep 1s
adb shell input tap 1080 780 # click the lever
sleep 1s
adb shell input tap 1020 2300 # click the checkmark
adb shell input tap 860 2480 # confirm
sleep 5s

# return to the mainpage
adb shell input keyevent 4
adb shell input keyevent 4
