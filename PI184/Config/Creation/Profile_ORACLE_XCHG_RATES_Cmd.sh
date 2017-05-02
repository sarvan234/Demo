broker=$1 

#1. Exchange Rates - PMF
mqsicreateconfigurableservice $broker -c MonitoringProfiles -o ORACLE_ESB_XCHG_RATES_PMF

mqsichangeproperties  $broker  -c MonitoringProfiles -o ORACLE_ESB_XCHG_RATES_PMF -n profileProperties -p /var/mqsi/monitoringprofiles/Profile_ORACLE_XCHG_RATES_ORACLE_ESB_XCHG_RATES_PMF.xml

mqsichangeproperties $broker -c MonitoringProfiles -o ORACLE_ESB_XCHG_RATES_PMF -n useParserNameInMonitoringPayload -v TRUE 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_XCHG_RATES -f esb.primark.oracle.ORACLE_ESB_XCHG_RATES_PMF -m ORACLE_ESB_XCHG_RATES_PMF

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_XCHG_RATES -f esb.primark.oracle.ORACLE_ESB_XCHG_RATES_PMF -s ORACLE.ESB.XCHG.RATES.terminal.out -i enable

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_XCHG_RATES -f esb.primark.oracle.ORACLE_ESB_XCHG_RATES_PMF -s ORACLE.ESB.XCHG.RATES.transaction.Rollback -i enable 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_XCHG_RATES -f esb.primark.oracle.ORACLE_ESB_XCHG_RATES_PMF -s PublishMessage.terminal.in -i enable

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_XCHG_RATES -f esb.primark.oracle.ORACLE_ESB_XCHG_RATES_PMF -c active

#2. Exchange Rates - CMF
mqsicreateconfigurableservice $broker -c MonitoringProfiles -o ESB_PIAT_XCHG_RATES_CMF

mqsichangeproperties $broker -c MonitoringProfiles -o ESB_PIAT_XCHG_RATES_CMF -n profileProperties -p /var/mqsi/monitoringprofiles/Profile_ORACLE_XCHG_RATES_ESB_PIAT_XCHG_RATES_CMF.xml

mqsichangeproperties $broker -c MonitoringProfiles -o ESB_PIAT_XCHG_RATES_CMF -n useParserNameInMonitoringPayload -v TRUE 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_XCHG_RATES -f esb.primark.oracle.ESB_PIAT_XCHG_RATES_CMF -m ESB_PIAT_XCHG_RATES_CMF

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_XCHG_RATES -f esb.primark.oracle.ESB_PIAT_XCHG_RATES_CMF -s ESB.PIAT.XCHG.RATES.IQ.terminal.out -i enable 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_XCHG_RATES -f esb.primark.oracle.ESB_PIAT_XCHG_RATES_CMF -s ESB.PIAT.XCHG.RATES.IQ.transaction.Rollback -i enable 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_XCHG_RATES -f esb.primark.oracle.ESB_PIAT_XCHG_RATES_CMF -s CallPIATService.ValidatePIATResponse.terminal.out -i enable 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_XCHG_RATES -f esb.primark.oracle.ESB_PIAT_XCHG_RATES_CMF -c active