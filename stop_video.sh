#!/bin/bash

echo Stopping desktop recording...
pkill -15 recordmydesktop
tail -f /Logs/recordmydesktop.stdout.log &

while pkill -0 recordmydesktop
do
	sleep 1
done

pkill -15 tail