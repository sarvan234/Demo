
## Queue definitions
if [[ "$#" = 0 || "$1" = '-?' || "$1" = '?' || "$1" = '-help' || "$1" = 'help' ]]; then
     echo " "
     echo "Queue definitions for the specified Queue Manager"
     echo " "
     exit 0
fi
 
qmgr=$1
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
echo "CLEAR  QL(ORACLEFINANCIAL_TEMPLATE_QUEUE)" >> tmp_mqs_script.mqsc
echo "DELETE QL(ORACLEFINANCIAL_TEMPLATE_QUEUE)" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc 

echo "CLEAR  QL(ORACLE.ESB.COA.BAK)" >> tmp_mqs_script.mqsc
echo "DELETE QL(ORACLE.ESB.COA.BAK)" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "CLEAR  QL(ORACLE.ESB.COA)" >> tmp_mqs_script.mqsc
echo "DELETE QL(ORACLE.ESB.COA)" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "CLEAR  QL(ESB.PIAT.COA.ACCOUNTS.IQ.BAK)" >> tmp_mqs_script.mqsc
echo "DELETE QL(ESB.PIAT.COA.ACCOUNTS.IQ.BAK)" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "CLEAR  QL(ESB.PIAT.COA.ACCOUNTS.IQ)" >> tmp_mqs_script.mqsc
echo "DELETE QL(ESB.PIAT.COA.ACCOUNTS.IQ)" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "CLEAR  QL(ESB.PIAT.COA.PROJECTS.IQ.BAK)" >> tmp_mqs_script.mqsc
echo "DELETE QL(ESB.PIAT.COA.PROJECTS.IQ.BAK)" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "CLEAR  QL(ESB.PIAT.COA.PROJECTS.IQ)" >> tmp_mqs_script.mqsc
echo "DELETE QL(ESB.PIAT.COA.PROJECTS.IQ)" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "CLEAR  QL(ESB.PIAT.COA.COSTCENTRES.IQ.BAK)" >> tmp_mqs_script.mqsc
echo "DELETE QL(ESB.PIAT.COA.COSTCENTRES.IQ.BAK)" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "CLEAR  QL(ESB.PIAT.COA.COSTCENTRES.IQ)" >> tmp_mqs_script.mqsc
echo "DELETE QL(ESB.PIAT.COA.COSTCENTRES.IQ)" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "CLEAR  QL(ESB.PIAT.COA.LOCATIONS.IQ.BAK)" >> tmp_mqs_script.mqsc
echo "DELETE QL(ESB.PIAT.COA.LOCATIONS.IQ.BAK)" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "CLEAR  QL(ESB.PIAT.COA.LOCATIONS.IQ)" >> tmp_mqs_script.mqsc
echo "DELETE QL(ESB.PIAT.COA.LOCATIONS.IQ)" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc


echo "DELETE SUB('ORACLE.COA.ACCOUNTS.SUB')">> tmp_mqs_script.mqsc 
echo "DELETE SUB('ORACLE.COA.PROJECTS.SUB')">> tmp_mqs_script.mqsc 
echo "DELETE SUB('ORACLE.COA.COSTCENTRES.SUB')">> tmp_mqs_script.mqsc 
echo "DELETE SUB('ORACLE.COA.LOCATIONS.SUB')">> tmp_mqs_script.mqsc 



echo " " >> tmp_mqs_script.mqsc

echo "END" >> tmp_mqs_script.mqsc
 
runmqsc $qmgr <tmp_mqs_script.mqsc

