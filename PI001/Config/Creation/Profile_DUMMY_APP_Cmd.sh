broker=$1
eg=$2
mqsicreateconfigurableservice $broker -c MonitoringProfiles -o Dummy_Flow
mqsichangeproperties $broker -c MonitoringProfiles -o Dummy_Flow -n profileProperties -p /var/mqsi/monitoringprofiles/Profile_DUMMY_APP_Dummy_Flow.xml
mqsichangeproperties $broker -c MonitoringProfiles -o Dummy_Flow -n useParserNameInMonitoringPayload -v TRUE 
mqsichangeflowmonitoring $broker -e Jenkins_Test -k DUMMY_APP -f Dummy_Flow -m Dummy_Flow
mqsichangeflowmonitoring $broker -e Jenkins_Test -k DUMMY_APP -f Dummy_Flow -s Dummy_Input.terminal.out -i enable 
mqsichangeflowmonitoring $broker -e Jenkins_Test -k DUMMY_APP -f Dummy_Flow -s Dummy_Output.terminal.in -i enable 
mqsichangeflowmonitoring $broker -e Jenkins_Test -k DUMMY_APP -f Dummy_Flow -c active



