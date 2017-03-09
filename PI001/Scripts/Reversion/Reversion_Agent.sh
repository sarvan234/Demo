#!/bin/bash

Agent_Name=${1}

fteStopAgent -p QDD1MFT1 $Agent_Name

fteDeleteAgent -p QDD1MFT1 $Agent_Name -i
