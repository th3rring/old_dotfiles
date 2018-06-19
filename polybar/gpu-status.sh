#!/bin/bash
set -e
STATUS=$(cat /proc/acpi/bbswitch)


if [ "0000:01:00.0 OFF" == "$STATUS" ]; then
	echo ""
else
    	echo "GPU on"
fi
