#/bin/sh

set -x

adb shell am start com.huawei.betaclub
sleep 2s
adb shell input tap 1000 2500 # 我的
sleep 5s
adb shell input tap 1000 1200 # pack modem logs
sleep 1s
adb shell input tap 1000 500
sleep 5s
adb shell input tap 837 2458 # confirm
