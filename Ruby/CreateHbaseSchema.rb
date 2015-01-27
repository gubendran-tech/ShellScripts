create '0003_SCMaster', { 'NAME'=>'D', IN_MEMORY => 'true',MAX_FILESIZE => '1073741824', VERSIONS => 2000000}
create '0003_DeviceMaster', { 'NAME'=>'D', IN_MEMORY => 'true',MAX_FILESIZE => '1073741824', VERSIONS => 2000000}
create '0003_ReportEvent', {'NAME'=>'D','VERSIONS'=>2000000 , 'COMPRESSION'=>'SNAPPY'}
create '0003_DeviceStats', {'NAME'=>'D','VERSIONS'=>2000000 , 'COMPRESSION'=>'SNAPPY'}
create '0003_DeviceAlertActivity',{'NAME'=>'D','VERSIONS'=>1, COMPRESSION=>'SNAPPY'}
create '0003_DeviceAlertData',{'NAME'=>'D','VERSIONS'=>2000000 , 'COMPRESSION'=>'SNAPPY'}
create '0003_AlertTemplate',{'NAME'=>'D','VERSIONS'=>1, COMPRESSION=>'SNAPPY'}
create '0003_NetworkDesignSc',{'NAME'=>'D','VERSIONS'=>1, COMPRESSION=>'SNAPPY'}
create '0003_ConnectionSummary' ,  {'NAME'=>'RSC',TTL=>'604800'}, { 'NAME'=>'YSC',TTL=>'604800' } , {'NAME'=>'GSC',TTL=>'604800'},{ 'NAME'=>'WSC',TTL=>'604800' }, {'NAME'=>'RD',TTL=>'604800'}, { 'NAME'=>'YD',TTL=>'604800' } , {'NAME'=>'GD',TTL=>'604800'}, {'NAME'=>'WD',TTL=>'604800'}
create '0003_SC_ConnectionSummary' ,  {'NAME'=>'RSC','VERSIONS'=>90000}, { 'NAME'=>'YSC','VERSIONS'=>90000 } , {'NAME'=>'GSC','VERSIONS'=>90000},{ 'NAME'=>'WSC','VERSIONS'=>90000 ,TTL=>'604800'}
create '0003_Device_ConnectionSummary' ,   {'NAME'=>'RD','VERSIONS'=>90000}, { 'NAME'=>'YD','VERSIONS'=>90000 } , {'NAME'=>'GD','VERSIONS'=>90000}, {'NAME'=>'WD','VERSIONS'=>90000}
create '0003_DeviceHourlyEnergy', {'NAME'=>'D',MAX_FILESIZE => '1073741824',COMPRESSION=>'SNAPPY'}
create '0003_DeviceEnergyConsolidated', {'NAME'=>'D',MAX_FILESIZE => '1073741824',COMPRESSION=>'SNAPPY'}
create '0003_DeviceEnergy', {'NAME'=>'D','VERSIONS'=>90000 , 'COMPRESSION'=>'SNAPPY'}
create '0003_DevicePerformanceSummary',{'NAME'=>'D','VERSIONS'=>2000000,COMPRESSION=>'SNAPPY',TTL=>'15552000'}
create '0003_ConsolidatedPerformanceSummary',{'NAME'=>'D','VERSIONS'=>2000000,COMPRESSION=>'SNAPPY'}
create '0003_DevicePerformancePeers',{'NAME'=>'D','VERSIONS'=>2000000,COMPRESSION=>'SNAPPY'}
create '0003_SCConnectionHistory',{'NAME'=>'D','VERSIONS'=>2000000,COMPRESSION=>'SNAPPY'}
create '0003_DeviceConnectionHistory',{'NAME'=>'D','VERSIONS'=>2000000,COMPRESSION=>'SNAPPY'}
create '0003_DeviceTelemetryAverages',{'NAME'=>'D','VERSIONS'=>1, COMPRESSION=>'SNAPPY'}
create '0003_DeviceReportGrid',{'NAME'=>'R','VERSIONS'=>1, COMPRESSION=>'SNAPPY'}
create '0003_SCGroupMap', { 'NAME'=>'K','VERSIONS'=>1, COMPRESSION=>'SNAPPY' }
