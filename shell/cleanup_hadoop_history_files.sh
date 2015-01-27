find /hadoop/history -type f -mtime +10 -name "hostname_*" -delete
find /hadoop/history/done -type f -mtime +10 -name "hostname_*" -delete

