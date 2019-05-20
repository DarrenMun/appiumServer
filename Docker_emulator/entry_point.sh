#!/bin/sh

#============================================
#Starts Android emulator in headless mode
#============================================
${ANDROID_HOME}/platform-tools/adb start-server
${ANDROID_HOME}/emulator/emulator -avd darren -no-boot-anim -no-window &
#-gpu off -no-audio -no-accel -timezone Africa/Johannesburg
${ANDROID_HOME}/platform-tools/adb wait-for-device devices

#============================================
#Starts Appium
#============================================
appium
