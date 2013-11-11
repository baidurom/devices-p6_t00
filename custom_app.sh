#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Settings" ];then
    echo ">>> in custom_app $apkBaseName"
    if [ -f $tempSmaliDir/res/xml/security_settings_picker.xml ];then
        echo ">>> begin delete unlock_set_baidu_slide in $tempSmaliDir/res/xml/security_settings_picker.xml"
        sed -i '/unlock_set_baidu_slide/d' $tempSmaliDir/res/xml/security_settings_picker.xml
    fi

elif [ "$apkBaseName" = "BaiduImageSearch" ];then
       echo ">>> in custom_app for BaiduImageSearch"
       sed -i -e "/^\.method.*getOptimalPreviewSize(Landroid\/app\/Activity;Ljava\/util\/List;)Landroid\/hardware\/Camera\$Size/,/^\.end method/d" $tempSmaliDir/smali/com/baidu/imagesearch/utility/CameraUtility.smali

fi
