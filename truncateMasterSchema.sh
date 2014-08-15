#echo "truncate 'Customer'"
echo "truncate 'Hierarchy'"
echo "truncate 'HierarchyRLookup'"

echo "truncate 'DeviceMasterRLookup'"
echo "truncate 'SCDeviceMasterRLookup'"


for cid in 0001 0006 0010 0039 0056 0057
do
  echo "truncate '${cid}_SCMaster'"
  echo "truncate '${cid}_DeviceMaster'"
done
