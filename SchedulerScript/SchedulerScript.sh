cd /opt/mqm/bin
./fteCreateTransfer -sa SourceAgent -sm SourceQmanager -da DestAgent -dm DestQmanager -sd leave -t text -de overwrite -ss SchDateTime -oi Interval -jn JobName -md jobname=JobName -md destination_support_group=NTSS_Support_Group -md source_support_group=NTSS_Support_Group -md severity=Severity -dd DestPath SourcePath
