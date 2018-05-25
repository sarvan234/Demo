#!/bin/bash
cd /opt/mqm/bin
./fteCreateMonitor -ma MonitorAgent -mn MonitorName -mm MonitorQmanager -md MonitorDir -mt FilePath/Interface/MonitorXml -tr TriggerCond -pi PollingInterval -pu minutes
