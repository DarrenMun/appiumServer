#!/bin/sh

#============================================
#Starts Android emulator in headless mode
#============================================
${ANDROID_HOME}/platform-tools/adb start-server
${ANDROID_HOME}/emulator/emulator -avd darren -gpu off -no-audio -no-boot-anim -no-window -no-accel -timezone Africa/Johannesburg &
${ANDROID_HOME}/platform-tools/adb wait-for-device devices

#============================================
#Starts Appium
#============================================
appium
