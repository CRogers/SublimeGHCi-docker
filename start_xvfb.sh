#!/bin/bash

function sleeper() {
	local ACTUAL_SLEEP=${SLEEP_TIME:-"2"}
	echo Sleeping for $ACTUAL_SLEEP seconds
	sleep $ACTUAL_SLEEP
}

echo Starting xvfb...
Xvfb -screen 0 1024x768x24 >/Logs/xvfb.stdout.log 2>/Logs/xvfb.stderr.log &
sleeper

echo Starting ratpoison...
ratpoison >/Logs/ratpoison.stdout.log 2>/Logs/ratpoison.stderr.log &

echo Starting x11vnc...
x11vnc -display :0 >/Logs/x11vnc.stdout.log 2>/Logs/x11vnc.stderr.log &

sleeper

echo Running processes:
ps aux

exit 0
