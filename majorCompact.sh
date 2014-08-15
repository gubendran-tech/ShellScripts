#for cid in 0007 0003 0039 0029 0016 0014 0004 0026 0027 0006 0005 0025 0032 0022 0024 0036 0010 0035 0034 0028 0038 0037 0017 0011 0008 0030 0057 0058
for cid in 0001
do
    echo "major_compact '${cid}_ConsolidatedPerformanceSummary'"
    echo "major_compact '${cid}_DeviceAlertActivity'"
    echo "major_compact '${cid}_DeviceAlertData'"
    echo "major_compact '${cid}_DeviceConnectionHistory'"
    echo "major_compact '${cid}_DeviceEnergy'"
    echo "major_compact '${cid}_DeviceEnergyConsolidated'"
    echo "major_compact '${cid}_DeviceHourlyEnergy'"
    echo "major_compact '${cid}_DeviceMaster'"
    echo "major_compact '${cid}_DevicePerformancePeers'"
    echo "major_compact '${cid}_DevicePerformanceSummary'"
    echo "major_compact '${cid}_DeviceReportGrid'"
    echo "major_compact '${cid}_DeviceStats'"
    echo "major_compact '${cid}_DeviceTelemetryAverages'"
    echo "major_compact '${cid}_Device_ConnectionSummary'"
    echo "major_compact '${cid}_NetworkDesignSc'"
    echo "major_compact '${cid}_ReportEvent'"
    echo "major_compact '${cid}_SCConnectionHistory'"
    echo "major_compact '${cid}_SCGroupMap'"
    echo "major_compact '${cid}_SCMaster'"
    echo "major_compact '${cid}_SC_ConnectionSummary'"
done

