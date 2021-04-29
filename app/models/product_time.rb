class ProductTime
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic

  field :last_time, type: DateTime


def self.chunck_clear(date, shift_no)

 shift = Shift.find_by(shift_no:shift_no)
    case
    when shift.start_day == '1' && shift.end_day == '1'
      start_time = (date+" "+shift.start_time).to_time
      end_time = (date+" "+shift.end_time).to_time
    when shift.start_day == '1' && shift.end_day == '2'
      start_time = (date+" "+shift.start_time).to_time
      end_time = (date+" "+shift.end_time).to_time+1.day
    else
      start_time = (date+" "+shift.start_time).to_time+1.day
      end_time = (date+" "+shift.end_time).to_time+1.day
    end
byebug



als = ["Disconnect_Machine1", "Mode_path1_Machine1", "MainProgram_path1_Machine1", "MainComment_path1_Machine1", "PartsNum_path1_Machine1", "RunTime_path1_Machine1", "CutTime_path1_Machine1", "CncState_path1_Machine1", "CncWarning_path1_Machine1", "ServoLoad_0_path1_Machine1", "ServoLoad_1_path1_Machine1", "SpindleLoad_0_path1_Machine1", "OPERATE", "DISCONNECT", "ALARM", "EMERGENCY", "SUSPEND", "STOP", "MANUAL", "WARMUP", "WARNING", "ProductName", "ProductResultNumber", "ProductSerialNumber", "OperatorID", "Disconnect_Machine4", "Mode_path1_Machine4", "MainProgram_path1_Machine4", "MainComment_path1_Machine4", "PartsNum_path1_Machine4", "RunTime_path1_Machine4", "CutTime_path1_Machine4", "CncState_path1_Machine4", "CncWarning_path1_Machine4", "ServoLoad_0_path1_Machine4", "ServoLoad_1_path1_Machine4", "SpindleLoad_0_path1_Machine4", "Disconnect_Machine3", "PartsNum_Machine3", "machinestatus_Machine3", "Disconnect_ELECTRICAL-C84", "Mode_path1_ELECTRICAL-C84", "MainProgram_path1_ELECTRICAL-C84", "MainComment_path1_ELECTRICAL-C84", "PartsNum_path1_ELECTRICAL-C84", "RunTime_path1_ELECTRICAL-C84", "CutTime_path1_ELECTRICAL-C84", "CncState_path1_ELECTRICAL-C84", "CncWarning_path1_ELECTRICAL-C84", "ServoLoad_0_path1_ELECTRICAL-C84", "ServoLoad_1_path1_ELECTRICAL-C84", "SpindleLoad_0_path1_ELECTRICAL-C84", "LaserSequence_path1_PUMP-C65", "SigBeamOut_path1_PUMP-C65", "SigLaserAlarm_path1_PUMP-C65", "LaserSequence_path1_PUMP-C58", "SigBeamOut_path1_PUMP-C58", "SigLaserAlarm_path1_PUMP-C58", "LaserSequence_path1_PUMP-C57", "SigBeamOut_path1_PUMP-C57", "SigLaserAlarm_path1_PUMP-C57", "LaserSequence_path1_PUMP-C86", "SigBeamOut_path1_PUMP-C86", "SigLaserAlarm_path1_PUMP-C86", "EMG_path1_VALVE-C46", "MainProgram_path1_VALVE-C46", "MainComment_path1_VALVE-C46", "PartsNum_path1_VALVE-C46", "CncWarning_path1_VALVE-C46", "Disconnect_VALVE-C46", "EMG_path1_VALVE-C52", "Mode_path1_VALVE-C52", "MainProgram_path1_VALVE-C52", "MainComment_path1_VALVE-C52", "PartsNum_path1_VALVE-C52", "CncState_path1_VALVE-C52", "CncWarning_path1_VALVE-C52", "Disconnect_VALVE-C52", "EMG_path1_VALVE-C85", "MainProgram_path1_VALVE-C85", "MainComment_path1_VALVE-C85", "PartsNum_path1_VALVE-C85", "CncWarning_path1_VALVE-C85","Disconnect_VALVE-C85", "EMG_path1_VALVE-C63", "MainProgram_path1_VALVE-C63", "MainComment_path1_VALVE-C63", "CncWarning_path1_VALVE-C63", "ServoLoad_2_path1_VALVE-C63", "Disconnect_VALVE-C63", "Mode_path1_ELECTRICAL-C34", "MainProgram_path1_ELECTRICAL-C34", "MainComment_path1_ELECTRICAL-C34", "PartsNum_path1_ELECTRICAL-C34", "CncState_path1_ELECTRICAL-C34", "CncWarning_path1_ELECTRICAL-C34", "Disconnect_ELECTRICAL-C34", "EMG_path1_PUMP-C65", "Mode_path1_PUMP-C65", "MainProgram_path1_PUMP-C65", "MainComment_path1_PUMP-C65", "SigSBK_path1_PUMP-C65", "SigDM00_path1_PUMP-C65", "SigDM01_path1_PUMP-C65", "SigMDRN_path1_PUMP-C65", "CncWarning_path1_PUMP-C65", "Disconnect_PUMP-C65", "EMG_path1_PUMP-C58", "MainProgram_path1_PUMP-C58", "ActProgram_path1_PUMP-C58", "MainComment_path1_PUMP-C58", "ActComment_path1_PUMP-C58", "SigSBK_path1_PUMP-C58", "SigDM00_path1_PUMP-C58", "SigDM01_path1_PUMP-C58", "SigMDRN_path1_PUMP-C58", "CncWarning_path1_PUMP-C58", "Disconnect_PUMP-C58", "EMG_path1_PUMP-C57", "MainProgram_path1_PUMP-C57", "ActProgram_path1_PUMP-C57", "MainComment_path1_PUMP-C57", "ActComment_path1_PUMP-C57", "PartsNum_path1_PUMP-C57", "SigSBK_path1_PUMP-C57", "SigDM00_path1_PUMP-C57", "SigDM01_path1_PUMP-C57", "SigMDRN_path1_PUMP-C57", "CncWarning_path1_PUMP-C57", "ServoLoad_2_path1_PUMP-C57", "Disconnect_PUMP-C57", "SigSTL_path1_PUMP-C86", "EMG_path1_PUMP-C86", "Mode_path1_PUMP-C86", "MainProgram_path1_PUMP-C86", "ActProgram_path1_PUMP-C86", "MainComment_path1_PUMP-C86", "ActComment_path1_PUMP-C86", "PartsNum_path1_PUMP-C86", "RunTime_path1_PUMP-C86", "CutTime_path1_PUMP-C86", "SigCUT_path1_PUMP-C86", "SigSBK_path1_PUMP-C86", "SigDM00_path1_PUMP-C86", "SigDM01_path1_PUMP-C86", "SigMDRN_path1_PUMP-C86", "CncState_path1_PUMP-C86", "CncWarning_path1_PUMP-C86", "ServoLoad_3_path1_PUMP-C86", "SpindleLoad_0_path1_PUMP-C86", "Disconnect_PUMP-C86", "Mode_path1_VALVE-C85", "CncFan1Status_path1_PUMP-C65", "CncFan2Status_path1_PUMP-C65", "CncFan3Status_path1_PUMP-C65", "CncFan4Status_path1_PUMP-C65", "CncBatLow_0_path1_PUMP-C65", "ApcBatZero_0_path1_PUMP-C65", "ApcBatLow_0_path1_PUMP-C65", "IndBatZero_0_path1_PUMP-C65", "SpdBatZero_0_path1_PUMP-C65", "SSpdBatZero_0_path1_PUMP-C65", "ServoTemp_0_path1_PUMP-C65", "PulseCoderTemp_0_path1_PUMP-C65", "ServoLeakResistData_0_path1_PUMP-C65", "InFan1SrvAmpStatus_0_path1_PUMP-C65", "InFan2SrvAmpStatus_0_path1_PUMP-C65", "RadFan1SrvAmpStatus_0_path1_PUMP-C65", "RadFan2SrvAmpStatus_0_path1_PUMP-C65", "InFan1SrvComPwStatus_0_path1_PUMP-C65", "InFan2SrvComPwStatus_0_path1_PUMP-C65", "RadFan1SrvComPwStatus_0_path1_PUMP-C65", "RadFan2SrvComPwStatus_0_path1_PUMP-C65", "CncBatLow_1_path1_PUMP-C65", "ApcBatZero_1_path1_PUMP-C65", "ApcBatLow_1_path1_PUMP-C65", "IndBatZero_1_path1_PUMP-C65", "SpdBatZero_1_path1_PUMP-C65", "SSpdBatZero_1_path1_PUMP-C65", "PulseCoderTemp_1_path1_PUMP-C65", "ServoLeakResistData_1_path1_PUMP-C65", "InFan1SrvAmpStatus_1_path1_PUMP-C65", "InFan2SrvAmpStatus_1_path1_PUMP-C65", "RadFan1SrvAmpStatus_1_path1_PUMP-C65", "RadFan2SrvAmpStatus_1_path1_PUMP-C65", "InFan1SrvComPwStatus_1_path1_PUMP-C65", "InFan2SrvComPwStatus_1_path1_PUMP-C65", "RadFan1SrvComPwStatus_1_path1_PUMP-C65", "RadFan2SrvComPwStatus_1_path1_PUMP-C65", "CncBatLow_2_path1_PUMP-C65", "ApcBatZero_2_path1_PUMP-C65", "ApcBatLow_2_path1_PUMP-C65", "IndBatZero_2_path1_PUMP-C65", "SpdBatZero_2_path1_PUMP-C65", "SSpdBatZero_2_path1_PUMP-C65", "ServoTemp_2_path1_PUMP-C65", "PulseCoderTemp_2_path1_PUMP-C65", "ServoLeakResistData_2_path1_PUMP-C65", "InFan1SrvAmpStatus_2_path1_PUMP-C65", "InFan2SrvAmpStatus_2_path1_PUMP-C65", "RadFan1SrvAmpStatus_2_path1_PUMP-C65", "RadFan2SrvAmpStatus_2_path1_PUMP-C65", "InFan1SrvComPwStatus_2_path1_PUMP-C65", "InFan2SrvComPwStatus_2_path1_PUMP-C65", "RadFan1SrvComPwStatus_2_path1_PUMP-C65", "RadFan2SrvComPwStatus_2_path1_PUMP-C65", "SpindleTemp_0_path1_PUMP-C65", "SpindleLeakResistData_0_path1_PUMP-C65", "SpindleTotalRev1_0_path1_PUMP-C65", "SpindleTotalRev2_0_path1_PUMP-C65", "InFan1SpdlComPwStatus_0_path1_PUMP-C65", "InFan2SpdlComPwStatus_0_path1_PUMP-C65", "RadFan1SpdlComPwStatus_0_path1_PUMP-C65", "RadFan2SpdlComPwStatus_0_path1_PUMP-C65", "InFan1SpindleAmpStatus_0_path1_PUMP-C65", "InFan2SpindleAmpStatus_0_path1_PUMP-C65", "RadFan1SpindleAmpStatus_0_path1_PUMP-C65", "RadFan2SpindleAmpStatus_0_path1_PUMP-C65", "CncFan1Status_path1_PUMP-C58", "CncFan2Status_path1_PUMP-C58", "CncFan3Status_path1_PUMP-C58", "CncFan4Status_path1_PUMP-C58", "CncBatLow_0_path1_PUMP-C58", "ApcBatZero_0_path1_PUMP-C58", "ApcBatLow_0_path1_PUMP-C58", "IndBatZero_0_path1_PUMP-C58", "SpdBatZero_0_path1_PUMP-C58", "SSpdBatZero_0_path1_PUMP-C58", "ServoTemp_0_path1_PUMP-C58", "PulseCoderTemp_0_path1_PUMP-C58", "ServoLeakResistData_0_path1_PUMP-C58", "InFan1SrvAmpStatus_0_path1_PUMP-C58", "InFan2SrvAmpStatus_0_path1_PUMP-C58", "RadFan1SrvAmpStatus_0_path1_PUMP-C58", "RadFan2SrvAmpStatus_0_path1_PUMP-C58", "InFan1SrvComPwStatus_0_path1_PUMP-C58", "InFan2SrvComPwStatus_0_path1_PUMP-C58", "RadFan1SrvComPwStatus_0_path1_PUMP-C58", "RadFan2SrvComPwStatus_0_path1_PUMP-C58", "CncBatLow_1_path1_PUMP-C58", "ApcBatZero_1_path1_PUMP-C58", "ApcBatLow_1_path1_PUMP-C58", "IndBatZero_1_path1_PUMP-C58", "SpdBatZero_1_path1_PUMP-C58", "SSpdBatZero_1_path1_PUMP-C58", "ServoTemp_1_path1_PUMP-C58", "PulseCoderTemp_1_path1_PUMP-C58", "ServoLeakResistData_1_path1_PUMP-C58", "InFan1SrvAmpStatus_1_path1_PUMP-C58", "InFan2SrvAmpStatus_1_path1_PUMP-C58", "RadFan1SrvAmpStatus_1_path1_PUMP-C58", "RadFan2SrvAmpStatus_1_path1_PUMP-C58", "InFan1SrvComPwStatus_1_path1_PUMP-C58", "InFan2SrvComPwStatus_1_path1_PUMP-C58", "RadFan1SrvComPwStatus_1_path1_PUMP-C58", "RadFan2SrvComPwStatus_1_path1_PUMP-C58", "SpindleLeakResistData_0_path1_PUMP-C58", "SpindleTotalRev1_0_path1_PUMP-C58", "SpindleTotalRev2_0_path1_PUMP-C58", "InFan1SpdlComPwStatus_0_path1_PUMP-C58", "InFan2SpdlComPwStatus_0_path1_PUMP-C58", "RadFan1SpdlComPwStatus_0_path1_PUMP-C58", "RadFan2SpdlComPwStatus_0_path1_PUMP-C58", "InFan1SpindleAmpStatus_0_path1_PUMP-C58", "InFan2SpindleAmpStatus_0_path1_PUMP-C58", "RadFan1SpindleAmpStatus_0_path1_PUMP-C58", "RadFan2SpindleAmpStatus_0_path1_PUMP-C58", "CncFan1Status_path1_PUMP-C57", "CncFan2Status_path1_PUMP-C57", "CncFan3Status_path1_PUMP-C57", "CncFan4Status_path1_PUMP-C57", "CncBatLow_0_path1_PUMP-C57", "ApcBatZero_0_path1_PUMP-C57", "ApcBatLow_0_path1_PUMP-C57", "IndBatZero_0_path1_PUMP-C57", "SpdBatZero_0_path1_PUMP-C57", "SSpdBatZero_0_path1_PUMP-C57", "ServoTemp_0_path1_PUMP-C57", "PulseCoderTemp_0_path1_PUMP-C57", "ServoLeakResistData_0_path1_PUMP-C57", "InFan1SrvAmpStatus_0_path1_PUMP-C57", "InFan2SrvAmpStatus_0_path1_PUMP-C57", "RadFan1SrvAmpStatus_0_path1_PUMP-C57", "RadFan2SrvAmpStatus_0_path1_PUMP-C57", "InFan1SrvComPwStatus_0_path1_PUMP-C57", "InFan2SrvComPwStatus_0_path1_PUMP-C57", "RadFan1SrvComPwStatus_0_path1_PUMP-C57", "RadFan2SrvComPwStatus_0_path1_PUMP-C57", "CncBatLow_1_path1_PUMP-C57", "ApcBatZero_1_path1_PUMP-C57", "ApcBatLow_1_path1_PUMP-C57", "IndBatZero_1_path1_PUMP-C57", "SpdBatZero_1_path1_PUMP-C57", "SSpdBatZero_1_path1_PUMP-C57", "ServoTemp_1_path1_PUMP-C57", "PulseCoderTemp_1_path1_PUMP-C57", "ServoLeakResistData_1_path1_PUMP-C57", "InFan1SrvAmpStatus_1_path1_PUMP-C57", "InFan2SrvAmpStatus_1_path1_PUMP-C57", "RadFan1SrvAmpStatus_1_path1_PUMP-C57", "RadFan2SrvAmpStatus_1_path1_PUMP-C57", "InFan1SrvComPwStatus_1_path1_PUMP-C57", "InFan2SrvComPwStatus_1_path1_PUMP-C57", "RadFan1SrvComPwStatus_1_path1_PUMP-C57", "RadFan2SrvComPwStatus_1_path1_PUMP-C57", "CncBatLow_2_path1_PUMP-C57", "ApcBatZero_2_path1_PUMP-C57", "ApcBatLow_2_path1_PUMP-C57", "IndBatZero_2_path1_PUMP-C57", "SpdBatZero_2_path1_PUMP-C57", "SSpdBatZero_2_path1_PUMP-C57", "ServoTemp_2_path1_PUMP-C57", "PulseCoderTemp_2_path1_PUMP-C57", "ServoLeakResistData_2_path1_PUMP-C57", "InFan1SrvAmpStatus_2_path1_PUMP-C57", "InFan2SrvAmpStatus_2_path1_PUMP-C57", "RadFan1SrvAmpStatus_2_path1_PUMP-C57", "RadFan2SrvAmpStatus_2_path1_PUMP-C57", "InFan1SrvComPwStatus_2_path1_PUMP-C57", "InFan2SrvComPwStatus_2_path1_PUMP-C57", "RadFan1SrvComPwStatus_2_path1_PUMP-C57", "RadFan2SrvComPwStatus_2_path1_PUMP-C57", "SpindleLeakResistData_0_path1_PUMP-C57", "SpindleTotalRev1_0_path1_PUMP-C57", "SpindleTotalRev2_0_path1_PUMP-C57", "InFan1SpdlComPwStatus_0_path1_PUMP-C57", "InFan2SpdlComPwStatus_0_path1_PUMP-C57", "RadFan1SpdlComPwStatus_0_path1_PUMP-C57", "RadFan2SpdlComPwStatus_0_path1_PUMP-C57", "InFan1SpindleAmpStatus_0_path1_PUMP-C57", "InFan2SpindleAmpStatus_0_path1_PUMP-C57", "RadFan1SpindleAmpStatus_0_path1_PUMP-C57", "RadFan2SpindleAmpStatus_0_path1_PUMP-C57", "CncFan1Status_path1_PUMP-C86", "CncFan2Status_path1_PUMP-C86", "CncFan3Status_path1_PUMP-C86", "CncFan4Status_path1_PUMP-C86", "CncBatLow_0_path1_PUMP-C86", "ApcBatZero_0_path1_PUMP-C86", "ApcBatLow_0_path1_PUMP-C86", "IndBatZero_0_path1_PUMP-C86", "SpdBatZero_0_path1_PUMP-C86", "SSpdBatZero_0_path1_PUMP-C86", "ServoTemp_0_path1_PUMP-C86", "PulseCoderTemp_0_path1_PUMP-C86", "ServoLeakResistData_0_path1_PUMP-C86", "InFan1SrvAmpStatus_0_path1_PUMP-C86", "InFan2SrvAmpStatus_0_path1_PUMP-C86", "RadFan1SrvAmpStatus_0_path1_PUMP-C86", "RadFan2SrvAmpStatus_0_path1_PUMP-C86", "InFan1SrvComPwStatus_0_path1_PUMP-C86", "InFan2SrvComPwStatus_0_path1_PUMP-C86", "RadFan1SrvComPwStatus_0_path1_PUMP-C86", "RadFan2SrvComPwStatus_0_path1_PUMP-C86", "CncBatLow_1_path1_PUMP-C86", "ApcBatZero_1_path1_PUMP-C86", "ApcBatLow_1_path1_PUMP-C86", "IndBatZero_1_path1_PUMP-C86", "SpdBatZero_1_path1_PUMP-C86", "SSpdBatZero_1_path1_PUMP-C86", "ServoTemp_1_path1_PUMP-C86", "PulseCoderTemp_1_path1_PUMP-C86", "ServoLeakResistData_1_path1_PUMP-C86", "InFan1SrvAmpStatus_1_path1_PUMP-C86", "InFan2SrvAmpStatus_1_path1_PUMP-C86", "RadFan1SrvAmpStatus_1_path1_PUMP-C86", "RadFan2SrvAmpStatus_1_path1_PUMP-C86", "InFan1SrvComPwStatus_1_path1_PUMP-C86", "InFan2SrvComPwStatus_1_path1_PUMP-C86", "RadFan1SrvComPwStatus_1_path1_PUMP-C86", "RadFan2SrvComPwStatus_1_path1_PUMP-C86", "CncBatLow_2_path1_PUMP-C86", "ApcBatZero_2_path1_PUMP-C86", "ApcBatLow_2_path1_PUMP-C86", "IndBatZero_2_path1_PUMP-C86", "SpdBatZero_2_path1_PUMP-C86", "SSpdBatZero_2_path1_PUMP-C86", "PulseCoderTemp_2_path1_PUMP-C86", "ServoLeakResistData_2_path1_PUMP-C86", "InFan1SrvAmpStatus_2_path1_PUMP-C86", "InFan2SrvAmpStatus_2_path1_PUMP-C86", "RadFan1SrvAmpStatus_2_path1_PUMP-C86", "RadFan2SrvAmpStatus_2_path1_PUMP-C86", "InFan1SrvComPwStatus_2_path1_PUMP-C86", "InFan2SrvComPwStatus_2_path1_PUMP-C86", "RadFan1SrvComPwStatus_2_path1_PUMP-C86", "RadFan2SrvComPwStatus_2_path1_PUMP-C86", "CncBatLow_3_path1_PUMP-C86", "ApcBatZero_3_path1_PUMP-C86", "ApcBatLow_3_path1_PUMP-C86", "IndBatZero_3_path1_PUMP-C86", "SpdBatZero_3_path1_PUMP-C86", "SSpdBatZero_3_path1_PUMP-C86", "ServoTemp_3_path1_PUMP-C86", "PulseCoderTemp_3_path1_PUMP-C86", "ServoLeakResistData_3_path1_PUMP-C86", "InFan1SrvAmpStatus_3_path1_PUMP-C86", "InFan2SrvAmpStatus_3_path1_PUMP-C86", "RadFan1SrvAmpStatus_3_path1_PUMP-C86", "RadFan2SrvAmpStatus_3_path1_PUMP-C86", "InFan1SrvComPwStatus_3_path1_PUMP-C86", "InFan2SrvComPwStatus_3_path1_PUMP-C86", "RadFan1SrvComPwStatus_3_path1_PUMP-C86", "RadFan2SrvComPwStatus_3_path1_PUMP-C86", "CncBatLow_4_path1_PUMP-C86", "ApcBatZero_4_path1_PUMP-C86", "ApcBatLow_4_path1_PUMP-C86", "IndBatZero_4_path1_PUMP-C86", "SpdBatZero_4_path1_PUMP-C86", "SSpdBatZero_4_path1_PUMP-C86", "ServoTemp_4_path1_PUMP-C86", "PulseCoderTemp_4_path1_PUMP-C86", "ServoLeakResistData_4_path1_PUMP-C86", "InFan1SrvAmpStatus_4_path1_PUMP-C86", "InFan2SrvAmpStatus_4_path1_PUMP-C86", "RadFan1SrvAmpStatus_4_path1_PUMP-C86", "RadFan2SrvAmpStatus_4_path1_PUMP-C86", "InFan1SrvComPwStatus_4_path1_PUMP-C86", "InFan2SrvComPwStatus_4_path1_PUMP-C86", "RadFan1SrvComPwStatus_4_path1_PUMP-C86", "RadFan2SrvComPwStatus_4_path1_PUMP-C86", "SpindleLeakResistData_0_path1_PUMP-C86", "SpindleTotalRev1_0_path1_PUMP-C86", "SpindleTotalRev2_0_path1_PUMP-C86", "InFan1SpdlComPwStatus_0_path1_PUMP-C86", "InFan2SpdlComPwStatus_0_path1_PUMP-C86", "RadFan1SpdlComPwStatus_0_path1_PUMP-C86", "RadFan2SpdlComPwStatus_0_path1_PUMP-C86", "InFan1SpindleAmpStatus_0_path1_PUMP-C86", "InFan2SpindleAmpStatus_0_path1_PUMP-C86", "RadFan1SpindleAmpStatus_0_path1_PUMP-C86", "RadFan2SpindleAmpStatus_0_path1_PUMP-C86", "CutTime_path1_VALVE-C63", "PartsNum_path1_VALVE-C63", "RunTime_path1_VALVE-C63", "CncState_path1_VALVE-C63", "CncState_path1_VALVE-C85", "ServoTemp_2_path1_PUMP-C86", "SpindleTemp_0_path1_PUMP-C86", "PartsNum_path1_PUMP-C58", "Mode_path1_PUMP-C57", "SigSTL_path1_PUMP-C57", "CncState_path1_PUMP-C57", "Mode_path1_VALVE-C63", "CutTime_path1_VALVE-C46", "Mode_path1_PUMP-C58", "SigSTL_path1_PUMP-C58", "CncState_path1_PUMP-C58", "RunTime_path1_VALVE-C46", "CncState_path1_VALVE-C46", "SpindleLoad_0_path1_VALVE-C46", "PartsNum_path1_PUMP-C65", "SpindleLoad_0_path1_VALVE-C52", "SigCUT_path1_PUMP-C57", "SpindleLoad_0_path1_PUMP-C57", "SpindleLoad_0_path1_VALVE-C63", "SigSTL_path1_PUMP-C65", "CncState_path1_PUMP-C65", "ActProgram_path1_PUMP-C65", "ActComment_path1_PUMP-C65", "SigCUT_path1_PUMP-C58", "ServoLoad_0_path1_VALVE-C46", "ServoLoad_1_path1_VALVE-C52", "ServoTemp_1_path1_PUMP-C65", "SpindleTemp_0_path1_PUMP-C58", "SpindleTemp_0_path1_PUMP-C57", "ServoLoad_0_path1_VALVE-C63", "ServoLoad_0_path1_PUMP-C65", "ServoLoad_1_path1_ELECTRICAL-C34", "ServoLoad_0_path1_VALVE-C85", "ServoLoad_0_path1_ELECTRICAL-C34", "SpindleLoad_0_path1_ELECTRICAL-C34", "ServoLoad_4_path1_PUMP-C86", "SpindleLoad_0_path1_VALVE-C85", "ServoLoad_1_path1_VALVE-C63", "ServoLoad_0_path1_PUMP-C57", "ServoLoad_0_path1_PUMP-C86", "Mode_path1_VALVE-C46", "ServoLoad_1_path1_VALVE-C85", "CutTime_path1_PUMP-C65", "SigCUT_path1_PUMP-C65", "ServoLoad_1_path1_PUMP-C65", "ServoLoad_0_path1_PUMP-C58", "ServoLoad_1_path1_PUMP-C57", "ServoLoad_2_path1_PUMP-C86", "ServoLoad_1_path1_VALVE-C46", "RunTime_path1_VALVE-C52", "CutTime_path1_VALVE-C52", "ServoLoad_0_path1_VALVE-C52", "RunTime_path1_VALVE-C85", "CutTime_path1_VALVE-C85", "RunTime_path1_ELECTRICAL-C34", "CutTime_path1_ELECTRICAL-C34", "ServoLoad_2_path1_ELECTRICAL-C34", "RunTime_path1_PUMP-C65", "ServoLoad_2_path1_PUMP-C65", "SpindleLoad_0_path1_PUMP-C65", "RunTime_path1_PUMP-C58", "CutTime_path1_PUMP-C58", "ServoLoad_1_path1_PUMP-C58", "SpindleLoad_0_path1_PUMP-C58", "RunTime_path1_PUMP-C57", "CutTime_path1_PUMP-C57", "ServoLoad_1_path1_PUMP-C86"]

#mac_list = L0Setting.pluck(:L0Name, :L0EnName)
#     machines1 = mac_list.map{|list| list[0]}
#     machines = mac_list.map{|i| [i[0], i[1].split('-').first]}
#     duration = (end_time - start_time).to_i


#     key_list = []
#     machines.each do |jj|
#       key_list << "MacroVar_604_path1_#{jj[0]}"
#       key_list << "MacroVar_705_path1_#{jj[0]}"
#     end
byebug

data = L1SignalPool.where(:enddate.gte => start_time, :updatedate.lte => end_time, :signalname.in=> als)
add = data.pluck(:signalname).uniq
add.each do |ad|
if ad.split("_").first == "MacroVar"
puts "NO"
else
puts "YES"
end
end
byebug
#dd2 = data.where( :signalname.ne=> ["MacroVar_601_path1_Machine1", "MacroVar_604_path1_Machine1", "MacroVar_605_path1_Machine1", "MacroVar_615_path1_Machine1", "MacroVar_750_path1_Machine1", "MacroVar_751_path1_Machine1", "MacroVar_752_path1_Machine1", "MacroVar_753_path1_Machine1", "MacroVar_754_path1_Machine1", "MacroVar_755_path1_Machine1", "MacroVar_756_path1_Machine1", "MacroVar_757_path1_Machine1"])
#byebug
data.each do |dd|
 if dd.signalname.split("_").first == "MacroVar"
  puts "ok"
 else
   puts "Oh noo"
   dd.delete
 end
end

end
end
