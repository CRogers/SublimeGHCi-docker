#!/bin/bash

./start_xvfb.sh && ./start_video.sh && ./run_tests.sh
EXIT_STATUS=$?
./stop_video.sh

exit $EXIT_STATUS