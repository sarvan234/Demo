broker=$1
mqsicreateexecutiongroup $broker -e Jenkins_Test
mqsichangeproperties $broker -e Jenkins_Test -o HTTPConnector -n explicitlySetPortNumber -v 7906