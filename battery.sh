#! /bin/bash

# pre-requisites are termux installed with API package. 

# TTS needs to be enabled.

while :
do
        a=`termux-battery-status | grep percentage | awk '{print $2}' | cut -d, -f1`
        k=`termux-battery-status | grep status | awk '{print $2}' | cut -d'"' -f2`
        b=`echo $a-1|bc -l`

        if [ "$k" == "CHARGING" ] || [ "$k" == "FULL" ] && [ $b -gt 98 ] ; then
                termux-tts-speak "your battery fully charged  and it is $a percentage now" && termux-vibrate -d 2000 -f ;

        elif [ "$k" == "DISCHARGING" ] && [ $b -lt 35 ] ; then
                termux-tts-speak "your battery is going to die and it is bloody $a percentage now" && termux-vibrate -d 2000 -f ;
        fi
sleep 1
done
