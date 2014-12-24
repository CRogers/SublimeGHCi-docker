#!/bin/bash

function sleeper() {
	local ACTUAL_SLEEP=${SLEEP_TIME:-"2"}
	echo Sleeping for $ACTUAL_SLEEP seconds
	sleep $ACTUAL_SLEEP
}

${LOG_DIR:="/tmp"}

echo Starting xvfb...
Xvfb -screen 0 1024x768x24 >$LOG_DIR/xvfb.stdout 2>$LOG_DIR/xvfb.stderr &
sleeper

echo Starting ratpoison...
ratpoison >$LOG_DIR/ratpoison.stdout 2>$LOG_DIR/ratpoison.stderr &

echo Starting x11vnc...
x11vnc -display :0 >$LOG_DIR/x11vnc.stdout 2>$LOG_DIR/x11vnc.stderr &

sleeper

echo Running processes:
ps aux

exit 0
