#!/bin/bash
echo "running for the user $1"
termux-contact-list | grep -A 1 -i "$1"

if [ -z "$2" ] ; then
        no=$(termux-contact-list | grep -A 1 -i "$1" | grep number | cut -d'"' -f4)
        echo $no

        while :; do termux-telephony-call $no ; done

else
        echo dry run ;

fi
