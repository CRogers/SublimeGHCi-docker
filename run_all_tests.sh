#!/bin/bash

shopt -s globstar
cd /SublimeGHCi && rm -rf **/dist && ./run_tests.sh && ./run_integ_tests.sh && rm -rf **/dist/ && cd /
