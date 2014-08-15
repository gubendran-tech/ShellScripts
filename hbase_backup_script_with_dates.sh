/appl/petrasolar/analytics/scripts/backup_scripts/flush_migrate.sh | hbase shell

echo "Echo hbase home" $HBASE_HOME

cd $HBASE_HOME

folder_name=`date +%Y%m%d%H%M`

startdate_ymd=`date --date="31 day ago" +%Y%m%d`
startdate=`date --date="${startdate_ymd}" +%s`
startdatemillis=`expr ${startdate} \\* 1000`

enddate_ymd=`date --date="1 day ago" +%Y%m%d`
enddate=`date --date="${enddate_ymd}" +%s`
enddatemillis=`expr ${enddate} \\* 1000`

hadoop jar hbase-0.90.6-cdh3u6.jar export Customer  /export/backup_${folder_name}/Customer  2000000
hadoop jar hbase-0.90.6-cdh3u6.jar export Hierarchy  /export/backup_${folder_name}/Hierarchy  2000000
hadoop jar hbase-0.90.6-cdh3u6.jar export HierarchyRLookup  /export/backup_${folder_name}/HierarchyRLookup  2000000
hadoop jar hbase-0.90.6-cdh3u6.jar export DeviceMasterRLookup  /export/backup_${folder_name}/DeviceMasterRLookup  2000000
hadoop jar hbase-0.90.6-cdh3u6.jar export SCDeviceMasterRLookup  /export/backup_${folder_name}/SCDeviceMasterRLookup  2000000

for cid in 0001
do
    echo "Customer Id : " $cid 

    echo "${cid}_SCMaster"
    hadoop jar hbase-0.90.6-cdh3u6.jar export ${cid}_SCMaster /export/backup_${folder_name}/${cid}_SCMaster  2000000
    
    echo "${cid}_DeviceMaster"
    hadoop jar hbase-0.90.6-cdh3u6.jar export ${cid}_DeviceMaster /export/backup_${folder_name}/${cid}_DeviceMaster 2000000

    echo "${cid}_AlertTemplate"
    hadoop jar hbase-0.90.6-cdh3u6.jar export ${cid}_AlertTemplate /export/backup_${folder_name}/${cid}_AlertTemplate 2000000

    echo "${cid}_ReportEvent"
    hadoop jar hbase-0.90.6-cdh3u6.jar export ${cid}_ReportEvent /export/backup_${folder_name}/${cid}_ReportEvent 2000000 $startdatemillis $enddatemillis 

    echo "${cid}_DeviceStats"
    hadoop jar hbase-0.90.6-cdh3u6.jar export ${cid}_DeviceStats /export/backup_${folder_name}/${cid}_DeviceStats 2000000 $startdatemillis $enddatemillis

done

echo "Hbase back-up script completed"
