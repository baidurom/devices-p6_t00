#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Settings" ];then
    echo ">>> in custom_app $apkBaseName"
    if [ -f $tempSmaliDir/res/xml/security_settings_picker.xml ];then
        echo ">>> begin delete unlock_set_baidu_slide in $tempSmaliDir/res/xml/security_settings_picker.xml"
        sed -i '/unlock_set_baidu_slide/d' $tempSmaliDir/res/xml/security_settings_picker.xml
    fi

    sed -i '/sound_category_system_title/r Settings/sound_settings.xml.part' $tempSmaliDir/res/xml/sound_settings.xml

fi
