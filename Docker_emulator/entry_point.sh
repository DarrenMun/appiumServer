#!/bin/sh

#============================================
#Starts Android emulator in headless mode
#============================================
${ANDROID_HOME}/platform-tools/adb start-server
${ANDROID_HOME}/emulator/emulator -avd darren -no-audio -no-boot-anim -no-window -verbose -no-accel -gpu off -timezone Africa/Johannesburg &
${ANDROID_HOME}/platform-tools/adb devices

#============================================
#Starts Appium
#============================================
appium
