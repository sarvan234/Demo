broker=$1
mqsicreateconfigurableservice $broker -c MonitoringProfiles -o ORACLE_ESB_INVOICE_STATUS_PMF

mqsichangeproperties $broker -c MonitoringProfiles -o ORACLE_ESB_INVOICE_STATUS_PMF -n profileProperties -p /var/mqsi/monitoringprofiles/Profile_ORACLE_INVOICE_STATUS_ORACLE_ESB_INVOICE_STATUS_PMF.xml
mqsichangeproperties $broker -c MonitoringProfiles -o ORACLE_ESB_INVOICE_STATUS_PMF -n useParserNameInMonitoringPayload -v TRUE 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_INVOICE_STATUS -f esb.primark.oracle.ORACLE_ESB_INVOICE_STATUS_PMF -m ORACLE_ESB_INVOICE_STATUS_PMF

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_INVOICE_STATUS -f esb.primark.oracle.ORACLE_ESB_INVOICE_STATUS_PMF -s ORACLE.ESB.INVOICE.STATUS.terminal.out -i enable

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_INVOICE_STATUS -f esb.primark.oracle.ORACLE_ESB_INVOICE_STATUS_PMF -s PublishMessage.terminal.in -i enable

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_INVOICE_STATUS -f esb.primark.oracle.ORACLE_ESB_INVOICE_STATUS_PMF -s ORACLE.ESB.INVOICE.STATUS.transaction.Rollback -i enable

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_INVOICE_STATUS -f esb.primark.oracle.ORACLE_ESB_INVOICE_STATUS_PMF -c active



mqsicreateconfigurableservice $broker -c MonitoringProfiles -o ESB_PIAT_INVOICE_STATUS_CMF

mqsichangeproperties $broker -c MonitoringProfiles -o ESB_PIAT_INVOICE_STATUS_CMF -n profileProperties -p /var/mqsi/monitoringprofiles/Profile_ORACLE_INVOICE_STATUS_ESB_PIAT_INVOICE_STATUS_CMF.xml
mqsichangeproperties $broker -c MonitoringProfiles -o ESB_PIAT_INVOICE_STATUS_CMF -n useParserNameInMonitoringPayload -v TRUE 

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_INVOICE_STATUS -f esb.primark.oracle.ESB_PIAT_INVOICE_STATUS_CMF -m ESB_PIAT_INVOICE_STATUS_CMF

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_INVOICE_STATUS -f esb.primark.oracle.ESB_PIAT_INVOICE_STATUS_CMF -s ESB.PIAT.INVOICE.STATUS.IQ.terminal.out -i enable

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_INVOICE_STATUS -f esb.primark.oracle.ESB_PIAT_INVOICE_STATUS_CMF -s CallPIATService.ValidatePIATResponse.terminal.out -i enable

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_INVOICE_STATUS -f esb.primark.oracle.ESB_PIAT_INVOICE_STATUS_CMF -s ESB.PIAT.INVOICE.STATUS.IQ.transaction.Rollback -i enable

mqsichangeflowmonitoring $broker -e OracleFinancial -k ORACLE_INVOICE_STATUS -f esb.primark.oracle.ESB_PIAT_INVOICE_STATUS_CMF -c active