for cid in 0001 0006 0010 0039 0056 0057
#for cid in 0057
do
  echo "disable '${cid}_DeviceAnalytics'"
  echo "alter '${cid}_DeviceAnalytics', {NAME => 'D', TTL=>'604800'}"
  echo "enable '${cid}_DeviceAnalytics'"

  echo "disable '${cid}_DeviceStats'"
  echo "alter '${cid}_DeviceStats', {NAME => 'D', TTL=>'3888000'}"
  echo "enable '${cid}_DeviceStats'"
done
