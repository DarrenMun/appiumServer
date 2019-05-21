#!/bin/sh

#============================================
#Starts Android emulator in headless mode
#============================================
#${ANDROID_HOME}/platform-tools/adb start-server
${ANDROID_HOME}/emulator/emulator -avd darren -gpu off -no-boot-anim -no-window -no-audio -timezone Africa/Johannesburg &
#-gpu off -no-audio -no-accel -timezone Africa/Johannesburg
${ANDROID_HOME}/platform-tools/adb wait-for-device start-server
${ANDROID_HOME}/platform-tools/adb devices

#============================================
#Starts Appium
#============================================
appium
