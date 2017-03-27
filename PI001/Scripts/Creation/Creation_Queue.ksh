echo " "
rm tmp_mqs_script.mqsc
touch tmp_mqs_script.mqsc
chmod 777 tmp_mqs_script.mqsc
 
echo " "
echo "Defining queues and Subscriptions for queue manager" $qmgr 
echo " "
echo "Define SUB('Jenkins_Sub1') TOPICSTR('$SYS/Broker/$brk/Monitoring') DEST('TEST_JENKINS2') REPLACE" >> tmp_mqs_script.mqsc
echo "Define SUB('Jenkins_Sub2') TOPICSTR('$SYS/Broker/$brk/Monitoring/Jenkins') DEST('$dest2') REPLACE" >> tmp_mqs_script.mqsc
echo " " >> tmp_mqs_script.mqsc
echo "END" >> tmp_mqs_script.mqsc
runmqsc $qmgr <tmp_mqs_script.mqsc