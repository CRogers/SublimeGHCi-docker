#!/bin/bash

function sleeper() {
	local ACTUAL_SLEEP=${SLEEP_TIME:-"2"}
	echo Sleeping for $ACTUAL_SLEEP seconds
	sleep $ACTUAL_SLEEP
}

echo Starting xvfb...
Xvfb -screen 0 1024x768x24 &>>/dev/null &
sleeper

echo Starting ratpoison...
ratpoison &>>/dev/null &

echo Starting x11vnc...
x11vnc -display :0 &>>/dev/null &

sleeper

echo Running processes:
ps aux

exit 0
