#!/bin/bash

cd /SublimeGHCi
./run_all_tests.sh
EXIT_STATUS=$?
cd ..

exit $EXIT_STATUS
