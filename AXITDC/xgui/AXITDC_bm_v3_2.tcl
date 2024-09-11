# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "NTaps" -parent ${Page_0}
  ipgui::add_param $IPINST -name "COARSE_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.COARSE_WIDTH { PARAM_VALUE.COARSE_WIDTH } {
	# Procedure called to update COARSE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COARSE_WIDTH { PARAM_VALUE.COARSE_WIDTH } {
	# Procedure called to validate COARSE_WIDTH
	return true
}

proc update_PARAM_VALUE.NTaps { PARAM_VALUE.NTaps } {
	# Procedure called to update NTaps when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NTaps { PARAM_VALUE.NTaps } {
	# Procedure called to validate NTaps
	return true
}


proc update_MODELPARAM_VALUE.NTaps { MODELPARAM_VALUE.NTaps PARAM_VALUE.NTaps } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NTaps}] ${MODELPARAM_VALUE.NTaps}
}

proc update_MODELPARAM_VALUE.COARSE_WIDTH { MODELPARAM_VALUE.COARSE_WIDTH PARAM_VALUE.COARSE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COARSE_WIDTH}] ${MODELPARAM_VALUE.COARSE_WIDTH}
}

