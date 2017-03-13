#!/bin/bash

Agent_Name=${1}

fteCreateBridgeAgent -agentName $Agent_Name -agentQMgr QDD1MFT1 -bt SFTP -bh 10.150.21.41 -bm UNIX -bfe UTF-8