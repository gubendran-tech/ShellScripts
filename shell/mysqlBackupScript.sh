mysql_server='mysql -u<username> -p<password> -h<hostname>'
mysqldump_server='mysqldump -u<username> -p<password> -h<hostname> --routines --single-transaction --ignore-table=<dbname.table_name> --quick'

two_days_back=`date +%y-%m-%d -d '-2 day'`
dir=/tmp

#Delete 1 days old backups
rm -rf ${dir}/*${two_days_back}.gz

for db in `$mysql_server -e 'show databases' | grep -vE 'Database|test'`
do
   $mysqldump_server $db |  sed 's/DEFINER=[^*]*\*/\*/' | gzip > ${dir}/${db}_`date +%y-%m-%d`.gz
done

