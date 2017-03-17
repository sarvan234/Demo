#!/bin/bash

fteStopAgent -p QDD1MFT1 TEST_JENKINS2

fteDeleteAgent -p QDD1MFT1 TEST_JENKINS2 -f
