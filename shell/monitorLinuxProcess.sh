
date=`date +"%Y-%m-%d"`
dateTime=`date +"%Y-%m-%d:%H-%M-%S"`
path="/appl/petrasolar/analytics/scripts/backup_scripts"
fileName="running_process_${date}.txt"

echo ${path}/${fileName}

echo "+++++++START+++${dateTime}+++++++++++++++++" >> ${path}/${fileName}

ps -ef | grep java >> ${path}/${fileName}

echo "+++++++END++++${dateTime}++++++++++++++++++" >> ${path}/${fileName}

# Remove Old file
oldDate=`date +"%Y-%m-%d" --date="2 days ago"`
oldFileName="running_process_${oldDate}.txt"
rm ${path}/${oldFileName}
