#!/bin/sh

#============================================
#Starts Android emulator in headless mode
#============================================
${ANDROID_HOME}/platform-tools/adb start-server
${ANDROID_HOME}/emulator/emulator -avd darren -no-audio -no-boot-anim -no-window -no-accel -gpu off -timezone Africa/Johannesburg -qemu -vnc :2 &
${ANDROID_HOME}/platform-tools/adb wait-for-device devices

#============================================
#Starts Appium
#============================================
appium
