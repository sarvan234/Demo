echo " "
rm tmp_mqs_script.mqsc
touch tmp_mqs_script.mqsc
chmod 777 tmp_mqs_script.mqsc
 
echo " "
echo "Defining queues and Subscriptions for queue manager" $qmgr 
echo " "
echo " " >> tmp_mqs_script.mqsc
echo "DEFINE QL('Jenkins_Queue_Bak') -" >> tmp_mqs_script.mqsc
echo "       DESCR('Sample') - " >> tmp_mqs_script.mqsc
echo "       DEFPSIST($defpsis1) - " >> tmp_mqs_script.mqsc
echo "       BOQNAME($boqname1) - " >> tmp_mqs_script.mqsc
echo "       DEFPRTY(0) - " >> tmp_mqs_script.mqsc
echo "       MAXDEPTH($maxdept1) - " >> tmp_mqs_script.mqsc
echo "       MAXMSGL(4194304) - " >> tmp_mqs_script.mqsc
echo "       QDEPTHLO($qdepthl1) - " >> tmp_mqs_script.mqsc
echo "       QDEPTHHI($QDEPTHHI) - " >> tmp_mqs_script.mqsc
echo "       QDPMAXEV($QDPMAXEV) - " >> tmp_mqs_script.mqsc
echo "       QDPHIEV(ENABLED) - " >> tmp_mqs_script.mqsc
echo "       QDPLOEV(DISABLED) - " >> tmp_mqs_script.mqsc
echo "       DEFBIND(NOTFIXED) - " >> tmp_mqs_script.mqsc
echo "       CLUSTER(MQC_L1ESB1) - " >> tmp_mqs_script.mqsc
echo "       REPLACE" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "DEFINE QL('Jenkins_Queue') -" >> tmp_mqs_script.mqsc
echo "       DESCR('Sample') - " >> tmp_mqs_script.mqsc
echo "       DEFPSIST($defpsis2) - " >> tmp_mqs_script.mqsc
echo "       BOQNAME(Jenkins_Queue_Bak) - " >> tmp_mqs_script.mqsc
echo "       DEFPRTY(0) - " >> tmp_mqs_script.mqsc
echo "       MAXDEPTH($maxdept2) - " >> tmp_mqs_script.mqsc
echo "       MAXMSGL(4194304) - " >> tmp_mqs_script.mqsc
echo "       QDEPTHLO($qdepthl2) - " >> tmp_mqs_script.mqsc
echo "       QDEPTHHI($QDEPTHHI) - " >> tmp_mqs_script.mqsc
echo "       QDPMAXEV($QDPMAXEV) - " >> tmp_mqs_script.mqsc
echo "       QDPHIEV(ENABLED) - " >> tmp_mqs_script.mqsc
echo "       QDPLOEV(DISABLED) - " >> tmp_mqs_script.mqsc
echo "       DEFBIND(NOTFIXED) - " >> tmp_mqs_script.mqsc
echo "       CLUSTER(MQC_L1ESB1) - " >> tmp_mqs_script.mqsc
echo "       REPLACE" >> tmp_mqs_script.mqsc
echo "Define SUB('Jenkins_Sub1') TOPICSTR('$SYS/Broker/$brk/Monitoring') DEST('TEST_JENKINS2') REPLACE" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "END" >> tmp_mqs_script.mqsc
runmqsc $qmgr <tmp_mqs_script.mqsc