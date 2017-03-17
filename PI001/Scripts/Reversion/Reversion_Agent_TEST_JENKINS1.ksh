#!/bin/bash

fteStopAgent -p QDD1MFT1 TEST_JENKINS1

fteDeleteAgent -p QDD1MFT1 TEST_JENKINS1 -f
