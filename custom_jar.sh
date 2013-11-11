#!/bin/bash

jarBaseName=$1
tempSmaliDir=$2

if [ "$jarBaseName" = "android.policy" ];then
	echo ">>> in custom_jar $jarBaseName"
	echo ">>> replace method getScAddress and setScAddress in BaiduTelephonyManager.java"
	# BaiduTelephonyManager.java is in baidu/framework/base (framework-yi), but android.policy use a static framework-yi"
	sed -i -e "/^\.method.*getScAddress(I)Ljava\/lang\/String;/,/^\.end method/d" $tempSmaliDir/smali/android/telephony/BaiduTelephonyManager.smali
	sed -i -e "/^\.method.*setScAddress(Ljava\/lang\/String;I)Z/,/^\.end method/d" $tempSmaliDir/smali/android/telephony/BaiduTelephonyManager.smali
fi
