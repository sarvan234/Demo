#!/bin/bash
cd /opt/mqm/bin
./fteCreateMonitor -ma MonitorAgent -mn MonitorName -mm MonitorQmanager MonitorQD -mt FilePath/MonitorXml -tr TriggerCond -pi PollingInterval -pu PollingUnit -p ConfigQmanager -bs BatchTask PatType
