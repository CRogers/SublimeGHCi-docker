#!/bin/bash

echo Starting desktop recording...
recordmydesktop --no-sound --display=:0 -o /Logs/video.ogv >/Logs/recordmydesktop.stdout.log 2>/Logs/recordmydesktop.stderr.log &