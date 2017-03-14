broker=$1
mqsicreateconfigurableservice $broker -c MonitoringProfiles -o ORACLE_KIMBALLNUMBER_MF
mqsichangeproperties $broker -c MonitoringProfiles -o ORACLE_KIMBALLNUMBER_MF -n profileProperties -p /var/mqsi/monitoringprofiles/Profile_ORACLE_KIMBALLNUMBER_MF.xml
mqsichangeproperties $broker -c MonitoringProfiles -o ORACLE_KIMBALLNUMBER_MF -n useParserNameInMonitoringPayload -v TRUE 
mqsichangeflowmonitoring $broker -e Default -k ORACLE_KIMBALLNUMBER -f esb.primark.oracle.ORACLE_KIMBALLNUMBER_MF -m ORACLE_KIMBALLNUMBER_MF
mqsichangeflowmonitoring $broker -e Default -k ORACLE_KIMBALLNUMBER -f esb.primark.oracle.ORACLE_KIMBALLNUMBER_MF -s KimballNumberRequest.terminal.out -i enable 
mqsichangeflowmonitoring $broker -e Default -k ORACLE_KIMBALLNUMBER -f esb.primark.oracle.ORACLE_KIMBALLNUMBER_MF -s KimballNumberRequest.transaction.Rollback -i enable 
mqsichangeflowmonitoring $broker -e Default -k ORACLE_KIMBALLNUMBER -f esb.primark.oracle.ORACLE_KIMBALLNUMBER_MF -s GetKimballNuberFromIPMS.terminal.in -i enable 
mqsichangeflowmonitoring $broker -e Default -k ORACLE_KIMBALLNUMBER -f esb.primark.oracle.ORACLE_KIMBALLNUMBER_MF -s GetKimballNuberFromIPMS.terminal.out -i enable 
mqsichangeflowmonitoring $broker -e Default -k ORACLE_KIMBALLNUMBER -f esb.primark.oracle.ORACLE_KIMBALLNUMBER_MF -s SendKimballNumber.terminal.in -i enable 
mqsichangeflowmonitoring $broker -e Default -k ORACLE_KIMBALLNUMBER -f esb.primark.oracle.ORACLE_KIMBALLNUMBER_MF -c active



