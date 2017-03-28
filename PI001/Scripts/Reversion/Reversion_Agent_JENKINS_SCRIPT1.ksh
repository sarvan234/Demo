#!/bin/bash

fteStopAgent -p QDD1MFT1 JENKINS_SCRIPT1

fteDeleteAgent -p QDD1MFT1 JENKINS_SCRIPT1 -f
