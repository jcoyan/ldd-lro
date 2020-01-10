<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:lro  Version:1.0.0.0 - Tue Nov 12 16:57:52 CST 2019 -->
  <!-- Generated from the PDS4 Information Model Version 1.12.0.0 - System Build 9b -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/mission/lro/v1" prefix="lro"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/lro:LRO_Parameters">
      <sch:assert test="if ( 
                            (lro:spacecraft_clock_count_partition) 
                            or 
                            ( (contains(lro:spacecraft_clock_start_count, '/') ) 
                               and
                              (contains(lro:spacecraft_clock_stop_count,'/') ) 
                            ) 
                            or 
                            ( (not (lro:spacecraft_clock_count_partition)) 
                               and (not (lro:spacecraft_clock_start_count)) 
                               and (not (lro:spacecraft_clock_stop_count)) 
                            ) 
                           ) then true() else false() 
            ">
        
                lro:error:sclk_rule_0: If lro:spacecraft_clock_start_count and lro:spacecraft_clock_stop_count are
                present, they must begin with a partition number followed by a forward slash, OR the partition number must be given by
                lro:spacecraft_clock_count_partition. 
            </sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lro:LROC_Parameters/lro:begin_temperature_fpa">
      <sch:assert test="@unit = ('K', 'degC')">
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lro:LROC_Parameters/lro:begin_temperature_scs">
      <sch:assert test="@unit = ('K', 'degC')">
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lro:LROC_Parameters/lro:end_temperature_fpa">
      <sch:assert test="@unit = ('K', 'degC')">
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lro:LROC_Parameters/lro:end_temperature_scs">
      <sch:assert test="@unit = ('K', 'degC')">
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lro:LROC_Parameters/lro:middle_temperature_fpa">
      <sch:assert test="@unit = ('K', 'degC')">
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lro:LROC_Parameters/lro:middle_temperature_scs">
      <sch:assert test="@unit = ('K', 'degC')">
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lro:LRO_Parameters/lro:mission_phase_name">
      <sch:assert test=". = ('COMMISSIONING', 'CRUISE', 'EXTENDED SCIENCE MISSION', 'LAUNCH', 'LUNAR ORBIT ACQUISITION', 'NOMINAL MISSION', 'SCIENCE MISSION', 'SECOND EXTENDED SCIENCE MISSION', 'THIRD EXTENDED SCIENCE MISSION')">
        The attribute lro:mission_phase_name must be equal to one of the following values 'COMMISSIONING', 'CRUISE', 'EXTENDED SCIENCE MISSION', 'LAUNCH', 'LUNAR ORBIT ACQUISITION', 'NOMINAL MISSION', 'SCIENCE MISSION', 'SECOND EXTENDED SCIENCE MISSION', 'THIRD EXTENDED SCIENCE MISSION'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lro:LRO_Parameters/lro:product_type">
      <sch:assert test=". = ('CDR', 'EDR', 'RDR')">
        The attribute lro:product_type must be equal to one of the following values 'CDR', 'EDR', 'RDR'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
