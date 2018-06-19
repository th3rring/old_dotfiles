#!/bin/sh

set -e

STATUS=$(insync get_status)

if [ "SYNCED" == "$STATUS" ]; then
	echo "✓"
elif [ "SYNCING" == "$STATUS" ]; then
	echo ""
elif [ "PAUSED" == "$STATUS" ]; then
	echo ""
else
    	echo "!!!"
fi
