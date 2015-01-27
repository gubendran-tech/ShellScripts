nameNode={$hosname}
timeStamp=`date +%Y-%m-%d-%H-%M`
twoDayAgo=`date +%Y-%m-%d --date="1 day ago"`

backupdir=${dir}
workDir=${backupdir}/work

curl -s http://${nameNode}:50070/getimage?getimage=1 > $workDir/fsimage
curl -s http://${nameNode}:50070/getimage?getedit=1 > $workDir/edits

cd $backupdir

tar -czf namenode_backup_${timeStamp}.tar.gz work/

#Delete download files
rm -f $workDir/edits
rm -f $workDir/fsimage

#Delete old files
rm -fr namenode_backup_${twoDayAgo}*.tar.gz
