broker=$1
mqsicreateconfigurableservice $broker -c MonitoringProfiles -o ORACLE_ESB_CoA

mqsichangeproperties $broker -c MonitoringProfiles -o ORACLE_ESB_CoA -n profileProperties -p /var/mqsi/monitoringprofiles/Profile_ORACLE_CoA_ORACLE_ESB_CoA_PMF.xml

mqsichangeproperties $broker -c MonitoringProfiles -o ORACLE_ESB_CoA -n useParserNameInMonitoringPayload -v TRUE 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ORACLE_ESB_CoA_PMF -m ORACLE_ESB_CoA

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ORACLE_ESB_CoA_PMF -s ORACLE.ESB.COA.terminal.out -i enable 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ORACLE_ESB_CoA_PMF -s ORACLE.ESB.COA.transaction.Rollback -i enable 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ORACLE_ESB_CoA_PMF -s PublishMessage.terminal.in -i enable 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ORACLE_ESB_CoA_PMF -c active



mqsicreateconfigurableservice $broker -c MonitoringProfiles -o ESB_PIAT_CoA_ACCOUNTS

mqsichangeproperties $broker -c MonitoringProfiles -o ESB_PIAT_CoA_ACCOUNTS -n profileProperties -p /var/mqsi/monitoringprofiles/Profile_ORACLE_CoA_ESB_PIAT_CoA_ACCOUNTS_CMF.xml

mqsichangeproperties $broker -c MonitoringProfiles -o ESB_PIAT_CoA_ACCOUNTS -n useParserNameInMonitoringPayload -v TRUE 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_ACCOUNTS_CMF -m ESB_PIAT_CoA_ACCOUNTS

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_ACCOUNTS_CMF -s ESB.PIAT.COA.ACCOUNTS.IQ.terminal.out -i enable 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_ACCOUNTS_CMF -s ESB.PIAT.COA.ACCOUNTS.IQ.transaction.Rollback -i enable 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_ACCOUNTS_CMF -s CallPIATService.ValidatePIATResponse.terminal.out -i enable 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_ACCOUNTS_CMF -c active



mqsicreateconfigurableservice $broker -c MonitoringProfiles -o ESB_PIAT_CoA_PROJECTS

mqsichangeproperties $broker -c MonitoringProfiles -o ESB_PIAT_CoA_PROJECTS -n profileProperties -p /var/mqsi/monitoringprofiles/Profile_ORACLE_CoA_ESB_PIAT_CoA_PROJECTS_CMF.xml

mqsichangeproperties $broker -c MonitoringProfiles -o ESB_PIAT_CoA_PROJECTS -n useParserNameInMonitoringPayload -v TRUE 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_PROJECTS_CMF -m ESB_PIAT_CoA_PROJECTS

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_PROJECTS_CMF -s ESB.PIAT.COA.PROJECTS.IQ.terminal.out -i enable 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_PROJECTS_CMF -s ESB.PIAT.COA.PROJECTS.IQ.transaction.Rollback -i enable 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_PROJECTS_CMF -s CallPIATService.ValidatePIATResponse.terminal.out -i enable 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_PROJECTS_CMF -c active




mqsicreateconfigurableservice $broker -c MonitoringProfiles -o ESB_PIAT_LOCATIONS

mqsichangeproperties $broker -c MonitoringProfiles -o ESB_PIAT_LOCATIONS -n profileProperties -p /var/mqsi/monitoringprofiles/Profile_ORACLE_CoA_ESB_PIAT_CoA_LOCATIONS_CMF.xml

mqsichangeproperties $broker -c MonitoringProfiles -o ESB_PIAT_LOCATIONS -n useParserNameInMonitoringPayload -v TRUE

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_LOCATIONS_CMF -m ESB_PIAT_LOCATIONS

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_LOCATIONS_CMF -s ESB.PIAT.COA.LOCATIONS.IQ.terminal.out -i enable 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_LOCATIONS_CMF -s ESB.PIAT.COA.LOCATIONS.IQ.transaction.Rollback -i enable 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_LOCATIONS_CMF -s CallPIATService.ValidatePIATResponse.terminal.out -i enable 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_LOCATIONS_CMF -c active



mqsicreateconfigurableservice $broker -c MonitoringProfiles -o ESB_PIAT_CoA_COSTCENTRES

mqsichangeproperties $broker -c MonitoringProfiles -o ESB_PIAT_CoA_COSTCENTRES -n profileProperties -p /var/mqsi/monitoringprofiles/Profile_ORACLE_CoA_ESB_PIAT_CoA_COSTCENTRES_CMF.xml

mqsichangeproperties $broker -c MonitoringProfiles -o ESB_PIAT_CoA_COSTCENTRES -n useParserNameInMonitoringPayload -v TRUE 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_COSTCENTRES_CMF -m ESB_PIAT_CoA_COSTCENTRES

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_COSTCENTRES_CMF -s ESB.PIAT.COA.COSTCENTRES.IQ.terminal.out -i enable 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_COSTCENTRES_CMF -s ESB.PIAT.COA.COSTCENTRES.IQ.transaction.Rollback -i enable 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_COSTCENTRES_CMF -s CallPIATService.ValidatePIATResponse.terminal.out -i enable 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_CoA -f esb.primark.oracle.ESB_PIAT_CoA_COSTCENTRES_CMF -c active

