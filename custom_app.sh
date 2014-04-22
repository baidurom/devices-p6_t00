#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Settings" ];then
    echo ">>> in custom_app $apkBaseName"
    if [ -f $tempSmaliDir/res/xml/security_settings_picker.xml ];then
        echo ">>> begin delete unlock_set_baidu_slide in $tempSmaliDir/res/xml/security_settings_picker.xml"
        sed -i '/unlock_set_baidu_slide/d' $tempSmaliDir/res/xml/security_settings_picker.xml
    fi

    sed -i '/com.android.settings.ManageApplicationsSettings/r Settings/settings_headers.xml.part' $tempSmaliDir/res/xml/settings_headers.xml

fi
