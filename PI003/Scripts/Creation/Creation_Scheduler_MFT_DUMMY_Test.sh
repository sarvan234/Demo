cd /opt/mqm/bin
./fteCreateTransfer -sa MFT01 -sm MFT01 -da MFT01 -dm MFT01 -sd leave -t text -de overwrite -ss 2014-09-29T23:45 -oi days -jn MFT_DUMMY -md jobname=MFT_DUMMY -md destination_support_group=NTSS_Support_Group -md source_support_group=NTSS_Support_Group -md severity=2 -dd /home/MQFTE_LINUX /home/TEST/test/*.txt
