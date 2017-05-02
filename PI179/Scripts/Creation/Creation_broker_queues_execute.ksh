## Alter queues for Broker Queue manager

## Check that the script has been called correctly.
if [[ "$#" = 0 || "$1" = '-?' || "$1" = '?' || "$1" = '-help' || "$1" = 'help' ]]; then
     echo " "
     echo "Define queues: Please supply target queue manager name"
     echo " "
     exit 0
fi

qmgr=$1
node=$2
CENV='echo $qmgr | cut -c-2'

echo " "
echo "Removing temporary file"
echo " "
rm tmp_mqs_script.mqsc
touch tmp_mqs_script.mqsc
chmod 777 tmp_mqs_script.mqsc

echo " "
echo "Defining queues for queue manager" $qmgr 
echo " "
echo " " >> tmp_mqs_script.mqsc
echo "DEFINE QL('ORACLEFINANCIAL_TEMPLATE_QUEUE') -" >> tmp_mqs_script.mqsc
echo "       DESCR('ESB MODEL QUEUE') - " >> tmp_mqs_script.mqsc
echo "       DEFPSIST(YES) - " >> tmp_mqs_script.mqsc
echo "       DEFPRTY(0) - " >> tmp_mqs_script.mqsc
echo "       MAXDEPTH(10000) - " >> tmp_mqs_script.mqsc
echo "       MAXMSGL(4194304) - " >> tmp_mqs_script.mqsc
echo "       QDEPTHLO(1) - " >> tmp_mqs_script.mqsc
echo "       QDEPTHHI(10) - " >> tmp_mqs_script.mqsc
echo "       QDPMAXEV(ENABLED) - " >> tmp_mqs_script.mqsc
echo "       QDPHIEV(ENABLED) - " >> tmp_mqs_script.mqsc
echo "       QDPLOEV(DISABLED) - " >> tmp_mqs_script.mqsc
echo "       DEFBIND(NOTFIXED) - " >> tmp_mqs_script.mqsc
echo "       REPLACE" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "DEFINE QL('ORACLE.ESB.COA.BAK') - " >> tmp_mqs_script.mqsc
echo "       LIKE('ORACLEFINANCIAL_TEMPLATE_QUEUE') -" >> tmp_mqs_script.mqsc
echo "       DESCR('PI179 – PI182 & PI185- COA PMF BACKOUT QUEUE') - " >> tmp_mqs_script.mqsc
echo "       DEFPSIST(YES) - " >> tmp_mqs_script.mqsc
echo "       DEFBIND(NOTFIXED) - " >> tmp_mqs_script.mqsc
echo "       REPLACE" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "DEFINE QL('ORACLE.ESB.COA') - " >> tmp_mqs_script.mqsc
echo "       LIKE('ORACLEFINANCIAL_TEMPLATE_QUEUE') -" >> tmp_mqs_script.mqsc
echo "       DESCR('PI179 – PI182 & PI185- COA PMF INPUT QUEUE') - " >> tmp_mqs_script.mqsc
echo "       DEFPSIST(YES) - " >> tmp_mqs_script.mqsc
echo "       BOQNAME(ORACLE.ESB.COA.BAK) - " >> tmp_mqs_script.mqsc
echo "       DEFBIND(NOTFIXED) - " >> tmp_mqs_script.mqsc
echo "       REPLACE" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "DEFINE QL('ESB.PIAT.COA.ACCOUNTS.IQ.BAK') - " >> tmp_mqs_script.mqsc
echo "       LIKE('ORACLEFINANCIAL_TEMPLATE_QUEUE') -" >> tmp_mqs_script.mqsc
echo "       DESCR('PI179 – PI182 & PI185- ACCOUNTS BACKOUT QUEUE') - " >> tmp_mqs_script.mqsc
echo "       DEFPSIST(YES) - " >> tmp_mqs_script.mqsc
echo "       DEFBIND(NOTFIXED) - " >> tmp_mqs_script.mqsc
echo "       REPLACE" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "DEFINE QL('ESB.PIAT.COA.ACCOUNTS.IQ') - " >> tmp_mqs_script.mqsc
echo "       LIKE('ORACLEFINANCIAL_TEMPLATE_QUEUE') -" >> tmp_mqs_script.mqsc
echo "       DESCR('PI179 – PI182 & PI185- ACCOUNTS INPUT QUEUE') - " >> tmp_mqs_script.mqsc
echo "       DEFPSIST(YES) - " >> tmp_mqs_script.mqsc
echo "       BOQNAME(ESB.PIAT.COA.ACCOUNTS.IQ.BAK) - " >> tmp_mqs_script.mqsc
echo "       DEFBIND(NOTFIXED) - " >> tmp_mqs_script.mqsc
echo "       REPLACE" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "DEFINE QL('ESB.PIAT.COA.PROJECTS.IQ.BAK') - " >> tmp_mqs_script.mqsc
echo "       LIKE('ORACLEFINANCIAL_TEMPLATE_QUEUE') -" >> tmp_mqs_script.mqsc
echo "       DESCR('PI179 – PI182 & PI185- PROJECTS BACKOUT QUEUE') - " >> tmp_mqs_script.mqsc
echo "       DEFPSIST(YES) - " >> tmp_mqs_script.mqsc
echo "       DEFBIND(NOTFIXED) - " >> tmp_mqs_script.mqsc
echo "       REPLACE" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "DEFINE QL('ESB.PIAT.COA.PROJECTS.IQ') - " >> tmp_mqs_script.mqsc
echo "       LIKE('ORACLEFINANCIAL_TEMPLATE_QUEUE') -" >> tmp_mqs_script.mqsc
echo "       DESCR('PI179 – PI182 & PI185- PROJECTS INPUT QUEUE') - " >> tmp_mqs_script.mqsc
echo "       DEFPSIST(YES) - " >> tmp_mqs_script.mqsc
echo "       BOQNAME(ESB.PIAT.COA.PROJECTS.IQ.BAK) - " >> tmp_mqs_script.mqsc
echo "       DEFBIND(NOTFIXED) - " >> tmp_mqs_script.mqsc
echo "       REPLACE" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "DEFINE QL('ESB.PIAT.COA.COSTCENTRES.IQ.BAK') - " >> tmp_mqs_script.mqsc
echo "       LIKE('ORACLEFINANCIAL_TEMPLATE_QUEUE') -" >> tmp_mqs_script.mqsc
echo "       DESCR('PI179 – PI182 & PI185- COSTCENTRES BACKOUT QUEUE') - " >> tmp_mqs_script.mqsc
echo "       DEFPSIST(YES) - " >> tmp_mqs_script.mqsc
echo "       DEFBIND(NOTFIXED) - " >> tmp_mqs_script.mqsc
echo "       REPLACE" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "DEFINE QL('ESB.PIAT.COA.COSTCENTRES.IQ') - " >> tmp_mqs_script.mqsc
echo "       LIKE('ORACLEFINANCIAL_TEMPLATE_QUEUE') -" >> tmp_mqs_script.mqsc
echo "       DESCR('PI179 – PI182 & PI185- COSTCENTRES INPUT QUEUE') - " >> tmp_mqs_script.mqsc
echo "       DEFPSIST(YES) - " >> tmp_mqs_script.mqsc
echo "       BOQNAME(ESB.PIAT.COA.COSTCENTRES.IQ.BAK) - " >> tmp_mqs_script.mqsc
echo "       DEFBIND(NOTFIXED) - " >> tmp_mqs_script.mqsc
echo "       REPLACE" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "DEFINE QL('ESB.PIAT.COA.LOCATIONS.IQ.BAK') - " >> tmp_mqs_script.mqsc
echo "       LIKE('ORACLEFINANCIAL_TEMPLATE_QUEUE') -" >> tmp_mqs_script.mqsc
echo "       DESCR('PI179 – PI182 & PI185- LOCATIONS BACKOUT QUEUE') - " >> tmp_mqs_script.mqsc
echo "       DEFPSIST(YES) - " >> tmp_mqs_script.mqsc
echo "       DEFBIND(NOTFIXED) - " >> tmp_mqs_script.mqsc
echo "       REPLACE" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "DEFINE QL('ESB.PIAT.COA.LOCATIONS.IQ') - " >> tmp_mqs_script.mqsc
echo "       LIKE('ORACLEFINANCIAL_TEMPLATE_QUEUE') -" >> tmp_mqs_script.mqsc
echo "       DESCR('PI179 – PI182 & PI185- LOCATIONS INPUT QUEUE') - " >> tmp_mqs_script.mqsc
echo "       DEFPSIST(YES) - " >> tmp_mqs_script.mqsc
echo "       BOQNAME(ESB.PIAT.COA.LOCATIONS.IQ.BAK) - " >> tmp_mqs_script.mqsc
echo "       DEFBIND(NOTFIXED) - " >> tmp_mqs_script.mqsc
echo "       REPLACE" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc

### Creating subscriptions for interface flows in Oracle Financial Server

echo "Define SUB('ORACLE.COA.ACCOUNTS.SUB') TOPICSTR('ORACLE/MASTERDATA/COA/ACCOUNTS') DEST('ESB.PIAT.COA.ACCOUNTS.IQ') REPLACE" >> tmp_mqs_script.mqsc
echo "Define SUB('ORACLE.COA.PROJECTS.SUB') TOPICSTR('ORACLE/MASTERDATA/COA/PROJECTS') DEST('ESB.PIAT.COA.PROJECTS.IQ') REPLACE" >> tmp_mqs_script.mqsc
echo "Define SUB('ORACLE.COA.COSTCENTRES.SUB') TOPICSTR('ORACLE/MASTERDATA/COA/COSTCENTRES') DEST('ESB.PIAT.COA.COSTCENTRES.IQ') REPLACE" >> tmp_mqs_script.mqsc
echo "Define SUB('ORACLE.COA.LOCATIONS.SUB') TOPICSTR('ORACLE/MASTERDATA/COA/LOCATIONSPerBU') DEST('ESB.PIAT.COA.LOCATIONS.IQ') REPLACE" >> tmp_mqs_script.mqsc



echo " " >> tmp_mqs_script.mqsc
echo "END" >> tmp_mqs_script.mqsc

runmqsc $qmgr <tmp_mqs_script.mqsc
