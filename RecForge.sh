#!/bin/sh

dest_dir=$(find out -type d | fzf)
cd $dest_dir

adb pull /sdcard/RecForge/ .
mv RecForge/*.wav .
rm -r RecForge
adb shell "rm -r /sdcard/RecForge"
adb shell am force-stop dje073.android.audiorecorderlite
