<?xml version="1.0"?>

<sie>

  <class name="Control">
    <member
      name="kp_"
      type="double"
      io_attributes="15"
      units="N/m"
      description="Proportional gain">
    </member>
    <member
      name="kd_"
      type="double"
      io_attributes="15"
      units="N*s/m"
      description="Derivative gain">
    </member>
    <member
      name="max_force_"
      type="double"
      io_attributes="15"
      units="N"
      description="Saturation limit per axis">
    </member>
    <member
      name="saturated_"
      type="bool"
      io_attributes="15"
      units="--"
      description="Saturated or not">
      <dimension>3</dimension>
    </member>
  </class>

  <class name="HoldPoint">
    <member
      name="pos_target"
      type="double"
      io_attributes="15"
      units="m"
      description="Target relative position">
      <dimension>3</dimension>
    </member>
    <member
      name="vel_target"
      type="double"
      io_attributes="15"
      units="m/s"
      description="Target relative velocity">
      <dimension>3</dimension>
    </member>
    <member
      name="hold_duration"
      type="double"
      io_attributes="15"
      units="s"
      description="Dwell time before check">
    </member>
  </class>

  <class name="CorridorParams">
    <member
      name="half_angle_rad"
      type="double"
      io_attributes="15"
      units="rad"
      description="Cone half-angle about approach axis">
    </member>
    <member
      name="ellipsoid_semi_axes"
      type="double"
      io_attributes="15"
      units="m"
      description="Ellipsoid semi-axes">
      <dimension>3</dimension>
    </member>
    <member
      name="use_ellipsoid"
      type="bool"
      io_attributes="15"
      units="--"
      description="Ellipsoid or not">
    </member>
  </class>

  <enumeration name="GuidanceState">
    <pair label ="GuidanceState::APPROACH" value="0"/>
    <pair label ="GuidanceState::HOLD" value="1"/>
    <pair label ="GuidanceState::GO_NOGO_CHECK" value="2"/>
    <pair label ="GuidanceState::ABORT" value="3"/>
    <pair label ="GuidanceState::COMPLETE" value="4"/>
  </enumeration>

  <class name="Guidance">
    <member
      name="hold_points_"
      type="HoldPoint"
      io_attributes="15"
      units="--"
      description="Pointer to hold points">
      <dimension>0</dimension>
    </member>
    <member
      name="n_hold_points_"
      type="unsigned long"
      io_attributes="15"
      units="--"
      description="Number of points">
    </member>
    <member
      name="state_"
      type="GuidanceState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="current_leg_"
      type="unsigned long"
      io_attributes="15"
      units="--"
      description="Index of current hold point">
    </member>
    <member
      name="corridor_"
      type="CorridorParams"
      io_attributes="15"
      units="--"
      description="Corridor config">
    </member>
    <member
      name="abort_retreat_point_"
      type="double"
      io_attributes="15"
      units="m"
      description="Where to abort to">
      <dimension>3</dimension>
    </member>
    <member
      name="setpoint_pos_"
      type="double"
      io_attributes="15"
      units="m"
      description="Current setpoint position">
      <dimension>3</dimension>
    </member>
    <member
      name="setpoint_vel_"
      type="double"
      io_attributes="15"
      units="m/s"
      description="Current setpoint velocity">
      <dimension>3</dimension>
    </member>
    <member
      name="hold_entry_time_"
      type="double"
      io_attributes="15"
      units="s"
      description="Sim time entering HOLD">
    </member>
    <member
      name="last_corridor_violation_"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pos_tolerance_"
      type="double"
      io_attributes="15"
      units="m"
      description="Setpoint position tolerance">
    </member>
    <member
      name="vel_tolerance_"
      type="double"
      io_attributes="15"
      units="m/s"
      description="Setpoint velocity tolerance">
    </member>
  </class>

  <class name="Navigation">
    <member
      name="pos_noise_std_"
      type="double"
      io_attributes="15"
      units="m"
      description="Stdev of position noise per axis">
      <dimension>3</dimension>
    </member>
    <member
      name="vel_noise_std_"
      type="double"
      io_attributes="15"
      units="m/s"
      description="Stdev of velocity noise per axis">
      <dimension>3</dimension>
    </member>
    <member
      name="rng_seed_"
      type="unsigned long"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="jeod__RefFrameMessages">
    <member
      name="attach_info"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="duplicate_entry"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="inconsistent_setup"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="internal_error"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="invalid_attach"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="invalid_detach"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="invalid_enum"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="invalid_item"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="invalid_name"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="invalid_node"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="null_pointer"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="subscription_error"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="removal_failed"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__JeodCheckpointable">
  </class>

  <class name="jeod__JeodMemoryInterface">
  </class>

  <class name="jeod__SectionedInputBuffer">
  </class>

  <class name="jeod__SectionedInputStream">
  </class>

  <class name="jeod__CheckPointInputManager">
    <member
      name="filename"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="section_start"
      type="std__string"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="section_end"
      type="std__string"
      io_attributes="3"
      units="1">
    </member>
  </class>

  <class name="jeod__SectionedOutputBuffer">
  </class>

  <class name="jeod__SectionedOutputStream">
    <member
      name="section_start"
      type="std__string"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="section_end"
      type="std__string"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="tag"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="jeod__CheckPointOutputManager">
    <member
      name="filename"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="section_start"
      type="std__string"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="section_end"
      type="std__string"
      io_attributes="3"
      units="1">
    </member>
  </class>

  <class name="jeod__JeodIntegratorInterface">
  </class>

  <class name="jeod__JeodSimulationInterfaceInit">
    <member
      name="message_suppression_level"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="message_suppress_id"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="message_suppress_location"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="memory_debug_level"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <enumeration name="jeod__JeodSimulationInterface__Mode">
    <pair label ="jeod::JeodSimulationInterface::Construction" value="0"/>
    <pair label ="jeod::JeodSimulationInterface::PreCheckpoint" value="1"/>
    <pair label ="jeod::JeodSimulationInterface::Checkpoint" value="2"/>
    <pair label ="jeod::JeodSimulationInterface::PostCheckpoint" value="3"/>
    <pair label ="jeod::JeodSimulationInterface::Restart" value="4"/>
    <pair label ="jeod::JeodSimulationInterface::Restore" value="5"/>
    <pair label ="jeod::JeodSimulationInterface::Initialization" value="6"/>
    <pair label ="jeod::JeodSimulationInterface::Operational" value="7"/>
    <pair label ="jeod::JeodSimulationInterface::Shutdown" value="8"/>
    <pair label ="jeod::JeodSimulationInterface::Dead" value="9"/>
    <pair label ="jeod::JeodSimulationInterface::NumModes" value="10"/>
  </enumeration>

  <class name="jeod__JeodSimulationInterface">
    <member
      name="sim_interface"
      type="jeod__JeodSimulationInterface"
      io_attributes="5"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="mode"
      type="jeod__JeodSimulationInterface__Mode"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="saved_mode"
      type="jeod__JeodSimulationInterface__Mode"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <enumeration name="jeod__JeodMemoryItem__Flags">
    <pair label ="jeod::JeodMemoryItem::PlacementNew" value="1"/>
    <pair label ="jeod::JeodMemoryItem::IsArray" value="2"/>
    <pair label ="jeod::JeodMemoryItem::IsGuarded" value="4"/>
    <pair label ="jeod::JeodMemoryItem::IsStructured" value="8"/>
    <pair label ="jeod::JeodMemoryItem::IsRegistered" value="16"/>
    <pair label ="jeod::JeodMemoryItem::CheckPointed" value="32"/>
  </enumeration>

  <class name="jeod__JeodMemoryItem">
    <member
      name="nelems"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="alloc_info_index"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="unique_id"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="descriptor_index_hi"
      type="unsigned short"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="descriptor_index_lo"
      type="unsigned char"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="flags"
      type="unsigned char"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__JeodMemoryReflectiveTable">
  </class>

  <class name="jeod__MemoryMessages">
    <member
      name="singleton_error"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="out_of_memory"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="lock_error"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="null_pointer"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="suspect_pointer"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="invalid_size"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="corrupted_memory"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="registration_error"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="internal_error"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="debug"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__MessageHandler">
    <member
      name="handler"
      type="jeod__MessageHandler"
      io_attributes="5"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="suppression_level"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="suppress_id"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="suppress_location"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mode"
      type="jeod__JeodSimulationInterface__Mode"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__JeodMemoryTypeDescriptor">
  </class>

  <class name="jeod__JeodMemoryTypePreDescriptor">
  </class>

  <enumeration name="jeod__JeodMemoryManager__DebugLevel">
    <pair label ="jeod::JeodMemoryManager::Debug_off" value="0"/>
    <pair label ="jeod::JeodMemoryManager::Summary_only" value="1"/>
    <pair label ="jeod::JeodMemoryManager::Error_details" value="2"/>
    <pair label ="jeod::JeodMemoryManager::Full_details" value="3"/>
  </enumeration>

  <enumeration name="jeod__JeodMemoryManager__NameType">
    <pair label ="jeod::JeodMemoryManager::Typeid_type_name" value="0"/>
    <pair label ="jeod::JeodMemoryManager::Demangled_type_name" value="1"/>
  </enumeration>

  <class name="jeod__JeodMemoryManager__TypeEntry">
  </class>

  <class name="jeod__JeodMemoryManager">
    <member
      name="Master"
      type="jeod__JeodMemoryManager"
      io_attributes="5"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="sim_interface"
      type="jeod__JeodMemoryInterface"
      io_attributes="3"
      units="--">
    </member>
    <member
      name="debug_level"
      type="jeod__JeodMemoryManager__DebugLevel"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cur_data_size"
      type="unsigned long"
      io_attributes="5"
      units="--">
    </member>
    <member
      name="max_data_size"
      type="unsigned long"
      io_attributes="5"
      units="--">
    </member>
    <member
      name="max_table_size"
      type="unsigned int"
      io_attributes="5"
      units="--">
    </member>
    <member
      name="allocation_number"
      type="unsigned int"
      io_attributes="5"
      units="--">
    </member>
    <member
      name="mode"
      type="jeod__JeodSimulationInterface__Mode"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="guard_enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__RefFrameLinks">
    <member
      name="container_"
      type="jeod__RefFrame"
      io_attributes="3"
      units="--">
    </member>
    <member
      name="parent_"
      type="jeod__RefFrameLinks"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="children_"
      type="typename std__vector&lt;class jeod__RefFrameLinks *>"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="path_to_node_"
      type="typename std__vector&lt;class jeod__RefFrameLinks *>"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__Quaternion">
    <member
      name="scalar"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="vector"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>3</dimension>
    </member>
  </class>

  <class name="jeod__Vector3">
  </class>

  <class name="jeod__Numerical">
  </class>

  <class name="jeod__RefFrameTrans">
    <member
      name="position"
      type="double"
      io_attributes="15"
      units="m">
      <dimension>3</dimension>
    </member>
    <member
      name="velocity"
      type="double"
      io_attributes="15"
      units="m/s">
      <dimension>3</dimension>
    </member>
  </class>

  <class name="jeod__RefFrameRot">
    <member
      name="Q_parent_this"
      type="jeod__Quaternion"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="T_parent_this"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
    <member
      name="ang_vel_this"
      type="double"
      io_attributes="15"
      units="rad/s">
      <dimension>3</dimension>
    </member>
    <member
      name="ang_vel_mag"
      type="double"
      io_attributes="15"
      units="rad/s">
    </member>
    <member
      name="ang_vel_unit"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>3</dimension>
    </member>
  </class>

  <class name="jeod__RefFrameState">
    <member
      name="trans"
      type="jeod__RefFrameTrans"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rot"
      type="jeod__RefFrameRot"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__Matrix3x3">
  </class>

  <class name="jeod__ActivateInterface">
  </class>

  <class name="jeod__SubscribeInterface">
  </class>

  <enumeration name="jeod__Subscription__Mode">
    <pair label ="jeod::Subscription::Detect" value="0"/>
    <pair label ="jeod::Subscription::Subscribe" value="1"/>
    <pair label ="jeod::Subscription::Activate" value="2"/>
    <pair label ="jeod::Subscription::Freeform" value="3"/>
  </enumeration>

  <class name="jeod__Subscription">
    <member
      name="mode"
      type="jeod__Subscription__Mode"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="subscribers"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__NamedItem">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="is_frozen"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__RefFrame">
    <member
      name="mode"
      type="jeod__Subscription__Mode"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="subscribers"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="state"
      type="jeod__RefFrameState"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="owner"
      type="jeod__RefFrameOwner"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="links"
      type="jeod__RefFrameLinks"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
  </class>

  <class name="jeod__RefFrameOwner">
  </class>

  <class name="jeod__EphemerisRefFrame">
    <member
      name="mode"
      type="jeod__Subscription__Mode"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="subscribers"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="state"
      type="jeod__RefFrameState"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="owner"
      type="jeod__RefFrameOwner"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="links"
      type="jeod__RefFrameLinks"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="ephem_manager"
      type="jeod__BaseEphemeridesManager"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__GravitySource">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="inertial"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="pfix"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="mu"
      type="double"
      io_attributes="15"
      units="m3/s2">
    </member>
    <member
      name="frames"
      type="jeod__GravityIntegFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__GravityIntegFrame">
    <member
      name="ref_frame"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="is_third_body"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="pos"
      type="double"
      io_attributes="15"
      units="m">
      <dimension>3</dimension>
    </member>
    <member
      name="accel"
      type="double"
      io_attributes="15"
      units="m/s2">
      <dimension>3</dimension>
    </member>
    <member
      name="time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
  </class>

  <class name="jeod__BasePlanet">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="grav_source"
      type="jeod__GravitySource"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="inertial"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="alt_inertial"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="pfix"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="alt_pfix"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="alt_inertial_set"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="alt_pfix_transform"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
    <member
      name="alt_pfix_set"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <enumeration name="jeod__LvlhType__Type">
    <pair label ="jeod::LvlhType::Rectilinear" value="0"/>
    <pair label ="jeod::LvlhType::CircularCurvilinear" value="1"/>
    <pair label ="jeod::LvlhType::EllipticalCurvilinear" value="2"/>
  </enumeration>

  <class name="jeod__LvlhType">
    <member
      name="value"
      type="jeod__LvlhType__Type"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__DerivedState">
    <member
      name="subject"
      type="jeod__DynBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="reference_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="state_identifier"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__Force">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="force"
      type="double"
      io_attributes="15"
      units="N">
      <dimension>3</dimension>
    </member>
  </class>

  <class name="jeod__CollectForce">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="force"
      type="double"
      io_attributes="15"
      units="N">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__CInterfaceForce">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="force"
      type="double"
      io_attributes="15"
      units="N">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__Torque">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="torque"
      type="double"
      io_attributes="15"
      units="N*m">
      <dimension>3</dimension>
    </member>
  </class>

  <class name="jeod__CollectTorque">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="torque"
      type="double"
      io_attributes="15"
      units="N*m">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__CInterfaceTorque">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="torque"
      type="double"
      io_attributes="15"
      units="N*m">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__JPVCollectForce">
  </class>

  <class name="jeod__JPVCollectTorque">
  </class>

  <class name="jeod__BodyForceCollect">
    <member
      name="effector_forc"
      type="double"
      io_attributes="15"
      units="N">
      <dimension>3</dimension>
    </member>
    <member
      name="environ_forc"
      type="double"
      io_attributes="15"
      units="N">
      <dimension>3</dimension>
    </member>
    <member
      name="no_xmit_forc"
      type="double"
      io_attributes="15"
      units="N">
      <dimension>3</dimension>
    </member>
    <member
      name="extern_forc_struct"
      type="double"
      io_attributes="15"
      units="N">
      <dimension>3</dimension>
    </member>
    <member
      name="extern_forc_inrtl"
      type="double"
      io_attributes="15"
      units="N">
      <dimension>3</dimension>
    </member>
    <member
      name="effector_torq"
      type="double"
      io_attributes="15"
      units="N*m">
      <dimension>3</dimension>
    </member>
    <member
      name="environ_torq"
      type="double"
      io_attributes="15"
      units="N*m">
      <dimension>3</dimension>
    </member>
    <member
      name="no_xmit_torq"
      type="double"
      io_attributes="15"
      units="N*m">
      <dimension>3</dimension>
    </member>
    <member
      name="inertial_torq"
      type="double"
      io_attributes="15"
      units="N*m">
      <dimension>3</dimension>
    </member>
    <member
      name="extern_torq_struct"
      type="double"
      io_attributes="15"
      units="N*m">
      <dimension>3</dimension>
    </member>
    <member
      name="extern_torq_body"
      type="double"
      io_attributes="15"
      units="N*m">
      <dimension>3</dimension>
    </member>
  </class>

  <enumeration name="jeod__RefFrameItems__Items">
    <pair label ="jeod::RefFrameItems::No_Items" value="0"/>
    <pair label ="jeod::RefFrameItems::Pos" value="1"/>
    <pair label ="jeod::RefFrameItems::Vel" value="2"/>
    <pair label ="jeod::RefFrameItems::Pos_Vel" value="3"/>
    <pair label ="jeod::RefFrameItems::Att" value="4"/>
    <pair label ="jeod::RefFrameItems::Pos_Att" value="5"/>
    <pair label ="jeod::RefFrameItems::Vel_Att" value="6"/>
    <pair label ="jeod::RefFrameItems::Pos_Vel_Att" value="7"/>
    <pair label ="jeod::RefFrameItems::Rate" value="8"/>
    <pair label ="jeod::RefFrameItems::Pos_Rate" value="9"/>
    <pair label ="jeod::RefFrameItems::Vel_Rate" value="10"/>
    <pair label ="jeod::RefFrameItems::Pos_Vel_Rate" value="11"/>
    <pair label ="jeod::RefFrameItems::Att_Rate" value="12"/>
    <pair label ="jeod::RefFrameItems::Pos_Att_Rate" value="13"/>
    <pair label ="jeod::RefFrameItems::Vel_Att_Rate" value="14"/>
    <pair label ="jeod::RefFrameItems::Pos_Vel_Att_Rate" value="15"/>
  </enumeration>

  <class name="jeod__RefFrameItems">
    <member
      name="value"
      type="jeod__RefFrameItems__Items"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__BodyRefFrame">
    <member
      name="mode"
      type="jeod__Subscription__Mode"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="subscribers"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="state"
      type="jeod__RefFrameState"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="owner"
      type="jeod__RefFrameOwner"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="links"
      type="jeod__RefFrameLinks"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="initialized_items"
      type="jeod__RefFrameItems"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mass_point"
      type="jeod__MassPoint"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <enumeration name="jeod__Orientation__DataSource">
    <pair label ="jeod::Orientation::InputNone" value="-1"/>
    <pair label ="jeod::Orientation::InputMatrix" value="0"/>
    <pair label ="jeod::Orientation::InputQuaternion" value="1"/>
    <pair label ="jeod::Orientation::InputEigenRotation" value="2"/>
    <pair label ="jeod::Orientation::InputEulerRotation" value="3"/>
  </enumeration>

  <enumeration name="jeod__Orientation__EulerSequence">
    <pair label ="jeod::Orientation::NoSequence" value="-1"/>
    <pair label ="jeod::Orientation::EulerXYZ" value="0"/>
    <pair label ="jeod::Orientation::EulerXZY" value="1"/>
    <pair label ="jeod::Orientation::EulerYZX" value="2"/>
    <pair label ="jeod::Orientation::EulerYXZ" value="3"/>
    <pair label ="jeod::Orientation::EulerZXY" value="4"/>
    <pair label ="jeod::Orientation::EulerZYX" value="5"/>
    <pair label ="jeod::Orientation::EulerXYX" value="6"/>
    <pair label ="jeod::Orientation::EulerXZX" value="7"/>
    <pair label ="jeod::Orientation::EulerYZY" value="8"/>
    <pair label ="jeod::Orientation::EulerYXY" value="9"/>
    <pair label ="jeod::Orientation::EulerZXZ" value="10"/>
    <pair label ="jeod::Orientation::EulerZYZ" value="11"/>
    <pair label ="jeod::Orientation::Roll_Pitch_Yaw" value="0"/>
    <pair label ="jeod::Orientation::Roll_Yaw_Pitch" value="1"/>
    <pair label ="jeod::Orientation::Pitch_Yaw_Roll" value="2"/>
    <pair label ="jeod::Orientation::Pitch_Roll_Yaw" value="3"/>
    <pair label ="jeod::Orientation::Yaw_Roll_Pitch" value="4"/>
    <pair label ="jeod::Orientation::Yaw_Pitch_Roll" value="5"/>
    <pair label ="jeod::Orientation::RollPitchYaw" value="0"/>
    <pair label ="jeod::Orientation::RollYawPitch" value="1"/>
    <pair label ="jeod::Orientation::PitchYawRoll" value="2"/>
    <pair label ="jeod::Orientation::PitchRollYaw" value="3"/>
    <pair label ="jeod::Orientation::YawRollPitch" value="4"/>
    <pair label ="jeod::Orientation::YawPitchRoll" value="5"/>
  </enumeration>

  <class name="jeod__Orientation">
    <member
      name="gimbal_lock_threshold"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="data_source"
      type="jeod__Orientation__DataSource"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="euler_sequence"
      type="jeod__Orientation__EulerSequence"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="euler_angles"
      type="double"
      io_attributes="15"
      units="rad">
      <dimension>3</dimension>
    </member>
    <member
      name="trans"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
    <member
      name="quat"
      type="jeod__Quaternion"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="eigen_angle"
      type="double"
      io_attributes="15"
      units="rad">
    </member>
    <member
      name="eigen_axis"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>3</dimension>
    </member>
    <member
      name="have_transformation_"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="have_quaternion_"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="have_eigen_rotation_"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="have_euler_angles_"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__MassPointState">
    <member
      name="position"
      type="double"
      io_attributes="15"
      units="m">
      <dimension>3</dimension>
    </member>
    <member
      name="Q_parent_this"
      type="jeod__Quaternion"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="T_parent_this"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
  </class>

  <class name="jeod__DynBodyGenericFrameAttachment">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rigid_attach_parent"
      type="jeod__RefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="rigid_attach_state"
      type="jeod__RefFrameState"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__FrameDerivs">
    <member
      name="non_grav_accel"
      type="double"
      io_attributes="15"
      units="m/s2">
      <dimension>3</dimension>
    </member>
    <member
      name="trans_accel"
      type="double"
      io_attributes="15"
      units="m/s2">
      <dimension>3</dimension>
    </member>
    <member
      name="Qdot_parent_this"
      type="jeod__Quaternion"
      io_attributes="15"
      units="1/s">
    </member>
    <member
      name="rot_accel"
      type="double"
      io_attributes="15"
      units="rad/s2">
      <dimension>3</dimension>
    </member>
  </class>

  <class name="jeod__MassBodyMessages">
    <member
      name="attach_info"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="invalid_attach"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="invalid_detach"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="invalid_node"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="invalid_name"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="invalid_enum"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="io_error"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="internal_error"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__MassBodyLinks">
    <member
      name="container_"
      type="jeod__MassBody"
      io_attributes="3"
      units="--">
    </member>
    <member
      name="parent_"
      type="jeod__MassBodyLinks"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="children_"
      type="typename std__vector&lt;class jeod__MassBodyLinks *>"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="path_to_node_"
      type="typename std__vector&lt;class jeod__MassBodyLinks *>"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__MassPointLinks">
    <member
      name="container_"
      type="jeod__MassPoint"
      io_attributes="3"
      units="--">
    </member>
    <member
      name="parent_"
      type="jeod__MassPointLinks"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="children_"
      type="typename std__vector&lt;class jeod__MassPointLinks *>"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="path_to_node_"
      type="typename std__vector&lt;class jeod__MassPointLinks *>"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__MassPoint">
    <member
      name="position"
      type="double"
      io_attributes="15"
      units="m">
      <dimension>3</dimension>
    </member>
    <member
      name="Q_parent_this"
      type="jeod__Quaternion"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="T_parent_this"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
    <member
      name="name"
      type="jeod__NamedItem"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="links"
      type="jeod__MassPointLinks"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <enumeration name="jeod__MassPointInit__FrameSpec">
    <pair label ="jeod::MassPointInit::StructToBody" value="0"/>
    <pair label ="jeod::MassPointInit::StructToCase" value="0"/>
    <pair label ="jeod::MassPointInit::StructToPoint" value="0"/>
    <pair label ="jeod::MassPointInit::StructToChild" value="0"/>
    <pair label ="jeod::MassPointInit::BodyToStruct" value="1"/>
    <pair label ="jeod::MassPointInit::CaseToStruct" value="1"/>
    <pair label ="jeod::MassPointInit::PointToStruct" value="1"/>
    <pair label ="jeod::MassPointInit::ChildToStruct" value="1"/>
  </enumeration>

  <class name="jeod__MassPointInit">
    <member
      name="position"
      type="double"
      io_attributes="15"
      units="m">
      <dimension>3</dimension>
    </member>
    <member
      name="pt_orientation"
      type="jeod__Orientation"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="pt_frame_spec"
      type="jeod__MassPointInit__FrameSpec"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__MassProperties">
    <member
      name="position"
      type="double"
      io_attributes="15"
      units="m">
      <dimension>3</dimension>
    </member>
    <member
      name="Q_parent_this"
      type="jeod__Quaternion"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="T_parent_this"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
    <member
      name="name"
      type="jeod__NamedItem"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="links"
      type="jeod__MassPointLinks"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mass"
      type="double"
      io_attributes="15"
      units="kg">
    </member>
    <member
      name="inertia"
      type="double"
      io_attributes="15"
      units="kg*m2">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
    <member
      name="inverse_mass"
      type="double"
      io_attributes="15"
      units="1/kg">
    </member>
    <member
      name="inverse_inertia"
      type="double"
      io_attributes="15"
      units="1/kg/m2">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
  </class>

  <class name="jeod__MassBody">
    <member
      name="name"
      type="jeod__NamedItem"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="core_properties"
      type="jeod__MassProperties"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="composite_properties"
      type="jeod__MassProperties"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="compute_inverse_inertia"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="structure_point"
      type="jeod__MassPoint"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_owner"
      type="jeod__DynBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="dyn_manager"
      type="jeod__BaseDynManager"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="mass_properties_initialized"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="links"
      type="jeod__MassBodyLinks"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="needs_update"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mass_points"
      type="std__list&lt;MassPoint *>"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="core_wrt_composite"
      type="jeod__MassPoint"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="composite_wrt_pstr"
      type="jeod__MassPoint"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="composite_wrt_pbdy"
      type="jeod__MassPoint"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__GravityInteraction">
    <member
      name="integ_frame_index"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="grav_accel"
      type="double"
      io_attributes="15"
      units="m/s2">
      <dimension>3</dimension>
    </member>
    <member
      name="grav_grad"
      type="double"
      io_attributes="15"
      units="1/s2">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
    <member
      name="grav_pot"
      type="double"
      io_attributes="15"
      units="m2/s2">
    </member>
  </class>

  <class name="jeod__SimpleCheckpointable">
  </class>

  <enumeration name="jeod__GeneralizedSecondOrderODETechnique__TechniqueType">
    <pair label ="jeod::GeneralizedSecondOrderODETechnique::Unspecified" value="0"/>
    <pair label ="jeod::GeneralizedSecondOrderODETechnique::Cartesian" value="1"/>
    <pair label ="jeod::GeneralizedSecondOrderODETechnique::LieGroup" value="2"/>
  </enumeration>

  <class name="jeod__GeneralizedSecondOrderODETechnique">
  </class>

  <class name="jeod__IntegrationMessages">
    <member
      name="unsupported_option"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="invalid_item"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="internal_error"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="invalid_request"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="information"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__RestartableSecondOrderODEIntegrator">
  </class>

  <class name="jeod__RestartableScalarFirstOrderODEIntegrator">
    <member
      name="integrator"
      type="er7_utils__FirstOrderODEIntegrator"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__RestartableT3SecondOrderODEIntegrator">
    <member
      name="integrator"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__RestartableSO3SecondOrderODEIntegrator">
    <member
      name="technique"
      type="jeod__GeneralizedSecondOrderODETechnique__TechniqueType"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="integrator"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__DynBody">
    <member
      name="integ_group"
      type="er7_utils__BaseIntegrationGroup"
      io_attributes="15"
      units="--"
      description="n The integration group that integrates this body, and possibly others.">
      <dimension>0</dimension>
    </member>
    <member
      name="mass"
      type="jeod__MassBody"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="name"
      type="jeod__NamedItem"
      io_attributes="3"
      units="--">
    </member>
    <member
      name="integ_frame_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="core_body"
      type="jeod__BodyRefFrame"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="composite_body"
      type="jeod__BodyRefFrame"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="structure"
      type="jeod__BodyRefFrame"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="translational_dynamics"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rotational_dynamics"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="compute_point_derivative"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="three_dof"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rotation_integration"
      type="jeod__GeneralizedSecondOrderODETechnique__TechniqueType"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="autoupdate_vehicle_points"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="grav_interaction"
      type="jeod__GravityInteraction"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="derivs"
      type="jeod__FrameDerivs"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="collect"
      type="jeod__BodyForceCollect"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="integ_frame"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="dyn_manager"
      type="jeod__BaseDynManager"
      io_attributes="3"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="time_manager"
      type="jeod__JeodIntegrationTime"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="dyn_parent"
      type="jeod__DynBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="frame_attach"
      type="jeod__DynBodyGenericFrameAttachment"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="dyn_children"
      type="std__list&lt;DynBody *>"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mass_children"
      type="std__list&lt;MassBody *>"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="vehicle_points"
      type="std__list&lt;BodyRefFrame *>"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="initialized_states"
      type="jeod__RefFrameItems"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="position_source"
      type="jeod__BodyRefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="velocity_source"
      type="jeod__BodyRefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="attitude_source"
      type="jeod__BodyRefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="rate_source"
      type="jeod__BodyRefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="integrated_frame"
      type="jeod__BodyRefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_results_merger"
      type="er7_utils__IntegratorResultMergerContainer"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="trans_integrator"
      type="jeod__RestartableT3SecondOrderODEIntegrator"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rot_integrator"
      type="jeod__RestartableSO3SecondOrderODEIntegrator"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <enumeration name="jeod__RelativeDerivedState__DirectionSense">
    <pair label ="jeod::RelativeDerivedState::undefined" value="-1"/>
    <pair label ="jeod::RelativeDerivedState::ComputeSubjectStateinTarget" value="0"/>
    <pair label ="jeod::RelativeDerivedState::ComputeTargetStateinSubject" value="2"/>
  </enumeration>

  <class name="jeod__RelativeDerivedState">
    <member
      name="subject"
      type="jeod__DynBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="reference_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="state_identifier"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="subject_frame_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="target_frame_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="direction_sense"
      type="jeod__RelativeDerivedState__DirectionSense"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rel_state"
      type="jeod__RefFrameState"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="subject_frame"
      type="jeod__BodyRefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="target_frame"
      type="jeod__RefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__LvlhRelativeDerivedState">
    <member
      name="subject"
      type="jeod__DynBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="reference_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="state_identifier"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="subject_frame_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="target_frame_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="direction_sense"
      type="jeod__RelativeDerivedState__DirectionSense"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rel_state"
      type="jeod__RefFrameState"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="subject_frame"
      type="jeod__BodyRefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="target_frame"
      type="jeod__RefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="lvlh_type"
      type="jeod__LvlhType__Type"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="use_theta_dot_correction"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__BaseRefFrameManager">
  </class>

  <class name="jeod__RefFrameManager">
    <member
      name="root_node"
      type="jeod__RefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__BaseEphemeridesManager">
  </class>

  <class name="jeod__EphemeridesManager">
    <member
      name="root_node"
      type="jeod__RefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="single_ephem_mode"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="regenerate_ref_frame_tree"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
  </class>

  <class name="jeod__Planet">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="grav_source"
      type="jeod__GravitySource"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="inertial"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="alt_inertial"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="pfix"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="alt_pfix"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="alt_inertial_set"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="alt_pfix_transform"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
    <member
      name="alt_pfix_set"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="r_eq"
      type="double"
      io_attributes="15"
      units="m">
    </member>
    <member
      name="r_pol"
      type="double"
      io_attributes="15"
      units="m">
    </member>
    <member
      name="e_ellipsoid"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="e_ellip_sq"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="flat_coeff"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="flat_inv"
      type="double"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__TimeChangeSubscriber">
  </class>

  <class name="jeod__JeodIntegrationGroupOwner">
  </class>

  <class name="jeod__JeodIntegrationGroup">
    <member
      name="integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor that is used to generate the integration controls for this object and is used to generate the state integrators for each integrated object whose state is integrated by this group.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_interface"
      type="er7_utils__IntegratorInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the simulation engine's integration structure.">
      <dimension>0</dimension>
    </member>
    <member
      name="time_interface"
      type="er7_utils__TimeInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the object that represents time.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that guides the integration process. This object is created at construction time by calling the integrator constructor's create_integration_controls method.">
      <dimension>0</dimension>
    </member>
    <member
      name="group_owner"
      type="jeod__JeodIntegrationGroupOwner"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_merger"
      type="er7_utils__IntegratorResultMergerContainer"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="jeod_integ_interface"
      type="jeod__JeodIntegratorInterface"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="jeod_time_manager"
      type="jeod__JeodIntegrationTime"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__BaseDynManager">
  </class>

  <enumeration name="jeod__DynManagerInit__EphemerisMode">
    <pair label ="jeod::DynManagerInit::EphemerisMode_EmptySpace" value="0"/>
    <pair label ="jeod::DynManagerInit::EphemerisMode_SinglePlanet" value="1"/>
    <pair label ="jeod::DynManagerInit::EphemerisMode_Ephemerides" value="2"/>
  </enumeration>

  <class name="jeod__DynManagerInit">
    <member
      name="mode"
      type="jeod__DynManagerInit__EphemerisMode"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="central_point_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="integ_group_constructor"
      type="jeod__DynamicsIntegrationGroup"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="jeod_integ_opt"
      type="er7_utils__Integration__Technique"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sim_integ_opt"
      type="int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__DynamicsIntegrationGroup">
    <member
      name="integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor that is used to generate the integration controls for this object and is used to generate the state integrators for each integrated object whose state is integrated by this group.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_interface"
      type="er7_utils__IntegratorInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the simulation engine's integration structure.">
      <dimension>0</dimension>
    </member>
    <member
      name="time_interface"
      type="er7_utils__TimeInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the object that represents time.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that guides the integration process. This object is created at construction time by calling the integrator constructor's create_integration_controls method.">
      <dimension>0</dimension>
    </member>
    <member
      name="group_owner"
      type="jeod__JeodIntegrationGroupOwner"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_merger"
      type="er7_utils__IntegratorResultMergerContainer"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="jeod_integ_interface"
      type="jeod__JeodIntegratorInterface"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="jeod_time_manager"
      type="jeod__JeodIntegrationTime"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv_ephem_update"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="bodies_integrated_separately"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__DynManager">
    <member
      name="root_node"
      type="jeod__RefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="single_ephem_mode"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="regenerate_ref_frame_tree"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="deriv_ephem_update"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="gravity_off"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mode"
      type="jeod__DynManagerInit__EphemerisMode"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sim_integrator"
      type="Trick__Integrator"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="initialized"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="gravity_manager"
      type="jeod__GravityManager"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_interface"
      type="jeod__JeodIntegratorInterface"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="default_integ_group"
      type="jeod__DynamicsIntegrationGroup"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="simple_ephemeris"
      type="jeod__SinglePointEphemeris"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="mass_bodies"
      type="std__vector&lt;MassBody *>"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="dyn_bodies"
      type="std__vector&lt;DynBody *>"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="integ_groups"
      type="std__vector&lt;DynamicsIntegrationGroup *>"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="body_actions"
      type="std__list&lt;BodyAction *>"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="jeod__EphemerisInterface">
  </class>

  <enumeration name="jeod__EphemerisItem__TargetAspect">
    <pair label ="jeod::EphemerisItem::Translation" value="0"/>
    <pair label ="jeod::EphemerisItem::Rotation" value="1"/>
  </enumeration>

  <class name="jeod__EphemerisItem">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="owner"
      type="jeod__EphemerisInterface"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="manager"
      type="jeod__BaseEphemeridesManager"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="target_frame"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="head"
      type="jeod__EphemerisItem"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="next"
      type="jeod__EphemerisItem"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="update_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__EphemerisPoint">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="owner"
      type="jeod__EphemerisInterface"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="manager"
      type="jeod__BaseEphemeridesManager"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="target_frame"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="head"
      type="jeod__EphemerisItem"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="next"
      type="jeod__EphemerisItem"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="update_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__SinglePointEphemeris">
    <member
      name="identifier"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__EmptySpaceEphemeris">
    <member
      name="identifier"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="central_point"
      type="jeod__EphemerisPoint"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="central_frame"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__SinglePlanetEphemeris">
    <member
      name="identifier"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="central_point"
      type="jeod__EphemerisPoint"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__NutationJ2000Init_nutation_j2000_default_data">
  </class>

  <class name="jeod__RNPJ2000_rnp_j2000_default_data">
  </class>

  <class name="jeod__PolarMotionJ2000Init_xpyp_daily_default_data">
  </class>

  <class name="jeod__PlanetRotationInit">
  </class>

  <class name="jeod__NutationJ2000Init">
    <member
      name="num_coeffs"
      type="int"
      io_attributes="15"
      units="count">
    </member>
    <member
      name="L_coeffs"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="M_coeffs"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="F_coeffs"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="D_coeffs"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="omega_coeffs"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="long_coeffs"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="long_t_coeffs"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="obliq_coeffs"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="obliq_t_coeffs"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__PolarMotionJ2000Init">
    <member
      name="xp"
      type="double"
      io_attributes="15"
      units="rad">
    </member>
    <member
      name="yp"
      type="double"
      io_attributes="15"
      units="rad">
    </member>
    <member
      name="xp_tbl"
      type="double"
      io_attributes="15"
      units="rad">
      <dimension>0</dimension>
    </member>
    <member
      name="yp_tbl"
      type="double"
      io_attributes="15"
      units="rad">
      <dimension>0</dimension>
    </member>
    <member
      name="polar_mjd"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="override_table"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="last_table_index"
      type="unsigned int"
      io_attributes="15"
      units="count">
    </member>
  </class>

  <class name="jeod__EphemerisOrientation">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="owner"
      type="jeod__EphemerisInterface"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="manager"
      type="jeod__BaseEphemeridesManager"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="target_frame"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="head"
      type="jeod__EphemerisItem"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="next"
      type="jeod__EphemerisItem"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="update_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="subscribed_to_inertial"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__PlanetOrientation">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="planet"
      type="jeod__Planet"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="planet_rot_state"
      type="jeod__RefFrameRot"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="planet_omega"
      type="double"
      io_attributes="15"
      units="rad/s">
    </member>
    <member
      name="orient_interface"
      type="jeod__EphemerisOrientation"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <enumeration name="jeod__PlanetRNP__RNPFidelity">
    <pair label ="jeod::PlanetRNP::FullRNP" value="0"/>
    <pair label ="jeod::PlanetRNP::RotationOnly" value="1"/>
    <pair label ="jeod::PlanetRNP::ConstantNP" value="2"/>
  </enumeration>

  <class name="jeod__PlanetRNP">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="planet"
      type="jeod__Planet"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="planet_rot_state"
      type="jeod__RefFrameRot"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="planet_omega"
      type="double"
      io_attributes="15"
      units="rad/s">
    </member>
    <member
      name="orient_interface"
      type="jeod__EphemerisOrientation"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="nutation"
      type="jeod__PlanetRotation"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="precession"
      type="jeod__PlanetRotation"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="polar_motion"
      type="jeod__PlanetRotation"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="rotation"
      type="jeod__PlanetRotation"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="rnp_type"
      type="jeod__PlanetRNP__RNPFidelity"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="enable_polar"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="NP_matrix"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
    <member
      name="scratch_matrix"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
  </class>

  <class name="jeod__PlanetRotation">
    <member
      name="rotation"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
    <member
      name="current_time"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="RADTODEG"
      type="double"
      io_attributes="15"
      units="degree/rad">
    </member>
    <member
      name="DEGTORAD"
      type="double"
      io_attributes="15"
      units="rad/degree">
    </member>
    <member
      name="DEGTOSEC"
      type="double"
      io_attributes="15"
      units="arcsecond/degree">
    </member>
    <member
      name="SECTODEG"
      type="double"
      io_attributes="15"
      units="degree/arcsecond">
    </member>
    <member
      name="JULIANDAYTOSEC"
      type="double"
      io_attributes="15"
      units="s/day">
    </member>
    <member
      name="SECTOJULIANDAY"
      type="double"
      io_attributes="15"
      units="day/s">
    </member>
    <member
      name="JULIANCENTTODAY"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="DAYTOJULIANCENT"
      type="double"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__NutationJ2000">
    <member
      name="rotation"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
    <member
      name="current_time"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="RADTODEG"
      type="double"
      io_attributes="15"
      units="degree/rad">
    </member>
    <member
      name="DEGTORAD"
      type="double"
      io_attributes="15"
      units="rad/degree">
    </member>
    <member
      name="DEGTOSEC"
      type="double"
      io_attributes="15"
      units="arcsecond/degree">
    </member>
    <member
      name="SECTODEG"
      type="double"
      io_attributes="15"
      units="degree/arcsecond">
    </member>
    <member
      name="JULIANDAYTOSEC"
      type="double"
      io_attributes="15"
      units="s/day">
    </member>
    <member
      name="SECTOJULIANDAY"
      type="double"
      io_attributes="15"
      units="day/s">
    </member>
    <member
      name="JULIANCENTTODAY"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="DAYTOJULIANCENT"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="num_coeffs"
      type="unsigned int"
      io_attributes="15"
      units="count">
    </member>
    <member
      name="L_coeffs"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="M_coeffs"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="F_coeffs"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="D_coeffs"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="omega_coeffs"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="long_coeffs"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="long_t_coeffs"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="obliq_coeffs"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="obliq_t_coeffs"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="nutation_in_longitude"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="nutation_in_obliquity"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="L"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="M"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="F"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="D"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="omega"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="epsilon_bar"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="equa_of_equi"
      type="double"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__PolarMotionJ2000">
    <member
      name="rotation"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
    <member
      name="current_time"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="RADTODEG"
      type="double"
      io_attributes="15"
      units="degree/rad">
    </member>
    <member
      name="DEGTORAD"
      type="double"
      io_attributes="15"
      units="rad/degree">
    </member>
    <member
      name="DEGTOSEC"
      type="double"
      io_attributes="15"
      units="arcsecond/degree">
    </member>
    <member
      name="SECTODEG"
      type="double"
      io_attributes="15"
      units="degree/arcsecond">
    </member>
    <member
      name="JULIANDAYTOSEC"
      type="double"
      io_attributes="15"
      units="s/day">
    </member>
    <member
      name="SECTOJULIANDAY"
      type="double"
      io_attributes="15"
      units="day/s">
    </member>
    <member
      name="JULIANCENTTODAY"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="DAYTOJULIANCENT"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="xp"
      type="double"
      io_attributes="15"
      units="rad">
    </member>
    <member
      name="yp"
      type="double"
      io_attributes="15"
      units="rad">
    </member>
    <member
      name="xp_tbl"
      type="double"
      io_attributes="15"
      units="rad">
      <dimension>0</dimension>
    </member>
    <member
      name="yp_tbl"
      type="double"
      io_attributes="15"
      units="rad">
      <dimension>0</dimension>
    </member>
    <member
      name="polar_mjd"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="override_table"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="last_table_index"
      type="unsigned int"
      io_attributes="15"
      units="count">
    </member>
    <member
      name="warn_table"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__PrecessionJ2000">
    <member
      name="rotation"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
    <member
      name="current_time"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="RADTODEG"
      type="double"
      io_attributes="15"
      units="degree/rad">
    </member>
    <member
      name="DEGTORAD"
      type="double"
      io_attributes="15"
      units="rad/degree">
    </member>
    <member
      name="DEGTOSEC"
      type="double"
      io_attributes="15"
      units="arcsecond/degree">
    </member>
    <member
      name="SECTODEG"
      type="double"
      io_attributes="15"
      units="degree/arcsecond">
    </member>
    <member
      name="JULIANDAYTOSEC"
      type="double"
      io_attributes="15"
      units="s/day">
    </member>
    <member
      name="SECTOJULIANDAY"
      type="double"
      io_attributes="15"
      units="day/s">
    </member>
    <member
      name="JULIANCENTTODAY"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="DAYTOJULIANCENT"
      type="double"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__RotationJ2000">
    <member
      name="rotation"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
    <member
      name="current_time"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="RADTODEG"
      type="double"
      io_attributes="15"
      units="degree/rad">
    </member>
    <member
      name="DEGTORAD"
      type="double"
      io_attributes="15"
      units="rad/degree">
    </member>
    <member
      name="DEGTOSEC"
      type="double"
      io_attributes="15"
      units="arcsecond/degree">
    </member>
    <member
      name="SECTODEG"
      type="double"
      io_attributes="15"
      units="degree/arcsecond">
    </member>
    <member
      name="JULIANDAYTOSEC"
      type="double"
      io_attributes="15"
      units="s/day">
    </member>
    <member
      name="SECTOJULIANDAY"
      type="double"
      io_attributes="15"
      units="day/s">
    </member>
    <member
      name="JULIANCENTTODAY"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="DAYTOJULIANCENT"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="planet_rotational_velocity"
      type="double"
      io_attributes="15"
      units="rad/s">
    </member>
    <member
      name="nutation"
      type="jeod__NutationJ2000"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="use_full_rnp"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="theta_gast"
      type="double"
      io_attributes="15"
      units="rad">
    </member>
    <member
      name="GMST"
      type="double"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__RNPJ2000">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="planet"
      type="jeod__Planet"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="planet_rot_state"
      type="jeod__RefFrameRot"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="planet_omega"
      type="double"
      io_attributes="15"
      units="rad/s">
    </member>
    <member
      name="orient_interface"
      type="jeod__EphemerisOrientation"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="nutation"
      type="jeod__PlanetRotation"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="precession"
      type="jeod__PlanetRotation"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="polar_motion"
      type="jeod__PlanetRotation"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="rotation"
      type="jeod__PlanetRotation"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="rnp_type"
      type="jeod__PlanetRNP__RNPFidelity"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="enable_polar"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="NP_matrix"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
    <member
      name="scratch_matrix"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
    <member
      name="RJ2000"
      type="jeod__RotationJ2000"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="NJ2000"
      type="jeod__NutationJ2000"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="PJ2000"
      type="jeod__PrecessionJ2000"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="PMJ2000"
      type="jeod__PolarMotionJ2000"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="internal_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="gmst_ptr"
      type="jeod__TimeGMST"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="time_dyn_ptr"
      type="jeod__TimeDyn"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="last_updated_time_full"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="never_updated_full"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="last_updated_time_rotational"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="never_updated_rotational"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__WindVelocity_wind_velocity_default_data">
    <member
      name="omega_scale_fac"
      type="double"
      io_attributes="15"
      units="--"
      description="n Default settings for omega_scale_fac">
      <dimension>12</dimension>
    </member>
    <member
      name="omega_scale_alt"
      type="double"
      io_attributes="15"
      units="--"
      description="n Default settings for omega_scale_alt">
      <dimension>12</dimension>
    </member>
    <member
      name="omega"
      type="double"
      io_attributes="15"
      units="rad/s"
      description="n planetary rotation rate.">
    </member>
  </class>

  <class name="jeod__METAtmosphere_solar_mean_default_data">
  </class>

  <enumeration name="jeod__TimeConverter__Direction">
    <pair label ="jeod::TimeConverter::NO_DIRECTION" value="0"/>
    <pair label ="jeod::TimeConverter::A_TO_B_INIT" value="1"/>
    <pair label ="jeod::TimeConverter::B_TO_A_INIT" value="16"/>
    <pair label ="jeod::TimeConverter::A_TO_B_UPDATE" value="256"/>
    <pair label ="jeod::TimeConverter::B_TO_A_UPDATE" value="4096"/>
    <pair label ="jeod::TimeConverter::A_TO_B" value="257"/>
    <pair label ="jeod::TimeConverter::B_TO_A" value="4112"/>
    <pair label ="jeod::TimeConverter::ANY_DIRECTION" value="4369"/>
  </enumeration>

  <class name="jeod__TimeConverter">
    <member
      name="a_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="b_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialized"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="a_to_b_offset"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="valid_directions"
      type="jeod__TimeConverter__Direction"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="jeod__TimeLinks">
    <member
      name="container_"
      type="jeod__JeodBaseTime"
      io_attributes="3"
      units="--">
    </member>
    <member
      name="parent_"
      type="jeod__TimeLinks"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="children_"
      type="typename std__vector&lt;class jeod__TimeLinks *>"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="path_to_node_"
      type="typename std__vector&lt;class jeod__TimeLinks *>"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__JeodBaseTime">
    <member
      name="initializing_value"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_converter_direction"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="seconds"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="name"
      type="jeod__NamedItem"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialize_from_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_from_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="update_converter_ptr"
      type="jeod__TimeConverter"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="index"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialized"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="days"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="initial_value"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="clock_resolution"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="links"
      type="jeod__TimeLinks"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__TimeStandard">
    <member
      name="initializing_value"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_converter_direction"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="seconds"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="name"
      type="jeod__NamedItem"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialize_from_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_from_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="update_converter_ptr"
      type="jeod__TimeConverter"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="index"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialized"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="days"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="initial_value"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="clock_resolution"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="links"
      type="jeod__TimeLinks"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="last_calendar_update"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="prev_julian_day"
      type="int"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="seconds_at_year_start"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="year_of_last_soy"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="send_warning_pre_1968"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="trunc_julian_time"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="julian_date"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="tjt_at_epoch"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="calendar_day"
      type="int"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="calendar_hour"
      type="int"
      io_attributes="15"
      units="hr">
    </member>
    <member
      name="calendar_minute"
      type="int"
      io_attributes="15"
      units="min">
    </member>
    <member
      name="calendar_second"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="calendar_year"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="calendar_month"
      type="int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__TimeUTC">
    <member
      name="initializing_value"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_converter_direction"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="seconds"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="name"
      type="jeod__NamedItem"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialize_from_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_from_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="update_converter_ptr"
      type="jeod__TimeConverter"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="index"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialized"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="days"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="initial_value"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="clock_resolution"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="links"
      type="jeod__TimeLinks"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="last_calendar_update"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="prev_julian_day"
      type="int"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="seconds_at_year_start"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="year_of_last_soy"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="send_warning_pre_1968"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="trunc_julian_time"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="julian_date"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="tjt_at_epoch"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="calendar_day"
      type="int"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="calendar_hour"
      type="int"
      io_attributes="15"
      units="hr">
    </member>
    <member
      name="calendar_minute"
      type="int"
      io_attributes="15"
      units="min">
    </member>
    <member
      name="calendar_second"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="calendar_year"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="calendar_month"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="true_utc"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__GaussQuadrature">
    <member
      name="gauss_weights"
      type="double"
      io_attributes="1"
      units="1">
      <dimension>9</dimension>
      <dimension>8</dimension>
    </member>
    <member
      name="gauss_xvalues"
      type="double"
      io_attributes="1"
      units="1">
      <dimension>9</dimension>
      <dimension>8</dimension>
    </member>
  </class>

  <class name="jeod__AltLatLongState">
    <member
      name="altitude"
      type="double"
      io_attributes="15"
      units="m">
    </member>
    <member
      name="latitude"
      type="double"
      io_attributes="15"
      units="rad">
    </member>
    <member
      name="longitude"
      type="double"
      io_attributes="15"
      units="rad">
    </member>
  </class>

  <class name="jeod__PlanetFixedPosition">
    <member
      name="ellip_coords"
      type="jeod__AltLatLongState"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sphere_coords"
      type="jeod__AltLatLongState"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cart_coords"
      type="double"
      io_attributes="15"
      units="m">
      <dimension>3</dimension>
    </member>
    <member
      name="planet"
      type="jeod__Planet"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__Atmosphere">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--"
      description="activity-control flag.">
    </member>
  </class>

  <class name="jeod__WindVelocity__OmegaTableEntry">
    <member
      name="altitude"
      type="double"
      io_attributes="15"
      units="m">
    </member>
    <member
      name="scale_factor"
      type="double"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__WindVelocity">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="omega"
      type="double"
      io_attributes="15"
      units="rad/s">
    </member>
    <member
      name="num_layers"
      type="unsigned int"
      io_attributes="15"
      units="count">
    </member>
    <member
      name="omega_scale_table"
      type="jeod__WindVelocity__OmegaTableEntry"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="array_index"
      type="unsigned int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="first_pass"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="increasing_altitude"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__AtmosphereState">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--"
      description="Activation flag for computing state.">
    </member>
    <member
      name="temperature"
      type="double"
      io_attributes="15"
      units="K"
      description="Temperature at altitude">
    </member>
    <member
      name="density"
      type="double"
      io_attributes="15"
      units="kg/m3"
      description="total density at altitude">
    </member>
    <member
      name="pressure"
      type="double"
      io_attributes="15"
      units="N/m2"
      description="Total pressure">
    </member>
    <member
      name="wind"
      type="double"
      io_attributes="15"
      units="m/s"
      description="Wind velocity">
      <dimension>3</dimension>
    </member>
    <member
      name="atmos"
      type="jeod__Atmosphere"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="pfix_pos"
      type="jeod__PlanetFixedPosition"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__METAtmosphereStateVars">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--"
      description="Activation flag for computing state.">
    </member>
    <member
      name="temperature"
      type="double"
      io_attributes="15"
      units="K"
      description="Temperature at altitude">
    </member>
    <member
      name="density"
      type="double"
      io_attributes="15"
      units="kg/m3"
      description="total density at altitude">
    </member>
    <member
      name="pressure"
      type="double"
      io_attributes="15"
      units="N/m2"
      description="Total pressure">
    </member>
    <member
      name="wind"
      type="double"
      io_attributes="15"
      units="m/s"
      description="Wind velocity">
      <dimension>3</dimension>
    </member>
    <member
      name="atmos"
      type="jeod__Atmosphere"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="pfix_pos"
      type="jeod__PlanetFixedPosition"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="exo_temp"
      type="double"
      io_attributes="15"
      units="K"
      description="Exospheric temperature">
    </member>
    <member
      name="log10_dens"
      type="double"
      io_attributes="15"
      units="--"
      description="Log10( total density )">
    </member>
    <member
      name="mol_weight"
      type="double"
      io_attributes="15"
      units="--"
      description="Average molecular weight">
    </member>
    <member
      name="N2"
      type="double"
      io_attributes="15"
      units="--"
      description="N2 number density">
    </member>
    <member
      name="Ox2"
      type="double"
      io_attributes="15"
      units="--"
      description="O2 number density">
    </member>
    <member
      name="Ox"
      type="double"
      io_attributes="15"
      units="--"
      description="O number density">
    </member>
    <member
      name="A"
      type="double"
      io_attributes="15"
      units="--"
      description="A number density">
    </member>
    <member
      name="He"
      type="double"
      io_attributes="15"
      units="--"
      description="He number density">
    </member>
    <member
      name="Hyd"
      type="double"
      io_attributes="15"
      units="--"
      description="H number density">
    </member>
  </class>

  <class name="jeod__METAtmosphereChemical">
    <member
      name="num_density"
      type="double"
      io_attributes="15"
      units="1/m3">
      <dimension>6</dimension>
    </member>
    <member
      name="frac"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>6</dimension>
    </member>
    <member
      name="mol_weight"
      type="double"
      io_attributes="15"
      units="g/mol">
      <dimension>6</dimension>
    </member>
  </class>

  <class name="jeod__METAtmosphereThermal">
    <member
      name="T_out"
      type="double"
      io_attributes="15"
      units="K">
    </member>
    <member
      name="T_125"
      type="double"
      io_attributes="15"
      units="K"
      description="Temperature at 125km reference point.">
    </member>
    <member
      name="T_exosphere"
      type="double"
      io_attributes="3"
      units="K">
    </member>
    <member
      name="altitude_km"
      type="double"
      io_attributes="3"
      units="km">
    </member>
  </class>

  <enumeration name="jeod__METAtmosphere__AtmosMETGeoIndexType">
    <pair label ="jeod::METAtmosphere::ATMOS_MET_GI_AP" value="0"/>
    <pair label ="jeod::METAtmosphere::ATMOS_MET_GI_KP" value="1"/>
  </enumeration>

  <class name="jeod__METAtmosphere">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--"
      description="activity-control flag.">
    </member>
    <member
      name="geo_index_type"
      type="jeod__METAtmosphere__AtmosMETGeoIndexType"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="geo_index"
      type="double"
      io_attributes="15"
      units="--"
      description="Geomagnetic variations index (Ap or Kp).">
    </member>
    <member
      name="F10"
      type="double"
      io_attributes="15"
      units="--"
      description="Solar radio noise flux.">
    </member>
    <member
      name="F10B"
      type="double"
      io_attributes="15"
      units="--"
      description="90 day average of solar radio noise flux.">
    </member>
    <member
      name="species"
      type="jeod__METAtmosphereChemical"
      io_attributes="15"
      units="--"
      description="The chemical composition of the atmosphere.">
    </member>
    <member
      name="altitude_km"
      type="double"
      io_attributes="15"
      units="km"
      description="Copy of vehicle altitude">
    </member>
    <member
      name="latitude"
      type="double"
      io_attributes="15"
      units="rad"
      description="Copy of vehicle latitude">
    </member>
    <member
      name="longitude"
      type="double"
      io_attributes="15"
      units="rad"
      description="Copy of vehicle longitude">
    </member>
    <member
      name="barometric_equation_ceiling"
      type="double"
      io_attributes="15"
      units="km"
      description="the ceiling for integration using the barometric equation. Above this value, the integration switches to the diffusion equation. Value is 105km in the 1970 paper and 100km in the 1971 paper.">
    </member>
    <member
      name="trunc_julian_time"
      type="double"
      io_attributes="3"
      units="day"
      description="Current time">
    </member>
    <member
      name="tjt_year_start"
      type="double"
      io_attributes="15"
      units="day"
      description="value of trunc_julian_time at the start of the current year.">
    </member>
    <member
      name="fraction_of_year"
      type="double"
      io_attributes="15"
      units="--"
      description="fraction of this year that has passed.">
    </member>
    <member
      name="day_of_year"
      type="int"
      io_attributes="15"
      units="count"
      description="day number since start of year.">
    </member>
    <member
      name="max_days_this_year"
      type="int"
      io_attributes="15"
      units="count"
      description="number of days this year (365 or 366)">
    </member>
    <member
      name="year"
      type="int"
      io_attributes="15"
      units="count"
      description="current year identifier">
    </member>
    <member
      name="solar_declination_angle"
      type="double"
      io_attributes="15"
      units="rad"
      description="declination angle">
    </member>
    <member
      name="solar_hour_angle"
      type="double"
      io_attributes="15"
      units="rad"
      description="solar hour angle">
    </member>
    <member
      name="state"
      type="jeod__METAtmosphereStateVars"
      io_attributes="15"
      units="--"
      description="A scratch set of state variables, used for populating state variables internally before being copied onto the real state.">
    </member>
    <member
      name="thermal"
      type="jeod__METAtmosphereThermal"
      io_attributes="15"
      units="--"
      description="Thermal aspect of the model">
    </member>
    <member
      name="fairing_k"
      type="double"
      io_attributes="15"
      units="rad/km"
      description="Factor which, when multiplied by the altitude delta above the base-fairing-height provides an angle. The square of the cosine of that angle indicates how much of the seasonal-variation in Helium density to apply. density = corrected-density * (non-corrected-density / corrected-density) ^ (cos^2 ( fairing_k * delta-altitude)) At base-fairing-height, none gets applied. By 500km, it all gets applied.">
    </member>
    <member
      name="mol_wt_coeffs"
      type="double"
      io_attributes="1"
      units="--"
      description="polynomial coefficients for computing the molecular weights in the region where the barometric equation is used.">
      <dimension>7</dimension>
    </member>
    <member
      name="gauss_altitudes"
      type="double"
      io_attributes="1"
      units="--"
      description="The boundaries of the cells that are used to break down the integration over the atmosphere into more manaegable pieces. NOTE - gauss_altitudes[1] must mark the upper limit of the altitude over which the barometric equation is valid, this is either 100km or 105km, depending on which paper is used; gauss-altitude[6] must be equal to 500km.">
      <dimension>9</dimension>
    </member>
    <member
      name="gauss_n"
      type="int"
      io_attributes="1"
      units="--"
      description="The number of data-points to be used for the gauss-quadrature integration for each interval defined in the gauss_altitudes array. AKA the order of the gauss-quadrature.">
      <dimension>8</dimension>
    </member>
  </class>

  <class name="jeod__EphemerisZXZOrientation">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="owner"
      type="jeod__EphemerisInterface"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="manager"
      type="jeod__BaseEphemeridesManager"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="target_frame"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="head"
      type="jeod__EphemerisItem"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="next"
      type="jeod__EphemerisItem"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="update_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="subscribed_to_inertial"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="euler_angle_313"
      type="double"
      io_attributes="15"
      units="rad">
      <dimension>3</dimension>
    </member>
    <member
      name="euler_rate_313"
      type="double"
      io_attributes="15"
      units="rad/s">
      <dimension>3</dimension>
    </member>
  </class>

  <enumeration name="jeod__De4xxBase__De4xxFileEntries">
    <pair label ="jeod::De4xxBase::De4xx_File_Mercury" value="0"/>
    <pair label ="jeod::De4xxBase::De4xx_File_Venus" value="1"/>
    <pair label ="jeod::De4xxBase::De4xx_File_EMbary" value="2"/>
    <pair label ="jeod::De4xxBase::De4xx_File_Mars" value="3"/>
    <pair label ="jeod::De4xxBase::De4xx_File_Jupiter" value="4"/>
    <pair label ="jeod::De4xxBase::De4xx_File_Saturn" value="5"/>
    <pair label ="jeod::De4xxBase::De4xx_File_Uranus" value="6"/>
    <pair label ="jeod::De4xxBase::De4xx_File_Neptune" value="7"/>
    <pair label ="jeod::De4xxBase::De4xx_File_Pluto" value="8"/>
    <pair label ="jeod::De4xxBase::De4xx_File_Moon" value="9"/>
    <pair label ="jeod::De4xxBase::De4xx_File_Sun" value="10"/>
    <pair label ="jeod::De4xxBase::De4xx_File_ENutation" value="11"/>
    <pair label ="jeod::De4xxBase::De4xx_File_LLibration" value="12"/>
    <pair label ="jeod::De4xxBase::De4xx_File_LAngVel" value="13"/>
    <pair label ="jeod::De4xxBase::De4xx_File_tt_tdb" value="14"/>
    <pair label ="jeod::De4xxBase::De4xx_File_MaxEntries" value="15"/>
  </enumeration>

  <enumeration name="jeod__De4xxBase__De4xxEphemConsts">
    <pair label ="jeod::De4xxBase::De4xx_Const_DENUM" value="0"/>
    <pair label ="jeod::De4xxBase::De4xx_Const_LENUM" value="1"/>
    <pair label ="jeod::De4xxBase::De4xx_Const_AU" value="2"/>
    <pair label ="jeod::De4xxBase::De4xx_Const_EMRAT" value="3"/>
    <pair label ="jeod::De4xxBase::De4xx_Const_CLIGHT" value="4"/>
    <pair label ="jeod::De4xxBase::De4xx_Const_GM1" value="5"/>
    <pair label ="jeod::De4xxBase::De4xx_Const_GM2" value="6"/>
    <pair label ="jeod::De4xxBase::De4xx_Const_GMB" value="7"/>
    <pair label ="jeod::De4xxBase::De4xx_Const_GM4" value="8"/>
    <pair label ="jeod::De4xxBase::De4xx_Const_GM5" value="9"/>
    <pair label ="jeod::De4xxBase::De4xx_Const_GM6" value="10"/>
    <pair label ="jeod::De4xxBase::De4xx_Const_GM7" value="11"/>
    <pair label ="jeod::De4xxBase::De4xx_Const_GM8" value="12"/>
    <pair label ="jeod::De4xxBase::De4xx_Const_GM9" value="13"/>
    <pair label ="jeod::De4xxBase::De4xx_Const_GMS" value="14"/>
    <pair label ="jeod::De4xxBase::De4xx_Const_MaxConsts" value="15"/>
  </enumeration>

  <enumeration name="jeod__De4xxBase__De4xxEphemBodies">
    <pair label ="jeod::De4xxBase::De4xx_Ephem_Sun" value="0"/>
    <pair label ="jeod::De4xxBase::De4xx_Ephem_Mercury" value="1"/>
    <pair label ="jeod::De4xxBase::De4xx_Ephem_Venus" value="2"/>
    <pair label ="jeod::De4xxBase::De4xx_Ephem_Earth" value="3"/>
    <pair label ="jeod::De4xxBase::De4xx_Ephem_Mars" value="4"/>
    <pair label ="jeod::De4xxBase::De4xx_Ephem_Jupiter" value="5"/>
    <pair label ="jeod::De4xxBase::De4xx_Ephem_Saturn" value="6"/>
    <pair label ="jeod::De4xxBase::De4xx_Ephem_Uranus" value="7"/>
    <pair label ="jeod::De4xxBase::De4xx_Ephem_Neptune" value="8"/>
    <pair label ="jeod::De4xxBase::De4xx_Ephem_Pluto" value="9"/>
    <pair label ="jeod::De4xxBase::De4xx_Ephem_Moon" value="10"/>
    <pair label ="jeod::De4xxBase::De4xx_Ephem_EMbary" value="11"/>
    <pair label ="jeod::De4xxBase::De4xx_Ephem_SSbary" value="12"/>
    <pair label ="jeod::De4xxBase::De4xx_Ephem_EML1" value="13"/>
    <pair label ="jeod::De4xxBase::De4xx_Ephem_ENutation" value="14"/>
    <pair label ="jeod::De4xxBase::De4xx_Ephem_LLibration" value="15"/>
    <pair label ="jeod::De4xxBase::De4xx_Ephem_MaxBodies" value="16"/>
  </enumeration>

  <class name="jeod__EphemerisDataSetMeta">
    <member
      name="number_file_items"
      type="unsigned int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="start_epoch"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="stop_epoch"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="delta_epoch"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="number_segments"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ncoeff"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="de_constants"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>15</dimension>
    </member>
  </class>

  <class name="jeod__EphemerisDataItemMeta">
    <member
      name="offset"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="nterms"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="npoly"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__EphemerisDataSegmentMeta">
    <member
      name="num_recs"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="start_epoch"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="stop_epoch"
      type="double"
      io_attributes="15"
      units="day">
    </member>
  </class>

  <class name="jeod__De4xxFileSpec">
    <member
      name="denum"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ephem_file_dir"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ephem_file_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="pathname"
      type="std__string"
      io_attributes="5"
      units="--">
    </member>
  </class>

  <class name="jeod__De4xxFileIO">
    <member
      name="recno"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="segment_index"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="segment_recno"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="total_num_recs"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="max_terms"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__De4xxFileHeader">
    <member
      name="au"
      type="double"
      io_attributes="15"
      units="m">
    </member>
    <member
      name="vlight"
      type="double"
      io_attributes="15"
      units="m/s">
    </member>
    <member
      name="em_mass_ratio"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="be_em_dist_ratio"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="bm_em_dist_ratio"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="e1_em_dist_ratio"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="b1_em_dist_ratio"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="gmbody"
      type="double"
      io_attributes="15"
      units="m3/s2">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__De4xxFileItem">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="avail"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="item_idx"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="nitems"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="pscale"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="state"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>2</dimension>
      <dimension>3</dimension>
    </member>
  </class>

  <class name="jeod__De4xxFileRefTime">
    <member
      name="epoch_date"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="fdate"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="time_offset"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="init_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="block_no"
      type="double"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__De4xxFileCoef">
    <member
      name="chebyterms"
      type="unsigned long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="chebyx"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="chebypoly"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="chebyderiv"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__De4xxFileRestart">
  </class>

  <class name="jeod__De4xxFile">
    <member
      name="file_spec"
      type="jeod__De4xxFileSpec"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="header"
      type="jeod__De4xxFileHeader"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="item"
      type="jeod__De4xxFileItem"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="io"
      type="jeod__De4xxFileIO"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ref_time"
      type="jeod__De4xxFileRefTime"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="coef"
      type="jeod__De4xxFileCoef"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="vm_usage"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="resident_set"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="logMemoryStats"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <enumeration name="jeod__De4xxEphemItem__Status">
    <pair label ="jeod::De4xxEphemItem::Deselected" value="0"/>
    <pair label ="jeod::De4xxEphemItem::Inactive" value="1"/>
    <pair label ="jeod::De4xxEphemItem::IsRoot" value="2"/>
    <pair label ="jeod::De4xxEphemItem::InTree" value="3"/>
    <pair label ="jeod::De4xxEphemItem::Active" value="4"/>
  </enumeration>

  <class name="jeod__De4xxEphemItem">
    <member
      name="item"
      type="jeod__EphemerisItem"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="enabled_item"
      type="jeod__EphemerisItem"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="frame"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="status"
      type="jeod__De4xxEphemItem__Status"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="index"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__De4xxEphemeris">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="selected_items"
      type="bool"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="file"
      type="jeod__De4xxFile"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="force_update"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="nactive_items"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="item_data"
      type="jeod__De4xxEphemItem"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="ident"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="points"
      type="jeod__EphemerisPoint"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="lunar_orientation"
      type="jeod__EphemerisZXZOrientation"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="earth_moon_barycenter_frame"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="solar_system_barycenter_frame"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="root_item"
      type="jeod__De4xxEphemItem"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="time_tt"
      type="jeod__TimeStandard"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="time_dyn"
      type="jeod__TimeDyn"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="body_to_file_idx"
      type="int"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__SphericalHarmonicsGravitySource_default_data">
  </class>

  <class name="jeod__SphericalHarmonicsGravitySource_earth_GGM05C_default_data">
  </class>

  <class name="jeod__GravityManager">
  </class>

  <class name="jeod__SphericalHarmonicsGravitySource">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="inertial"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="pfix"
      type="jeod__EphemerisRefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="mu"
      type="double"
      io_attributes="15"
      units="m3/s2">
    </member>
    <member
      name="frames"
      type="jeod__GravityIntegFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="radius"
      type="double"
      io_attributes="15"
      units="m">
    </member>
    <member
      name="degree"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="order"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="Cnm"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="Snm"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="tide_free"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="tide_free_delta"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="a_by_rad"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="alpha"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="beta"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="xi"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="eta"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="zeta"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="upsilon"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="nrdiag"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="int_to_double"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__SphericalHarmonicsDeltaCoeffs">
    <member
      name="grav_source"
      type="jeod__SphericalHarmonicsGravitySource"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="delta_Cnm"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="delta_Snm"
      type="double"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="degree"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="order"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dC20"
      type="double"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__Planet_default_data">
  </class>

  <class name="jeod__Planet_earth_default_data">
  </class>

  <class name="jeod__JeodIntegrationTime">
  </class>

  <class name="jeod__TimeDyn">
    <member
      name="initializing_value"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_converter_direction"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="seconds"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="name"
      type="jeod__NamedItem"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialize_from_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_from_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="update_converter_ptr"
      type="jeod__TimeConverter"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="index"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialized"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="days"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="initial_value"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="clock_resolution"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="links"
      type="jeod__TimeLinks"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="scale_factor"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ref_scale"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="offset"
      type="double"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__TimeManager">
    <member
      name="simtime"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_time"
      type="jeod__TimeDyn"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="num_types"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_change_flag"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_vector"
      type="std__vector&lt;JeodBaseTime *>"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="converter_vector"
      type="std__vector&lt;TimeConverter *>"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="jeod__LvlhFrame">
    <member
      name="frame"
      type="jeod__RefFrame"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="subject_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="planet_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="subject_frame"
      type="jeod__RefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="planet_centered_inertial"
      type="jeod__RefFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="local_dm"
      type="jeod__DynManager"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="initialized"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="SimEnvironment">
  </class>

  <class name="SysSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sched"
      type="Trick__Executive"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="MonteCarloSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mc"
      type="Trick__MonteCarlo"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="MemoryManagerSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mm"
      type="Trick__MemoryManager"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="CheckPointRestartSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cpr"
      type="Trick__CheckPointRestart"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="SieSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sie"
      type="Trick__Sie"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="CommandLineArgumentsSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cmd_args"
      type="Trick__CommandLineArguments"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="MessageSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mpublisher"
      type="Trick__MessagePublisher"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mcout"
      type="Trick__MessageCout"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mtcout"
      type="Trick__MessageThreadedCout"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mfile"
      type="Trick__MessageHSFile"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mdevice"
      type="Trick__MessageTCDevice"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pfile"
      type="Trick__PlaybackFile"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="message_file_manager"
      type="Trick__MessageCustomManager"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="JITSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="jit"
      type="Trick__JITInputFile"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="InputProcessorSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ip"
      type="Trick__IPPython"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mtv"
      type="Trick__MTV"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="ThreadProcessEventSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ep"
      type="Trick__EventProcessor"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="EventManagerSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="em"
      type="Trick__EventManager"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="ep"
      type="Trick__EventProcessor"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="VariableServerSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="vs"
      type="Trick__VariableServer"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="sim_control_panel"
      type="Trick__SimControlPanel"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="trick_view"
      type="Trick__TrickView"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="malfunctions_trick_view"
      type="Trick__MalfunctionsTrickView"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="stripchart"
      type="Trick__StripChart"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="monte_monitor"
      type="Trick__MonteMonitor"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="DataRecordDispatcherSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="drd"
      type="Trick__DataRecordDispatcher"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="RTSyncSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="gtod_clock"
      type="Trick__GetTimeOfDayClock"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="itimer"
      type="Trick__ITimer"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="rt_sync"
      type="Trick__RealtimeSync"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="FrameLogSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="frame_log"
      type="Trick__FrameLog"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="UnitTestSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="unit_tests"
      type="Trick__UnitTest"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="UdUnitsSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="udunits"
      type="Trick__UdUnits"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="DynamicsSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="dyn_manager_init"
      type="jeod__DynManagerInit"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="PlanetGenericSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="grav_manager"
      type="jeod__GravityManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet_default_data"
      type="jeod__Planet_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_default_data"
      type="jeod__SphericalHarmonicsGravitySource_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet"
      type="jeod__Planet"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="gravity_source"
      type="jeod__SphericalHarmonicsGravitySource"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Earth_GGM05C_SimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="grav_manager"
      type="jeod__GravityManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet_default_data"
      type="jeod__Planet_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_default_data"
      type="jeod__SphericalHarmonicsGravitySource_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet"
      type="jeod__Planet"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="gravity_source"
      type="jeod__SphericalHarmonicsGravitySource"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="tt"
      type="jeod__TimeTT"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="ut1"
      type="jeod__TimeUT1"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gmst"
      type="jeod__TimeGMST"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="rnp"
      type="jeod__RNPJ2000"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init"
      type="jeod__NutationJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init"
      type="jeod__PolarMotionJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_default_data"
      type="jeod__Planet_earth_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="rnp_default_data"
      type="jeod__RNPJ2000_rnp_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init_default_data"
      type="jeod__NutationJ2000Init_nutation_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init_default_data"
      type="jeod__PolarMotionJ2000Init_xpyp_daily_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_grav_default_data"
      type="jeod__SphericalHarmonicsGravitySource_earth_GGM05C_default_data"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Earth_GGM05C_MET_SimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="grav_manager"
      type="jeod__GravityManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet_default_data"
      type="jeod__Planet_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_default_data"
      type="jeod__SphericalHarmonicsGravitySource_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet"
      type="jeod__Planet"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="gravity_source"
      type="jeod__SphericalHarmonicsGravitySource"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="tt"
      type="jeod__TimeTT"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="ut1"
      type="jeod__TimeUT1"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gmst"
      type="jeod__TimeGMST"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="rnp"
      type="jeod__RNPJ2000"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init"
      type="jeod__NutationJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init"
      type="jeod__PolarMotionJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_default_data"
      type="jeod__Planet_earth_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="rnp_default_data"
      type="jeod__RNPJ2000_rnp_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init_default_data"
      type="jeod__NutationJ2000Init_nutation_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init_default_data"
      type="jeod__PolarMotionJ2000Init_xpyp_daily_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_grav_default_data"
      type="jeod__SphericalHarmonicsGravitySource_earth_GGM05C_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="utc"
      type="jeod__TimeUTC"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="wind_velocity"
      type="jeod__WindVelocity"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="atmos"
      type="jeod__METAtmosphere"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="wind_velocity_default_data"
      type="jeod__WindVelocity_wind_velocity_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="atmos_default_data"
      type="jeod__METAtmosphere_solar_mean_default_data"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="EnvironmentBasicSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_manager"
      type="jeod__GravityManager"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="EnvSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_manager"
      type="jeod__GravityManager"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="de4xx"
      type="jeod__De4xxEphemeris"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="TargetSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_body"
      type="jeod__DynBody"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="lvlh_frame"
      type="jeod__LvlhFrame"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="ChaserSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_body"
      type="jeod__DynBody"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="lvlh_rel_state"
      type="jeod__LvlhRelativeDerivedState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="cmd_force_effector"
      type="jeod__Force"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="GncSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="navigation"
      type="Navigation"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="guidance"
      type="Guidance"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="control"
      type="Control"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="meas_rel_pos"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
    <member
      name="meas_rel_vel"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
    <member
      name="setpoint_pos"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
    <member
      name="setpoint_vel"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
    <member
      name="cmd_force"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
  </class>

  <class name="jeod__TimeConverter_TAI_UT1_tai_to_ut1_default_data">
  </class>

  <class name="jeod__TimeConverter_TAI_UTC_tai_to_utc_default_data">
  </class>

  <class name="jeod__TimeConverter_Dyn_TAI">
    <member
      name="a_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="b_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialized"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="a_to_b_offset"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="valid_directions"
      type="jeod__TimeConverter__Direction"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="dyn_ptr"
      type="jeod__TimeDyn"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="tai_ptr"
      type="jeod__TimeTAI"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__TimeConverter_TAI_TT">
    <member
      name="a_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="b_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialized"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="a_to_b_offset"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="valid_directions"
      type="jeod__TimeConverter__Direction"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="tai_ptr"
      type="jeod__TimeTAI"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="tt_ptr"
      type="jeod__TimeTT"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__TimeConverter_TAI_UT1">
    <member
      name="a_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="b_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialized"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="a_to_b_offset"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="valid_directions"
      type="jeod__TimeConverter__Direction"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="override_data_table"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="tai_ptr"
      type="jeod__TimeTAI"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="ut1_ptr"
      type="jeod__TimeUT1"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="tai_to_ut1_override_val"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="last_index"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="index"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="val_vec"
      type="double"
      io_attributes="15"
      units="s">
      <dimension>0</dimension>
    </member>
    <member
      name="when_vec"
      type="double"
      io_attributes="15"
      units="day">
      <dimension>0</dimension>
    </member>
    <member
      name="prev_when"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="prev_value"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="next_when"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="next_value"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="gradient"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="off_table_end"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__TimeConverter_TAI_UTC">
    <member
      name="a_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="b_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialized"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="a_to_b_offset"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="valid_directions"
      type="jeod__TimeConverter__Direction"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="override_data_table"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="tai_ptr"
      type="jeod__TimeTAI"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="utc_ptr"
      type="jeod__TimeUTC"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="leap_sec_override_val"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="last_index"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="index"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="val_vec"
      type="int"
      io_attributes="15"
      units="s">
      <dimension>0</dimension>
    </member>
    <member
      name="when_vec"
      type="double"
      io_attributes="15"
      units="day">
      <dimension>0</dimension>
    </member>
    <member
      name="next_when"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="prev_when"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="off_table_end"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__TimeConverter_UT1_GMST">
    <member
      name="a_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="b_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialized"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="a_to_b_offset"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="valid_directions"
      type="jeod__TimeConverter__Direction"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="ut1_ptr"
      type="jeod__TimeUT1"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="gmst_ptr"
      type="jeod__TimeGMST"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__TimeGMST">
    <member
      name="initializing_value"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_converter_direction"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="seconds"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="name"
      type="jeod__NamedItem"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialize_from_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_from_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="update_converter_ptr"
      type="jeod__TimeConverter"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="index"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialized"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="days"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="initial_value"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="clock_resolution"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="links"
      type="jeod__TimeLinks"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="last_calendar_update"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="prev_julian_day"
      type="int"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="seconds_at_year_start"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="year_of_last_soy"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="send_warning_pre_1968"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="trunc_julian_time"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="julian_date"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="tjt_at_epoch"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="calendar_day"
      type="int"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="calendar_hour"
      type="int"
      io_attributes="15"
      units="hr">
    </member>
    <member
      name="calendar_minute"
      type="int"
      io_attributes="15"
      units="min">
    </member>
    <member
      name="calendar_second"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="calendar_year"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="calendar_month"
      type="int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <enumeration name="jeod__TimeEnum__TimeFormat">
    <pair label ="jeod::TimeEnum::undefined" value="-1"/>
    <pair label ="jeod::TimeEnum::Julian" value="0"/>
    <pair label ="jeod::TimeEnum::julian" value="1"/>
    <pair label ="jeod::TimeEnum::modified_julian" value="2"/>
    <pair label ="jeod::TimeEnum::truncated_julian" value="3"/>
    <pair label ="jeod::TimeEnum::calendar" value="4"/>
    <pair label ="jeod::TimeEnum::clock" value="5"/>
    <pair label ="jeod::TimeEnum::days_since_epoch" value="6"/>
    <pair label ="jeod::TimeEnum::seconds_since_epoch" value="7"/>
  </enumeration>

  <class name="jeod__TimeEnum">
  </class>

  <class name="jeod__TimeManagerInit">
    <member
      name="num_added_total"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sim_start_format"
      type="jeod__TimeEnum__TimeFormat"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="initializer"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initializer_index"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_time_index"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="num_added_pass"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="converter_ptrs_index"
      type="int"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="init_converter_dir_table"
      type="int"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="update_converter_dir_table"
      type="int"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="status"
      type="int"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__TimeTAI">
    <member
      name="initializing_value"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_converter_direction"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="seconds"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="name"
      type="jeod__NamedItem"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialize_from_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_from_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="update_converter_ptr"
      type="jeod__TimeConverter"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="index"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialized"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="days"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="initial_value"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="clock_resolution"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="links"
      type="jeod__TimeLinks"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="last_calendar_update"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="prev_julian_day"
      type="int"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="seconds_at_year_start"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="year_of_last_soy"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="send_warning_pre_1968"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="trunc_julian_time"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="julian_date"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="tjt_at_epoch"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="calendar_day"
      type="int"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="calendar_hour"
      type="int"
      io_attributes="15"
      units="hr">
    </member>
    <member
      name="calendar_minute"
      type="int"
      io_attributes="15"
      units="min">
    </member>
    <member
      name="calendar_second"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="calendar_year"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="calendar_month"
      type="int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__TimeTT">
    <member
      name="initializing_value"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_converter_direction"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="seconds"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="name"
      type="jeod__NamedItem"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialize_from_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_from_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="update_converter_ptr"
      type="jeod__TimeConverter"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="index"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialized"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="days"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="initial_value"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="clock_resolution"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="links"
      type="jeod__TimeLinks"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="last_calendar_update"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="prev_julian_day"
      type="int"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="seconds_at_year_start"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="year_of_last_soy"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="send_warning_pre_1968"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="trunc_julian_time"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="julian_date"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="tjt_at_epoch"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="calendar_day"
      type="int"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="calendar_hour"
      type="int"
      io_attributes="15"
      units="hr">
    </member>
    <member
      name="calendar_minute"
      type="int"
      io_attributes="15"
      units="min">
    </member>
    <member
      name="calendar_second"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="calendar_year"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="calendar_month"
      type="int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__TimeUT1">
    <member
      name="initializing_value"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_converter_direction"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="seconds"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="name"
      type="jeod__NamedItem"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialize_from_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="update_from_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="update_converter_ptr"
      type="jeod__TimeConverter"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="index"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialized"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="days"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="initial_value"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="clock_resolution"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="links"
      type="jeod__TimeLinks"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="last_calendar_update"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="prev_julian_day"
      type="int"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="seconds_at_year_start"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="year_of_last_soy"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="send_warning_pre_1968"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="trunc_julian_time"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="julian_date"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="tjt_at_epoch"
      type="double"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="calendar_day"
      type="int"
      io_attributes="15"
      units="day">
    </member>
    <member
      name="calendar_hour"
      type="int"
      io_attributes="15"
      units="hr">
    </member>
    <member
      name="calendar_minute"
      type="int"
      io_attributes="15"
      units="min">
    </member>
    <member
      name="calendar_second"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="calendar_year"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="calendar_month"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="true_ut1"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__JeodTrickMemoryInterface">
    <member
      name="id_prefix"
      type="std__string"
      io_attributes="5"
      units="--">
    </member>
    <member
      name="id_length"
      type="unsigned int"
      io_attributes="5"
      units="--">
    </member>
    <member
      name="mode"
      type="jeod__JeodSimulationInterface__Mode"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__JeodTrick10MemoryInterface">
    <member
      name="id_prefix"
      type="std__string"
      io_attributes="5"
      units="--">
    </member>
    <member
      name="id_length"
      type="unsigned int"
      io_attributes="5"
      units="--">
    </member>
    <member
      name="mode"
      type="jeod__JeodSimulationInterface__Mode"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__JeodPrimitiveSerializerBase">
  </class>

  <class name="jeod__SuppressedCodeMessageHandler">
    <member
      name="handler"
      type="jeod__MessageHandler"
      io_attributes="5"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="suppression_level"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="suppress_id"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="suppress_location"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mode"
      type="jeod__JeodSimulationInterface__Mode"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__TrickMessageHandler">
    <member
      name="handler"
      type="jeod__MessageHandler"
      io_attributes="5"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="suppression_level"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="suppress_id"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="suppress_location"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mode"
      type="jeod__JeodSimulationInterface__Mode"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__BasicJeodTrickSimInterface">
    <member
      name="sim_interface"
      type="jeod__JeodSimulationInterface"
      io_attributes="5"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="mode"
      type="jeod__JeodSimulationInterface__Mode"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="saved_mode"
      type="jeod__JeodSimulationInterface__Mode"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="generic_message_handler"
      type="jeod__MessageHandler"
      io_attributes="3"
      units="--">
    </member>
    <member
      name="trick_memory_interface"
      type="jeod__JeodTrick10MemoryInterface"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="memory_manager"
      type="jeod__JeodMemoryManager"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="checkpoint_file_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="section_start"
      type="std__string"
      io_attributes="5"
      units="--">
    </member>
    <member
      name="section_end"
      type="std__string"
      io_attributes="5"
      units="--">
    </member>
  </class>

  <class name="jeod__TrickMessageHandlerMixin">
    <member
      name="message_handler"
      type="jeod__TrickMessageHandler"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__JeodTrickSimInterface">
    <member
      name="message_handler"
      type="jeod__TrickMessageHandler"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sim_interface"
      type="jeod__JeodSimulationInterface"
      io_attributes="5"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="mode"
      type="jeod__JeodSimulationInterface__Mode"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="saved_mode"
      type="jeod__JeodSimulationInterface__Mode"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="generic_message_handler"
      type="jeod__MessageHandler"
      io_attributes="3"
      units="--">
    </member>
    <member
      name="trick_memory_interface"
      type="jeod__JeodTrick10MemoryInterface"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="memory_manager"
      type="jeod__JeodMemoryManager"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="checkpoint_file_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="section_start"
      type="std__string"
      io_attributes="5"
      units="--">
    </member>
    <member
      name="section_end"
      type="std__string"
      io_attributes="5"
      units="--">
    </member>
  </class>

  <class name="jeod__TrickJeodIntegrator">
    <member
      name="num_state"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="intermediate_step"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="first_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="last_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="is_2nd_order_ODE_technique"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="use_deriv2"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="dt"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopSimObject.cpp">
    </member>
    <member
      name="target_integ_time"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopScheduler.cpp. Final integration time regardless of">
    </member>
    <member
      name="state"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="deriv2"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="state_ws"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="time"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_0"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="verbosity"
      type="int"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="jeod__JeodTrickIntegrator">
    <member
      name="trick_integrator"
      type="jeod__TrickJeodIntegrator"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="default_first_step_deriv"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="SimEnvironment">
  </class>

  <class name="SysSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sched"
      type="Trick__Executive"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="MonteCarloSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mc"
      type="Trick__MonteCarlo"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="MemoryManagerSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mm"
      type="Trick__MemoryManager"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="CheckPointRestartSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cpr"
      type="Trick__CheckPointRestart"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="SieSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sie"
      type="Trick__Sie"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="CommandLineArgumentsSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cmd_args"
      type="Trick__CommandLineArguments"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="MessageSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mpublisher"
      type="Trick__MessagePublisher"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mcout"
      type="Trick__MessageCout"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mtcout"
      type="Trick__MessageThreadedCout"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mfile"
      type="Trick__MessageHSFile"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mdevice"
      type="Trick__MessageTCDevice"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pfile"
      type="Trick__PlaybackFile"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="message_file_manager"
      type="Trick__MessageCustomManager"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="JITSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="jit"
      type="Trick__JITInputFile"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="InputProcessorSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ip"
      type="Trick__IPPython"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mtv"
      type="Trick__MTV"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="ThreadProcessEventSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ep"
      type="Trick__EventProcessor"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="EventManagerSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="em"
      type="Trick__EventManager"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="ep"
      type="Trick__EventProcessor"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="VariableServerSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="vs"
      type="Trick__VariableServer"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="sim_control_panel"
      type="Trick__SimControlPanel"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="trick_view"
      type="Trick__TrickView"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="malfunctions_trick_view"
      type="Trick__MalfunctionsTrickView"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="stripchart"
      type="Trick__StripChart"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="monte_monitor"
      type="Trick__MonteMonitor"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="DataRecordDispatcherSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="drd"
      type="Trick__DataRecordDispatcher"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="RTSyncSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="gtod_clock"
      type="Trick__GetTimeOfDayClock"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="itimer"
      type="Trick__ITimer"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="rt_sync"
      type="Trick__RealtimeSync"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="FrameLogSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="frame_log"
      type="Trick__FrameLog"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="UnitTestSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="unit_tests"
      type="Trick__UnitTest"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="UdUnitsSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="udunits"
      type="Trick__UdUnits"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="JEODSysSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="message_handler"
      type="jeod__TrickMessageHandler"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="jeod_sim_interface"
      type="jeod__BasicJeodTrickSimInterface"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="interface_init"
      type="jeod__JeodSimulationInterfaceInit"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="JeodTimeSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_manager_init"
      type="jeod__TimeManagerInit"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_tai"
      type="jeod__TimeTAI"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_dyn_tai"
      type="jeod__TimeConverter_Dyn_TAI"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_utc"
      type="jeod__TimeUTC"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_utc"
      type="jeod__TimeConverter_TAI_UTC"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_utc_default_data"
      type="jeod__TimeConverter_TAI_UTC_tai_to_utc_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_ut1"
      type="jeod__TimeUT1"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_ut1"
      type="jeod__TimeConverter_TAI_UT1"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_ut1_default_data"
      type="jeod__TimeConverter_TAI_UT1_tai_to_ut1_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_tt"
      type="jeod__TimeTT"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_tt"
      type="jeod__TimeConverter_TAI_TT"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_gmst"
      type="jeod__TimeGMST"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_ut1_gmst"
      type="jeod__TimeConverter_UT1_GMST"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="DynamicsSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="dyn_manager_init"
      type="jeod__DynManagerInit"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="PlanetGenericSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="grav_manager"
      type="jeod__GravityManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet_default_data"
      type="jeod__Planet_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_default_data"
      type="jeod__SphericalHarmonicsGravitySource_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet"
      type="jeod__Planet"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="gravity_source"
      type="jeod__SphericalHarmonicsGravitySource"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Earth_GGM05C_SimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="grav_manager"
      type="jeod__GravityManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet_default_data"
      type="jeod__Planet_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_default_data"
      type="jeod__SphericalHarmonicsGravitySource_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet"
      type="jeod__Planet"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="gravity_source"
      type="jeod__SphericalHarmonicsGravitySource"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="tt"
      type="jeod__TimeTT"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="ut1"
      type="jeod__TimeUT1"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gmst"
      type="jeod__TimeGMST"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="rnp"
      type="jeod__RNPJ2000"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init"
      type="jeod__NutationJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init"
      type="jeod__PolarMotionJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_default_data"
      type="jeod__Planet_earth_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="rnp_default_data"
      type="jeod__RNPJ2000_rnp_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init_default_data"
      type="jeod__NutationJ2000Init_nutation_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init_default_data"
      type="jeod__PolarMotionJ2000Init_xpyp_daily_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_grav_default_data"
      type="jeod__SphericalHarmonicsGravitySource_earth_GGM05C_default_data"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Earth_GGM05C_MET_SimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="grav_manager"
      type="jeod__GravityManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet_default_data"
      type="jeod__Planet_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_default_data"
      type="jeod__SphericalHarmonicsGravitySource_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet"
      type="jeod__Planet"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="gravity_source"
      type="jeod__SphericalHarmonicsGravitySource"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="tt"
      type="jeod__TimeTT"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="ut1"
      type="jeod__TimeUT1"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gmst"
      type="jeod__TimeGMST"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="rnp"
      type="jeod__RNPJ2000"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init"
      type="jeod__NutationJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init"
      type="jeod__PolarMotionJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_default_data"
      type="jeod__Planet_earth_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="rnp_default_data"
      type="jeod__RNPJ2000_rnp_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init_default_data"
      type="jeod__NutationJ2000Init_nutation_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init_default_data"
      type="jeod__PolarMotionJ2000Init_xpyp_daily_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_grav_default_data"
      type="jeod__SphericalHarmonicsGravitySource_earth_GGM05C_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="utc"
      type="jeod__TimeUTC"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="wind_velocity"
      type="jeod__WindVelocity"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="atmos"
      type="jeod__METAtmosphere"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="wind_velocity_default_data"
      type="jeod__WindVelocity_wind_velocity_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="atmos_default_data"
      type="jeod__METAtmosphere_solar_mean_default_data"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="EnvironmentBasicSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_manager"
      type="jeod__GravityManager"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="EnvSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_manager"
      type="jeod__GravityManager"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="de4xx"
      type="jeod__De4xxEphemeris"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="TargetSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_body"
      type="jeod__DynBody"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="lvlh_frame"
      type="jeod__LvlhFrame"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="ChaserSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_body"
      type="jeod__DynBody"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="lvlh_rel_state"
      type="jeod__LvlhRelativeDerivedState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="cmd_force_effector"
      type="jeod__Force"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="GncSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="navigation"
      type="Navigation"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="guidance"
      type="Guidance"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="control"
      type="Control"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="meas_rel_pos"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
    <member
      name="meas_rel_vel"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
    <member
      name="setpoint_pos"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
    <member
      name="setpoint_vel"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
    <member
      name="cmd_force"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
  </class>

  <class name="jeod__BodyAction">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="terminate_on_error"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="action_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mass_subject"
      type="jeod__MassBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="dyn_subject"
      type="jeod__DynBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="action_identifier"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__DynBodyInit">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="terminate_on_error"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="action_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mass_subject"
      type="jeod__MassBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="dyn_subject"
      type="jeod__DynBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="action_identifier"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="body_frame_id"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="reference_ref_frame_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="state"
      type="jeod__RefFrameState"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="position"
      type="double"
      io_attributes="15"
      units="m">
      <dimension>3</dimension>
    </member>
    <member
      name="velocity"
      type="double"
      io_attributes="15"
      units="m/s">
      <dimension>3</dimension>
    </member>
    <member
      name="orientation"
      type="jeod__Orientation"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ang_velocity"
      type="double"
      io_attributes="15"
      units="rad/s">
      <dimension>3</dimension>
    </member>
    <member
      name="reverse_sense"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rate_in_parent"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__DynBodyInitWrtPlanet">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="terminate_on_error"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="action_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mass_subject"
      type="jeod__MassBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="dyn_subject"
      type="jeod__DynBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="action_identifier"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="body_frame_id"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="reference_ref_frame_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="state"
      type="jeod__RefFrameState"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="position"
      type="double"
      io_attributes="15"
      units="m">
      <dimension>3</dimension>
    </member>
    <member
      name="velocity"
      type="double"
      io_attributes="15"
      units="m/s">
      <dimension>3</dimension>
    </member>
    <member
      name="orientation"
      type="jeod__Orientation"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ang_velocity"
      type="double"
      io_attributes="15"
      units="rad/s">
      <dimension>3</dimension>
    </member>
    <member
      name="reverse_sense"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rate_in_parent"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="planet_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="set_items"
      type="jeod__RefFrameItems__Items"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__DynBodyInitPlanetDerived">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="terminate_on_error"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="action_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mass_subject"
      type="jeod__MassBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="dyn_subject"
      type="jeod__DynBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="action_identifier"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="body_frame_id"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="reference_ref_frame_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="state"
      type="jeod__RefFrameState"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="position"
      type="double"
      io_attributes="15"
      units="m">
      <dimension>3</dimension>
    </member>
    <member
      name="velocity"
      type="double"
      io_attributes="15"
      units="m/s">
      <dimension>3</dimension>
    </member>
    <member
      name="orientation"
      type="jeod__Orientation"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ang_velocity"
      type="double"
      io_attributes="15"
      units="rad/s">
      <dimension>3</dimension>
    </member>
    <member
      name="reverse_sense"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rate_in_parent"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="planet_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="set_items"
      type="jeod__RefFrameItems__Items"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ref_body_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__DynBodyInitLvlhState">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="terminate_on_error"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="action_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mass_subject"
      type="jeod__MassBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="dyn_subject"
      type="jeod__DynBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="action_identifier"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="body_frame_id"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="reference_ref_frame_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="state"
      type="jeod__RefFrameState"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="position"
      type="double"
      io_attributes="15"
      units="m">
      <dimension>3</dimension>
    </member>
    <member
      name="velocity"
      type="double"
      io_attributes="15"
      units="m/s">
      <dimension>3</dimension>
    </member>
    <member
      name="orientation"
      type="jeod__Orientation"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ang_velocity"
      type="double"
      io_attributes="15"
      units="rad/s">
      <dimension>3</dimension>
    </member>
    <member
      name="reverse_sense"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rate_in_parent"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="planet_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="set_items"
      type="jeod__RefFrameItems__Items"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ref_body_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="lvlh_type"
      type="jeod__LvlhType__Type"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="lvlh_object_ptr"
      type="jeod__LvlhFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="jeod__DynBodyInitLvlhRotState">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="terminate_on_error"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="action_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mass_subject"
      type="jeod__MassBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="dyn_subject"
      type="jeod__DynBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="action_identifier"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="body_frame_id"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="reference_ref_frame_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="state"
      type="jeod__RefFrameState"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="position"
      type="double"
      io_attributes="15"
      units="m">
      <dimension>3</dimension>
    </member>
    <member
      name="velocity"
      type="double"
      io_attributes="15"
      units="m/s">
      <dimension>3</dimension>
    </member>
    <member
      name="orientation"
      type="jeod__Orientation"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ang_velocity"
      type="double"
      io_attributes="15"
      units="rad/s">
      <dimension>3</dimension>
    </member>
    <member
      name="reverse_sense"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rate_in_parent"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="planet_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="set_items"
      type="jeod__RefFrameItems__Items"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ref_body_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="lvlh_type"
      type="jeod__LvlhType__Type"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="lvlh_object_ptr"
      type="jeod__LvlhFrame"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <enumeration name="jeod__DynBodyInitTransState__StateItems">
    <pair label ="jeod::DynBodyInitTransState::Both" value="0"/>
    <pair label ="jeod::DynBodyInitTransState::Position" value="1"/>
    <pair label ="jeod::DynBodyInitTransState::Velocity" value="2"/>
  </enumeration>

  <class name="jeod__DynBodyInitTransState">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="terminate_on_error"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="action_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mass_subject"
      type="jeod__MassBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="dyn_subject"
      type="jeod__DynBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="action_identifier"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="body_frame_id"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="reference_ref_frame_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="state"
      type="jeod__RefFrameState"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="position"
      type="double"
      io_attributes="15"
      units="m">
      <dimension>3</dimension>
    </member>
    <member
      name="velocity"
      type="double"
      io_attributes="15"
      units="m/s">
      <dimension>3</dimension>
    </member>
    <member
      name="orientation"
      type="jeod__Orientation"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ang_velocity"
      type="double"
      io_attributes="15"
      units="rad/s">
      <dimension>3</dimension>
    </member>
    <member
      name="reverse_sense"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rate_in_parent"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="state_items"
      type="jeod__DynBodyInitTransState__StateItems"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <enumeration name="jeod__MassPropertiesInit__InertiaSpec">
    <pair label ="jeod::MassPropertiesInit::NoSpec" value="0"/>
    <pair label ="jeod::MassPropertiesInit::Body" value="1"/>
    <pair label ="jeod::MassPropertiesInit::StructCG" value="2"/>
    <pair label ="jeod::MassPropertiesInit::Struct" value="3"/>
    <pair label ="jeod::MassPropertiesInit::SpecCG" value="4"/>
    <pair label ="jeod::MassPropertiesInit::Spec" value="5"/>
  </enumeration>

  <class name="jeod__MassPropertiesInit">
    <member
      name="position"
      type="double"
      io_attributes="15"
      units="m">
      <dimension>3</dimension>
    </member>
    <member
      name="pt_orientation"
      type="jeod__Orientation"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="pt_frame_spec"
      type="jeod__MassPointInit__FrameSpec"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mass"
      type="double"
      io_attributes="15"
      units="kg">
    </member>
    <member
      name="cm"
      type="double"
      io_attributes="15"
      units="m">
      <dimension>0</dimension>
    </member>
    <member
      name="inertia"
      type="double"
      io_attributes="15"
      units="kg*m2">
      <dimension>3</dimension>
      <dimension>3</dimension>
    </member>
    <member
      name="inertia_spec"
      type="jeod__MassPropertiesInit__InertiaSpec"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="inertia_offset"
      type="double"
      io_attributes="15"
      units="m">
      <dimension>3</dimension>
    </member>
    <member
      name="inertia_orientation"
      type="jeod__Orientation"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="jeod__MassBodyInit">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="terminate_on_error"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="action_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mass_subject"
      type="jeod__MassBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="dyn_subject"
      type="jeod__DynBody"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="action_identifier"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="properties"
      type="jeod__MassPropertiesInit"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="points"
      type="std__vector&lt;MassPointInit *>"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="SimEnvironment">
  </class>

  <class name="SysSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sched"
      type="Trick__Executive"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="MonteCarloSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mc"
      type="Trick__MonteCarlo"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="MemoryManagerSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mm"
      type="Trick__MemoryManager"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="CheckPointRestartSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cpr"
      type="Trick__CheckPointRestart"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="SieSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sie"
      type="Trick__Sie"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="CommandLineArgumentsSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cmd_args"
      type="Trick__CommandLineArguments"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="MessageSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mpublisher"
      type="Trick__MessagePublisher"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mcout"
      type="Trick__MessageCout"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mtcout"
      type="Trick__MessageThreadedCout"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mfile"
      type="Trick__MessageHSFile"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mdevice"
      type="Trick__MessageTCDevice"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pfile"
      type="Trick__PlaybackFile"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="message_file_manager"
      type="Trick__MessageCustomManager"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="JITSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="jit"
      type="Trick__JITInputFile"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="InputProcessorSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ip"
      type="Trick__IPPython"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mtv"
      type="Trick__MTV"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="ThreadProcessEventSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ep"
      type="Trick__EventProcessor"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="EventManagerSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="em"
      type="Trick__EventManager"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="ep"
      type="Trick__EventProcessor"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="VariableServerSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="vs"
      type="Trick__VariableServer"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="sim_control_panel"
      type="Trick__SimControlPanel"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="trick_view"
      type="Trick__TrickView"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="malfunctions_trick_view"
      type="Trick__MalfunctionsTrickView"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="stripchart"
      type="Trick__StripChart"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="monte_monitor"
      type="Trick__MonteMonitor"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="DataRecordDispatcherSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="drd"
      type="Trick__DataRecordDispatcher"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="RTSyncSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="gtod_clock"
      type="Trick__GetTimeOfDayClock"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="itimer"
      type="Trick__ITimer"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="rt_sync"
      type="Trick__RealtimeSync"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="FrameLogSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="frame_log"
      type="Trick__FrameLog"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="UnitTestSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="unit_tests"
      type="Trick__UnitTest"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="UdUnitsSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="udunits"
      type="Trick__UdUnits"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="JEODSysSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="message_handler"
      type="jeod__TrickMessageHandler"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="jeod_sim_interface"
      type="jeod__BasicJeodTrickSimInterface"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="interface_init"
      type="jeod__JeodSimulationInterfaceInit"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="JeodTimeSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_manager_init"
      type="jeod__TimeManagerInit"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_tai"
      type="jeod__TimeTAI"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_dyn_tai"
      type="jeod__TimeConverter_Dyn_TAI"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_utc"
      type="jeod__TimeUTC"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_utc"
      type="jeod__TimeConverter_TAI_UTC"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_utc_default_data"
      type="jeod__TimeConverter_TAI_UTC_tai_to_utc_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_ut1"
      type="jeod__TimeUT1"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_ut1"
      type="jeod__TimeConverter_TAI_UT1"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_ut1_default_data"
      type="jeod__TimeConverter_TAI_UT1_tai_to_ut1_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_tt"
      type="jeod__TimeTT"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_tt"
      type="jeod__TimeConverter_TAI_TT"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_gmst"
      type="jeod__TimeGMST"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_ut1_gmst"
      type="jeod__TimeConverter_UT1_GMST"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="DynamicsSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="dyn_manager_init"
      type="jeod__DynManagerInit"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="PlanetGenericSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="grav_manager"
      type="jeod__GravityManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet_default_data"
      type="jeod__Planet_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_default_data"
      type="jeod__SphericalHarmonicsGravitySource_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet"
      type="jeod__Planet"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="gravity_source"
      type="jeod__SphericalHarmonicsGravitySource"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Earth_GGM05C_SimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="grav_manager"
      type="jeod__GravityManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet_default_data"
      type="jeod__Planet_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_default_data"
      type="jeod__SphericalHarmonicsGravitySource_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet"
      type="jeod__Planet"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="gravity_source"
      type="jeod__SphericalHarmonicsGravitySource"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="tt"
      type="jeod__TimeTT"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="ut1"
      type="jeod__TimeUT1"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gmst"
      type="jeod__TimeGMST"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="rnp"
      type="jeod__RNPJ2000"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init"
      type="jeod__NutationJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init"
      type="jeod__PolarMotionJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_default_data"
      type="jeod__Planet_earth_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="rnp_default_data"
      type="jeod__RNPJ2000_rnp_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init_default_data"
      type="jeod__NutationJ2000Init_nutation_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init_default_data"
      type="jeod__PolarMotionJ2000Init_xpyp_daily_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_grav_default_data"
      type="jeod__SphericalHarmonicsGravitySource_earth_GGM05C_default_data"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Earth_GGM05C_MET_SimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="grav_manager"
      type="jeod__GravityManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet_default_data"
      type="jeod__Planet_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_default_data"
      type="jeod__SphericalHarmonicsGravitySource_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet"
      type="jeod__Planet"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="gravity_source"
      type="jeod__SphericalHarmonicsGravitySource"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="tt"
      type="jeod__TimeTT"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="ut1"
      type="jeod__TimeUT1"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gmst"
      type="jeod__TimeGMST"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="rnp"
      type="jeod__RNPJ2000"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init"
      type="jeod__NutationJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init"
      type="jeod__PolarMotionJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_default_data"
      type="jeod__Planet_earth_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="rnp_default_data"
      type="jeod__RNPJ2000_rnp_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init_default_data"
      type="jeod__NutationJ2000Init_nutation_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init_default_data"
      type="jeod__PolarMotionJ2000Init_xpyp_daily_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_grav_default_data"
      type="jeod__SphericalHarmonicsGravitySource_earth_GGM05C_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="utc"
      type="jeod__TimeUTC"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="wind_velocity"
      type="jeod__WindVelocity"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="atmos"
      type="jeod__METAtmosphere"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="wind_velocity_default_data"
      type="jeod__WindVelocity_wind_velocity_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="atmos_default_data"
      type="jeod__METAtmosphere_solar_mean_default_data"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="EnvironmentBasicSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_manager"
      type="jeod__GravityManager"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="EnvSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_manager"
      type="jeod__GravityManager"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="de4xx"
      type="jeod__De4xxEphemeris"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="TargetSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_body"
      type="jeod__DynBody"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="lvlh_frame"
      type="jeod__LvlhFrame"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="trans_init"
      type="jeod__DynBodyInitTransState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="lvlh_init"
      type="jeod__DynBodyInitLvlhRotState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mass_init"
      type="jeod__MassBodyInit"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="ChaserSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_body"
      type="jeod__DynBody"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="lvlh_rel_state"
      type="jeod__LvlhRelativeDerivedState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="cmd_force_effector"
      type="jeod__Force"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="trans_init"
      type="jeod__DynBodyInitTransState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="lvlh_init"
      type="jeod__DynBodyInitLvlhRotState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mass_init"
      type="jeod__MassBodyInit"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="GncSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="navigation"
      type="Navigation"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="guidance"
      type="Guidance"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="control"
      type="Control"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="meas_rel_pos"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
    <member
      name="meas_rel_vel"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
    <member
      name="setpoint_pos"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
    <member
      name="setpoint_vel"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
    <member
      name="cmd_force"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
  </class>

  <class name="HoldPoint">
    <member
      name="pos_target"
      type="double"
      io_attributes="15"
      units="m"
      description="Target relative position">
      <dimension>3</dimension>
    </member>
    <member
      name="vel_target"
      type="double"
      io_attributes="15"
      units="m/s"
      description="Target relative velocity">
      <dimension>3</dimension>
    </member>
    <member
      name="hold_duration"
      type="double"
      io_attributes="15"
      units="s"
      description="Dwell time before check">
    </member>
  </class>

  <class name="CorridorParams">
    <member
      name="half_angle_rad"
      type="double"
      io_attributes="15"
      units="rad"
      description="Cone half-angle about approach axis">
    </member>
    <member
      name="ellipsoid_semi_axes"
      type="double"
      io_attributes="15"
      units="m"
      description="Ellipsoid semi-axes">
      <dimension>3</dimension>
    </member>
    <member
      name="use_ellipsoid"
      type="bool"
      io_attributes="15"
      units="--"
      description="Ellipsoid or not">
    </member>
  </class>

  <enumeration name="GuidanceState">
    <pair label ="GuidanceState::APPROACH" value="0"/>
    <pair label ="GuidanceState::HOLD" value="1"/>
    <pair label ="GuidanceState::GO_NOGO_CHECK" value="2"/>
    <pair label ="GuidanceState::ABORT" value="3"/>
    <pair label ="GuidanceState::COMPLETE" value="4"/>
  </enumeration>

  <class name="Guidance">
    <member
      name="hold_points_"
      type="HoldPoint"
      io_attributes="15"
      units="--"
      description="Array of hold points">
      <dimension>10</dimension>
    </member>
    <member
      name="n_hold_points_"
      type="unsigned long"
      io_attributes="15"
      units="--"
      description="Number of points">
    </member>
    <member
      name="state_"
      type="GuidanceState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="current_leg_"
      type="unsigned long"
      io_attributes="15"
      units="--"
      description="Index of current hold point">
    </member>
    <member
      name="corridor_"
      type="CorridorParams"
      io_attributes="15"
      units="--"
      description="Corridor config">
    </member>
    <member
      name="abort_retreat_point_"
      type="double"
      io_attributes="15"
      units="m"
      description="Where to abort to">
      <dimension>3</dimension>
    </member>
    <member
      name="setpoint_pos_"
      type="double"
      io_attributes="15"
      units="m"
      description="Current setpoint position">
      <dimension>3</dimension>
    </member>
    <member
      name="setpoint_vel_"
      type="double"
      io_attributes="15"
      units="m/s"
      description="Current setpoint velocity">
      <dimension>3</dimension>
    </member>
    <member
      name="hold_entry_time_"
      type="double"
      io_attributes="15"
      units="s"
      description="Sim time entering HOLD">
    </member>
    <member
      name="last_corridor_violation_"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pos_tolerance_"
      type="double"
      io_attributes="15"
      units="m"
      description="Setpoint position tolerance">
    </member>
    <member
      name="vel_tolerance_"
      type="double"
      io_attributes="15"
      units="m/s"
      description="Setpoint velocity tolerance">
    </member>
  </class>

  <class name="HoldPoint">
    <member
      name="pos_target"
      type="double"
      io_attributes="15"
      units="m"
      description="Target relative position">
      <dimension>3</dimension>
    </member>
    <member
      name="vel_target"
      type="double"
      io_attributes="15"
      units="m/s"
      description="Target relative velocity">
      <dimension>3</dimension>
    </member>
    <member
      name="hold_duration"
      type="double"
      io_attributes="15"
      units="s"
      description="Dwell time before check">
    </member>
  </class>

  <class name="CorridorParams">
    <member
      name="half_angle_rad"
      type="double"
      io_attributes="15"
      units="rad"
      description="Cone half-angle about approach axis">
    </member>
    <member
      name="ellipsoid_semi_axes"
      type="double"
      io_attributes="15"
      units="m"
      description="Ellipsoid semi-axes">
      <dimension>3</dimension>
    </member>
    <member
      name="use_ellipsoid"
      type="bool"
      io_attributes="15"
      units="--"
      description="Ellipsoid or not">
    </member>
  </class>

  <enumeration name="GuidanceState">
    <pair label ="GuidanceState::APPROACH" value="0"/>
    <pair label ="GuidanceState::HOLD" value="1"/>
    <pair label ="GuidanceState::GO_NOGO_CHECK" value="2"/>
    <pair label ="GuidanceState::ABORT" value="3"/>
    <pair label ="GuidanceState::COMPLETE" value="4"/>
  </enumeration>

  <class name="Guidance">
    <member
      name="hold_points_"
      type="HoldPoint"
      io_attributes="15"
      units="--"
      description="Array of hold points">
      <dimension>10</dimension>
    </member>
    <member
      name="n_hold_points_"
      type="unsigned long"
      io_attributes="15"
      units="--"
      description="Number of points">
    </member>
    <member
      name="state_"
      type="GuidanceState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="current_leg_"
      type="unsigned long"
      io_attributes="15"
      units="--"
      description="Index of current hold point">
    </member>
    <member
      name="corridor_"
      type="CorridorParams"
      io_attributes="15"
      units="--"
      description="Corridor config">
    </member>
    <member
      name="abort_retreat_point_"
      type="double"
      io_attributes="15"
      units="m"
      description="Where to abort to">
      <dimension>3</dimension>
    </member>
    <member
      name="setpoint_pos_"
      type="double"
      io_attributes="15"
      units="m"
      description="Current setpoint position">
      <dimension>3</dimension>
    </member>
    <member
      name="setpoint_vel_"
      type="double"
      io_attributes="15"
      units="m/s"
      description="Current setpoint velocity">
      <dimension>3</dimension>
    </member>
    <member
      name="hold_entry_time_"
      type="double"
      io_attributes="15"
      units="s"
      description="Sim time entering HOLD">
    </member>
    <member
      name="last_corridor_violation_"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pos_tolerance_"
      type="double"
      io_attributes="15"
      units="m"
      description="Setpoint position tolerance">
    </member>
    <member
      name="vel_tolerance_"
      type="double"
      io_attributes="15"
      units="m/s"
      description="Setpoint velocity tolerance">
    </member>
  </class>

  <class name="HoldPoint">
    <member
      name="pos_target"
      type="double"
      io_attributes="15"
      units="m"
      description="Target relative position">
      <dimension>3</dimension>
    </member>
    <member
      name="vel_target"
      type="double"
      io_attributes="15"
      units="m/s"
      description="Target relative velocity">
      <dimension>3</dimension>
    </member>
    <member
      name="hold_duration"
      type="double"
      io_attributes="15"
      units="s"
      description="Dwell time before check">
    </member>
  </class>

  <class name="CorridorParams">
    <member
      name="half_angle_rad"
      type="double"
      io_attributes="15"
      units="rad"
      description="Cone half-angle about approach axis">
    </member>
    <member
      name="ellipsoid_semi_axes"
      type="double"
      io_attributes="15"
      units="m"
      description="Ellipsoid semi-axes">
      <dimension>3</dimension>
    </member>
    <member
      name="use_ellipsoid"
      type="bool"
      io_attributes="15"
      units="--"
      description="Ellipsoid or not">
    </member>
  </class>

  <enumeration name="GuidanceState">
    <pair label ="GuidanceState::APPROACH" value="0"/>
    <pair label ="GuidanceState::HOLD" value="1"/>
    <pair label ="GuidanceState::GO_NOGO_CHECK" value="2"/>
    <pair label ="GuidanceState::ABORT" value="3"/>
    <pair label ="GuidanceState::COMPLETE" value="4"/>
  </enumeration>

  <class name="Guidance">
    <member
      name="hold_points_"
      type="HoldPoint"
      io_attributes="15"
      units="--"
      description="Array of hold points">
      <dimension>10</dimension>
    </member>
    <member
      name="n_hold_points_"
      type="unsigned long"
      io_attributes="15"
      units="--"
      description="Number of points">
    </member>
    <member
      name="state_"
      type="GuidanceState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="current_leg_"
      type="unsigned long"
      io_attributes="15"
      units="--"
      description="Index of current hold point">
    </member>
    <member
      name="corridor_"
      type="CorridorParams"
      io_attributes="15"
      units="--"
      description="Corridor config">
    </member>
    <member
      name="abort_retreat_point_"
      type="double"
      io_attributes="15"
      units="m"
      description="Where to abort to">
      <dimension>3</dimension>
    </member>
    <member
      name="setpoint_pos_"
      type="double"
      io_attributes="15"
      units="m"
      description="Current setpoint position">
      <dimension>3</dimension>
    </member>
    <member
      name="setpoint_vel_"
      type="double"
      io_attributes="15"
      units="m/s"
      description="Current setpoint velocity">
      <dimension>3</dimension>
    </member>
    <member
      name="hold_entry_time_"
      type="double"
      io_attributes="15"
      units="s"
      description="Sim time entering HOLD">
    </member>
    <member
      name="last_corridor_violation_"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pos_tolerance_"
      type="double"
      io_attributes="15"
      units="m"
      description="Setpoint position tolerance">
    </member>
    <member
      name="vel_tolerance_"
      type="double"
      io_attributes="15"
      units="m/s"
      description="Setpoint velocity tolerance">
    </member>
  </class>

  <class name="SimEnvironment">
  </class>

  <class name="SysSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sched"
      type="Trick__Executive"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="MonteCarloSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mc"
      type="Trick__MonteCarlo"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="MemoryManagerSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mm"
      type="Trick__MemoryManager"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="CheckPointRestartSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cpr"
      type="Trick__CheckPointRestart"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="SieSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sie"
      type="Trick__Sie"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="CommandLineArgumentsSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cmd_args"
      type="Trick__CommandLineArguments"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="MessageSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mpublisher"
      type="Trick__MessagePublisher"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mcout"
      type="Trick__MessageCout"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mtcout"
      type="Trick__MessageThreadedCout"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mfile"
      type="Trick__MessageHSFile"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mdevice"
      type="Trick__MessageTCDevice"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pfile"
      type="Trick__PlaybackFile"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="message_file_manager"
      type="Trick__MessageCustomManager"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="JITSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="jit"
      type="Trick__JITInputFile"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="InputProcessorSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ip"
      type="Trick__IPPython"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mtv"
      type="Trick__MTV"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="ThreadProcessEventSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ep"
      type="Trick__EventProcessor"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="EventManagerSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="em"
      type="Trick__EventManager"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="ep"
      type="Trick__EventProcessor"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="VariableServerSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="vs"
      type="Trick__VariableServer"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="sim_control_panel"
      type="Trick__SimControlPanel"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="trick_view"
      type="Trick__TrickView"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="malfunctions_trick_view"
      type="Trick__MalfunctionsTrickView"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="stripchart"
      type="Trick__StripChart"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="monte_monitor"
      type="Trick__MonteMonitor"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="DataRecordDispatcherSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="drd"
      type="Trick__DataRecordDispatcher"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="RTSyncSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="gtod_clock"
      type="Trick__GetTimeOfDayClock"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="itimer"
      type="Trick__ITimer"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="rt_sync"
      type="Trick__RealtimeSync"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="FrameLogSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="frame_log"
      type="Trick__FrameLog"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="UnitTestSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="unit_tests"
      type="Trick__UnitTest"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="UdUnitsSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="udunits"
      type="Trick__UdUnits"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="JEODSysSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="message_handler"
      type="jeod__TrickMessageHandler"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="jeod_sim_interface"
      type="jeod__BasicJeodTrickSimInterface"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="interface_init"
      type="jeod__JeodSimulationInterfaceInit"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="JeodTimeSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_manager_init"
      type="jeod__TimeManagerInit"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_tai"
      type="jeod__TimeTAI"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_dyn_tai"
      type="jeod__TimeConverter_Dyn_TAI"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_utc"
      type="jeod__TimeUTC"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_utc"
      type="jeod__TimeConverter_TAI_UTC"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_utc_default_data"
      type="jeod__TimeConverter_TAI_UTC_tai_to_utc_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_ut1"
      type="jeod__TimeUT1"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_ut1"
      type="jeod__TimeConverter_TAI_UT1"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_ut1_default_data"
      type="jeod__TimeConverter_TAI_UT1_tai_to_ut1_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_tt"
      type="jeod__TimeTT"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_tt"
      type="jeod__TimeConverter_TAI_TT"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_gmst"
      type="jeod__TimeGMST"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_ut1_gmst"
      type="jeod__TimeConverter_UT1_GMST"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="DynamicsSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="dyn_manager_init"
      type="jeod__DynManagerInit"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="PlanetGenericSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="grav_manager"
      type="jeod__GravityManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet_default_data"
      type="jeod__Planet_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_default_data"
      type="jeod__SphericalHarmonicsGravitySource_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet"
      type="jeod__Planet"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="gravity_source"
      type="jeod__SphericalHarmonicsGravitySource"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Earth_GGM05C_SimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="grav_manager"
      type="jeod__GravityManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet_default_data"
      type="jeod__Planet_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_default_data"
      type="jeod__SphericalHarmonicsGravitySource_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet"
      type="jeod__Planet"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="gravity_source"
      type="jeod__SphericalHarmonicsGravitySource"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="tt"
      type="jeod__TimeTT"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="ut1"
      type="jeod__TimeUT1"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gmst"
      type="jeod__TimeGMST"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="rnp"
      type="jeod__RNPJ2000"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init"
      type="jeod__NutationJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init"
      type="jeod__PolarMotionJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_default_data"
      type="jeod__Planet_earth_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="rnp_default_data"
      type="jeod__RNPJ2000_rnp_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init_default_data"
      type="jeod__NutationJ2000Init_nutation_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init_default_data"
      type="jeod__PolarMotionJ2000Init_xpyp_daily_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_grav_default_data"
      type="jeod__SphericalHarmonicsGravitySource_earth_GGM05C_default_data"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Earth_GGM05C_MET_SimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="grav_manager"
      type="jeod__GravityManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet_default_data"
      type="jeod__Planet_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_default_data"
      type="jeod__SphericalHarmonicsGravitySource_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet"
      type="jeod__Planet"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="gravity_source"
      type="jeod__SphericalHarmonicsGravitySource"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="tt"
      type="jeod__TimeTT"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="ut1"
      type="jeod__TimeUT1"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gmst"
      type="jeod__TimeGMST"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="rnp"
      type="jeod__RNPJ2000"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init"
      type="jeod__NutationJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init"
      type="jeod__PolarMotionJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_default_data"
      type="jeod__Planet_earth_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="rnp_default_data"
      type="jeod__RNPJ2000_rnp_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init_default_data"
      type="jeod__NutationJ2000Init_nutation_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init_default_data"
      type="jeod__PolarMotionJ2000Init_xpyp_daily_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_grav_default_data"
      type="jeod__SphericalHarmonicsGravitySource_earth_GGM05C_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="utc"
      type="jeod__TimeUTC"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="wind_velocity"
      type="jeod__WindVelocity"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="atmos"
      type="jeod__METAtmosphere"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="wind_velocity_default_data"
      type="jeod__WindVelocity_wind_velocity_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="atmos_default_data"
      type="jeod__METAtmosphere_solar_mean_default_data"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="EnvironmentBasicSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_manager"
      type="jeod__GravityManager"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="EnvSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_manager"
      type="jeod__GravityManager"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="de4xx"
      type="jeod__De4xxEphemeris"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="TargetSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_body"
      type="jeod__DynBody"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="lvlh_frame"
      type="jeod__LvlhFrame"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="trans_init"
      type="jeod__DynBodyInitTransState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="lvlh_init"
      type="jeod__DynBodyInitLvlhRotState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mass_init"
      type="jeod__MassBodyInit"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="ChaserSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_body"
      type="jeod__DynBody"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="lvlh_rel_state"
      type="jeod__LvlhRelativeDerivedState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="cmd_force_effector"
      type="jeod__Force"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="trans_init"
      type="jeod__DynBodyInitTransState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="lvlh_init"
      type="jeod__DynBodyInitLvlhRotState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mass_init"
      type="jeod__MassBodyInit"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="GncSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="navigation"
      type="Navigation"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="guidance"
      type="Guidance"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="control"
      type="Control"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="meas_rel_pos"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
    <member
      name="meas_rel_vel"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
    <member
      name="setpoint_pos"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
    <member
      name="setpoint_vel"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
    <member
      name="cmd_force"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>3</dimension>
    </member>
  </class>

  <class name="SimEnvironment">
  </class>

  <class name="SysSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sched"
      type="Trick__Executive"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="MonteCarloSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mc"
      type="Trick__MonteCarlo"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="MemoryManagerSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mm"
      type="Trick__MemoryManager"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="CheckPointRestartSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cpr"
      type="Trick__CheckPointRestart"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="SieSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sie"
      type="Trick__Sie"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="CommandLineArgumentsSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cmd_args"
      type="Trick__CommandLineArguments"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="MessageSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mpublisher"
      type="Trick__MessagePublisher"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mcout"
      type="Trick__MessageCout"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mtcout"
      type="Trick__MessageThreadedCout"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mfile"
      type="Trick__MessageHSFile"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mdevice"
      type="Trick__MessageTCDevice"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pfile"
      type="Trick__PlaybackFile"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="message_file_manager"
      type="Trick__MessageCustomManager"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="JITSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="jit"
      type="Trick__JITInputFile"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="InputProcessorSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ip"
      type="Trick__IPPython"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mtv"
      type="Trick__MTV"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="ThreadProcessEventSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ep"
      type="Trick__EventProcessor"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="EventManagerSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="em"
      type="Trick__EventManager"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="ep"
      type="Trick__EventProcessor"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="VariableServerSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="vs"
      type="Trick__VariableServer"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="sim_control_panel"
      type="Trick__SimControlPanel"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="trick_view"
      type="Trick__TrickView"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="malfunctions_trick_view"
      type="Trick__MalfunctionsTrickView"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="stripchart"
      type="Trick__StripChart"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="monte_monitor"
      type="Trick__MonteMonitor"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="DataRecordDispatcherSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="drd"
      type="Trick__DataRecordDispatcher"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="RTSyncSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="gtod_clock"
      type="Trick__GetTimeOfDayClock"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="itimer"
      type="Trick__ITimer"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="rt_sync"
      type="Trick__RealtimeSync"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="FrameLogSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="frame_log"
      type="Trick__FrameLog"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="UnitTestSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="unit_tests"
      type="Trick__UnitTest"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="UdUnitsSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="udunits"
      type="Trick__UdUnits"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="JEODSysSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="message_handler"
      type="jeod__TrickMessageHandler"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="jeod_sim_interface"
      type="jeod__BasicJeodTrickSimInterface"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="interface_init"
      type="jeod__JeodSimulationInterfaceInit"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="JeodTimeSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_manager_init"
      type="jeod__TimeManagerInit"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_tai"
      type="jeod__TimeTAI"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_dyn_tai"
      type="jeod__TimeConverter_Dyn_TAI"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_utc"
      type="jeod__TimeUTC"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_utc"
      type="jeod__TimeConverter_TAI_UTC"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_utc_default_data"
      type="jeod__TimeConverter_TAI_UTC_tai_to_utc_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_ut1"
      type="jeod__TimeUT1"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_ut1"
      type="jeod__TimeConverter_TAI_UT1"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_ut1_default_data"
      type="jeod__TimeConverter_TAI_UT1_tai_to_ut1_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_tt"
      type="jeod__TimeTT"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_tai_tt"
      type="jeod__TimeConverter_TAI_TT"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_gmst"
      type="jeod__TimeGMST"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_converter_ut1_gmst"
      type="jeod__TimeConverter_UT1_GMST"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="DynamicsSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="dyn_manager_init"
      type="jeod__DynManagerInit"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="PlanetGenericSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="grav_manager"
      type="jeod__GravityManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet_default_data"
      type="jeod__Planet_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_default_data"
      type="jeod__SphericalHarmonicsGravitySource_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet"
      type="jeod__Planet"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="gravity_source"
      type="jeod__SphericalHarmonicsGravitySource"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Earth_GGM05C_SimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="grav_manager"
      type="jeod__GravityManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet_default_data"
      type="jeod__Planet_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_default_data"
      type="jeod__SphericalHarmonicsGravitySource_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet"
      type="jeod__Planet"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="gravity_source"
      type="jeod__SphericalHarmonicsGravitySource"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="tt"
      type="jeod__TimeTT"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="ut1"
      type="jeod__TimeUT1"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gmst"
      type="jeod__TimeGMST"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="rnp"
      type="jeod__RNPJ2000"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init"
      type="jeod__NutationJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init"
      type="jeod__PolarMotionJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_default_data"
      type="jeod__Planet_earth_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="rnp_default_data"
      type="jeod__RNPJ2000_rnp_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init_default_data"
      type="jeod__NutationJ2000Init_nutation_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init_default_data"
      type="jeod__PolarMotionJ2000Init_xpyp_daily_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_grav_default_data"
      type="jeod__SphericalHarmonicsGravitySource_earth_GGM05C_default_data"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Earth_GGM05C_MET_SimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="grav_manager"
      type="jeod__GravityManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet_default_data"
      type="jeod__Planet_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_default_data"
      type="jeod__SphericalHarmonicsGravitySource_default_data"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="planet"
      type="jeod__Planet"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="gravity_source"
      type="jeod__SphericalHarmonicsGravitySource"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="tt"
      type="jeod__TimeTT"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="ut1"
      type="jeod__TimeUT1"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gmst"
      type="jeod__TimeGMST"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="rnp"
      type="jeod__RNPJ2000"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init"
      type="jeod__NutationJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init"
      type="jeod__PolarMotionJ2000Init"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_default_data"
      type="jeod__Planet_earth_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="rnp_default_data"
      type="jeod__RNPJ2000_rnp_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="nut_init_default_data"
      type="jeod__NutationJ2000Init_nutation_j2000_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="pm_init_default_data"
      type="jeod__PolarMotionJ2000Init_xpyp_daily_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="earth_grav_default_data"
      type="jeod__SphericalHarmonicsGravitySource_earth_GGM05C_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="utc"
      type="jeod__TimeUTC"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="wind_velocity"
      type="jeod__WindVelocity"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="atmos"
      type="jeod__METAtmosphere"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="wind_velocity_default_data"
      type="jeod__WindVelocity_wind_velocity_default_data"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="atmos_default_data"
      type="jeod__METAtmosphere_solar_mean_default_data"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="EnvironmentBasicSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_manager"
      type="jeod__GravityManager"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="EnvSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_manager"
      type="jeod__DynManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="gravity_manager"
      type="jeod__GravityManager"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_manager"
      type="jeod__TimeManager"
      io_attributes="3"
      units="1">
    </member>
    <member
      name="de4xx"
      type="jeod__De4xxEphemeris"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="TargetSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_body"
      type="jeod__DynBody"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="lvlh_frame"
      type="jeod__LvlhFrame"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="trans_init"
      type="jeod__DynBodyInitTransState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="lvlh_init"
      type="jeod__DynBodyInitLvlhRotState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mass_init"
      type="jeod__MassBodyInit"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="ChaserSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dyn_body"
      type="jeod__DynBody"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="lvlh_rel_state"
      type="jeod__LvlhRelativeDerivedState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="cmd_force_effector"
      type="jeod__Force"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="trans_init"
      type="jeod__DynBodyInitTransState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="lvlh_init"
      type="jeod__DynBodyInitLvlhRotState"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="mass_init"
      type="jeod__MassBodyInit"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="GncSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="navigation"
      type="Navigation"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="guidance"
      type="Guidance"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="control"
      type="Control"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="meas_rel_pos"
      type="double"
      io_attributes="15"
      units="m"
      description="Measured relative position">
      <dimension>3</dimension>
    </member>
    <member
      name="meas_rel_vel"
      type="double"
      io_attributes="15"
      units="m/s"
      description="Measured relative velocity">
      <dimension>3</dimension>
    </member>
    <member
      name="setpoint_pos"
      type="double"
      io_attributes="15"
      units="m"
      description="Setpoint position">
      <dimension>3</dimension>
    </member>
    <member
      name="setpoint_vel"
      type="double"
      io_attributes="15"
      units="m/s"
      description="Setpoint velocity">
      <dimension>3</dimension>
    </member>
    <member
      name="cmd_force"
      type="double"
      io_attributes="15"
      units="N"
      description="Commanded force">
      <dimension>3</dimension>
    </member>
  </class>

  <top_level_object
    name="trick_sys"
    type="SysSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="trick_mc"
    type="MonteCarloSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="trick_mm"
    type="MemoryManagerSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="trick_cpr"
    type="CheckPointRestartSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="trick_sie"
    type="SieSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="trick_cmd_args"
    type="CommandLineArgumentsSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="trick_message"
    type="MessageSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="trick_jit"
    type="JITSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="trick_ip"
    type="InputProcessorSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="trick_em"
    type="EventManagerSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="trick_vs"
    type="VariableServerSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="trick_data_record"
    type="DataRecordDispatcherSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="trick_real_time"
    type="RTSyncSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="trick_frame_log"
    type="FrameLogSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="trick_utest"
    type="UnitTestSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="trick_udunits"
    type="UdUnitsSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="jeod_sys"
    type="JEODSysSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="jeod_time"
    type="JeodTimeSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="dynamics"
    type="DynamicsSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="earth"
    type="Earth_GGM05C_MET_SimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="env"
    type="EnvSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="target"
    type="TargetSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="chaser"
    type="ChaserSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="gnc"
    type="GncSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <top_level_object
    name="sim_integ_loop"
    type="IntegLoopSimObject"
    alloc_memory_init="1">
  </top_level_object>

  <class name="TRANSFORM">
    <member
      name="euler_sequence"
      type="Euler_Seq"
      io_attributes="15"
      units="--"
      description="Euler rotation sequence">
    </member>
    <member
      name="euler_angles"
      type="double"
      io_attributes="15"
      units="rad"
      description="Euler rot angles from Frame 1 to Frame 2">
      <dimension>3</dimension>
    </member>
    <member
      name="location"
      type="double"
      io_attributes="15"
      units="m"
      description="Frame 1 origin to Frame 2 origin vector, referenced to Frame 1">
      <dimension>3</dimension>
    </member>
  </class>

  <class name="Trick__Clock">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="clock_tics_per_sec"
      type="unsigned long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rt_clock_ratio"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sim_tic_ratio"
      type="double"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__GetTimeOfDayClock">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="clock_tics_per_sec"
      type="unsigned long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rt_clock_ratio"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sim_tic_ratio"
      type="double"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__CommandLineArguments">
    <member
      name="output_dir_timestamped"
      type="bool"
      io_attributes="15"
      units="--"
      description="record data into a separate timestamped directory">
    </member>
    <member
      name="default_dir"
      type="std__string"
      io_attributes="15"
      units="--"
      description="Directory of executable">
    </member>
    <member
      name="cmdline_name"
      type="std__string"
      io_attributes="15"
      units="--"
      description="Name of sim from the cmdline">
    </member>
    <member
      name="run_dir"
      type="std__string"
      io_attributes="15"
      units="--"
      description="Run directory name &quot;RUN_&lt;unique_tag>&quot;">
    </member>
    <member
      name="user_output_dir"
      type="std__string"
      io_attributes="15"
      units="--"
      description="user specified output dir">
    </member>
    <member
      name="time_stamp_dir"
      type="std__string"
      io_attributes="15"
      units="--"
      description="time stamp sub directory">
    </member>
    <member
      name="output_dir"
      type="std__string"
      io_attributes="15"
      units="--"
      description="Directory name to hols S_job_execution, chkpnt_* files, and the rt logging files">
    </member>
    <member
      name="input_file"
      type="std__string"
      io_attributes="15"
      units="--"
      description="Simulation input data file name">
    </member>
  </class>

  <class name="Trick__InstrumentBase">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="phase"
      type="unsigned short"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="target_job"
      type="Trick__JobData"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="Trick__JobData">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="complete"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="handled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="isTopOfFrame"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="isEndOfFrame"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cycle"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="start"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="stop"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="job_class"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="job_class_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="system_job_class"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="phase"
      type="unsigned short"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="tags"
      type="std__set&lt;std__string>"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="thread"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sim_object_id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cycle_tics"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="start_tics"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="stop_tics"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="next_tics"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__ScheduledJobQueue">
    <member
      name="list_size"
      type="unsigned int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="curr_index"
      type="unsigned int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="next_job_time"
      type="long long"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__SimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__Scheduler">
  </class>

  <class name="Trick__ThreadBase">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rt_priority"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__ThreadTriggerBase">
    <member
      name="tt_type"
      type="Trick__ThreadTriggerType"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__ThreadTriggerMutex">
    <member
      name="tt_type"
      type="Trick__ThreadTriggerType"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__ThreadTriggerFlag">
    <member
      name="tt_type"
      type="Trick__ThreadTriggerType"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__ThreadTriggerEventFD">
    <member
      name="tt_type"
      type="Trick__ThreadTriggerType"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__ThreadTriggerFutex">
    <member
      name="tt_type"
      type="Trick__ThreadTriggerType"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__ThreadTriggerContainer">
    <member
      name="trigger_type"
      type="Trick__ThreadTriggerType"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="ttMutex"
      type="Trick__ThreadTriggerMutex"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="ttFlag"
      type="Trick__ThreadTriggerFlag"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="ttEventFD"
      type="Trick__ThreadTriggerEventFD"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="ttFutex"
      type="Trick__ThreadTriggerFutex"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="ttBase"
      type="Trick__ThreadTriggerBase"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="Trick__Threads">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rt_priority"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="thread_id"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="curr_time_tics"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="amf_cycle"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="amf_cycle_tics"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="amf_next_tics"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="running"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="trigger_container"
      type="Trick__ThreadTriggerContainer"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="shutdown_wait_async"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__Executive">
    <member
      name="attach_debugger"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="debugger_command"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="enable_freeze"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="stack_trace"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="trap_sigbus"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="trap_sigfpe"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="trap_sigsegv"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="trap_sigabrt"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="trap_sigchld"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="initialization_complete"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rt_nap"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="software_frame"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="software_frame_tics"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="frame_count"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="freeze_frame_count"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="freeze_times"
      type="std__priority_queue&lt;long long, std__vector&lt;long long>, std__greater&lt;long long> >"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="freeze_frame"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="freeze_frame_tics"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="next_frame_check_tics"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="v_context_switch_init"
      type="long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="iv_context_switch_init"
      type="long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mode"
      type="SIM_MODE"
      io_attributes="5"
      units="--">
    </member>
    <member
      name="terminate_time"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="time_tic_value"
      type="int"
      io_attributes="15"
      units="1/s">
    </member>
    <member
      name="old_time_tic_value"
      type="int"
      io_attributes="15"
      units="1/s">
    </member>
    <member
      name="time_tics"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="freeze_time_tics"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="next_freeze_frame_check_tics"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="freeze_command"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="freeze_on_frame_boundary"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sim_start"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="time_last_pass_tics"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="job_call_time_tics"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="num_classes"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="num_all_jobs"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="all_jobs_for_checkpoint"
      type="Trick__JobData"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="num_sim_objects"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sim_objects"
      type="std__vector&lt;Trick__SimObject *>"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="version_date_tag"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="build_date"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="current_version"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__ExecutiveException">
  </class>

  <class name="Trick__Environment">
  </class>

  <class name="ENUM_ATTR">
    <member
      name="label"
      type="char"
      io_attributes="15"
      units="--"
      description="Enumeration label">
      <dimension>0</dimension>
    </member>
    <member
      name="value"
      type="int"
      io_attributes="15"
      units="--"
      description="Enumeration value">
    </member>
    <member
      name="mods"
      type="int"
      io_attributes="15"
      units="--"
      description="bit 31 = deprecated var bit 30 = unsigned enum underlying type (0x40000000)">
    </member>
  </class>

  <class name="INDEX">
    <member
      name="size"
      type="int"
      io_attributes="15"
      units="--"
      description="If ATTRIBUTES.type == TRICK_BITFIELD or ATTRIBUTES.type == TRICK_UNSIGNED_BITFIELD, then ATTRIBUTES.index.size[0] represents the number of bits in the bitfield. Otherwise: 0 indicates that the array is dynamic, i.e., may have any natural number of array elements. > 0 indicates that the array is fixed (constrained). The value specifies the maximum number of elements in the array.">
    </member>
    <member
      name="start"
      type="int"
      io_attributes="15"
      units="--"
      description="If ATTRIBUTES.type == TRICK_BITFIELD or ATTRIBUTES.type == TRICK_UNSIGNED_BITFIELD, then start represents the bit position (in the range 0:31) of the most significant bit of the bit field.">
    </member>
  </class>

  <class name="ATTRIBUTES_tag">
    <member
      name="name"
      type="char"
      io_attributes="15"
      units="--"
      description="Name of the variable of variable element of a structure.">
      <dimension>0</dimension>
    </member>
    <member
      name="type_name"
      type="char"
      io_attributes="15"
      units="--"
      description="Character string representation of the C/C++ data type or user-defined type.">
      <dimension>0</dimension>
    </member>
    <member
      name="units"
      type="char"
      io_attributes="15"
      units="--"
      description="Units of measurement. Units string specification as described WHERE?">
      <dimension>0</dimension>
    </member>
    <member
      name="alias"
      type="char"
      io_attributes="15"
      units="--"
      description="OBSOLETE.">
      <dimension>0</dimension>
    </member>
    <member
      name="user_defined"
      type="char"
      io_attributes="15"
      units="--"
      description="OBSOLETE.">
      <dimension>0</dimension>
    </member>
    <member
      name="des"
      type="char"
      io_attributes="15"
      units="--"
      description="OBSOLETE. Parameter description">
      <dimension>0</dimension>
    </member>
    <member
      name="io"
      type="int"
      io_attributes="15"
      units="--"
      description="Input / Output processing restrictions, Each bit controls different I/O access. Bit 0 (0x01) TRICK_VAR_OUTPUT - Allows output through attribute based capabilities Bit 1 (0x02) TRICK_VAR_INPUT - Allows input through attribute based capabilities Bit 2 (0x04) TRICK_CHKPNT_OUTPUT - Allows checkpoint output Bit 3 (0x08) TRICK_CHKPNT_INPUT - Allows checkpoint input">
    </member>
    <member
      name="type"
      type="TRICK_TYPE"
      io_attributes="15"
      units="--"
      description="TRICK data type.">
    </member>
    <member
      name="size"
      type="int"
      io_attributes="15"
      units="--"
      description="Data type size in bytes">
    </member>
    <member
      name="range_min"
      type="double"
      io_attributes="15"
      units="--"
      description="Minimum allowable value for parameter">
    </member>
    <member
      name="range_max"
      type="double"
      io_attributes="15"
      units="--"
      description="Minimum allowable value for parameter">
    </member>
    <member
      name="language"
      type="Language"
      io_attributes="15"
      units="--"
      description="Native language of parameter.">
    </member>
    <member
      name="mods"
      type="int"
      io_attributes="15"
      units="--"
      description="Modification bits. bit 0 = c++ reference var bit 1 = c++ static var bit 2 = &quot;--&quot; units bit 3-8: if c++ reference bit is set, width of reference attribute. else not set. Why: because `size` is the size of the type, not the reference reference is the size of a pointer because of compiler implementations, but is not enforced by C++ standard (could change). bit 31 = deprecated var">
    </member>
    <member
      name="offset"
      type="long"
      io_attributes="15"
      units="--"
      description="Offset in bytes of this parameter from beginning of data structure">
    </member>
    <member
      name="num_index"
      type="int"
      io_attributes="15"
      units="--"
      description="Number of array indices for the parameter. May have values in the range 0..8. 0 = not arrayed. 1..8 = number of array dimensions. NOTE: TRICK_BITFIELD and TRICK_UNSIGNED_BITFIELD are not considered to be arrays so num_index is 0 for these types. Even so, for these two types index[0] contains bitfield information.">
    </member>
    <member
      name="index"
      type="INDEX"
      io_attributes="15"
      units="--"
      description="An array of array-index information or bit-field information. Is only meaningful if num_index > 0 or if type is a bit field type.">
      <dimension>8</dimension>
    </member>
    <member
      name="stl_type"
      type="TRICK_STL_TYPE"
      io_attributes="15"
      units="--"
      description="STL type if this is an STL container">
    </member>
    <member
      name="stl_elem_type"
      type="TRICK_TYPE"
      io_attributes="15"
      units="--"
      description="Element type of STL container TRICK data type">
    </member>
    <member
      name="stl_elem_type_name"
      type="char"
      io_attributes="15"
      units="--"
      description="Element type name of STL container Character string representation of the C/C++ data type or user-defined type.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="ATTRIBUTES">
    <member
      name="name"
      type="char"
      io_attributes="15"
      units="--"
      description="Name of the variable of variable element of a structure.">
      <dimension>0</dimension>
    </member>
    <member
      name="type_name"
      type="char"
      io_attributes="15"
      units="--"
      description="Character string representation of the C/C++ data type or user-defined type.">
      <dimension>0</dimension>
    </member>
    <member
      name="units"
      type="char"
      io_attributes="15"
      units="--"
      description="Units of measurement. Units string specification as described WHERE?">
      <dimension>0</dimension>
    </member>
    <member
      name="alias"
      type="char"
      io_attributes="15"
      units="--"
      description="OBSOLETE.">
      <dimension>0</dimension>
    </member>
    <member
      name="user_defined"
      type="char"
      io_attributes="15"
      units="--"
      description="OBSOLETE.">
      <dimension>0</dimension>
    </member>
    <member
      name="des"
      type="char"
      io_attributes="15"
      units="--"
      description="OBSOLETE. Parameter description">
      <dimension>0</dimension>
    </member>
    <member
      name="io"
      type="int"
      io_attributes="15"
      units="--"
      description="Input / Output processing restrictions, Each bit controls different I/O access. Bit 0 (0x01) TRICK_VAR_OUTPUT - Allows output through attribute based capabilities Bit 1 (0x02) TRICK_VAR_INPUT - Allows input through attribute based capabilities Bit 2 (0x04) TRICK_CHKPNT_OUTPUT - Allows checkpoint output Bit 3 (0x08) TRICK_CHKPNT_INPUT - Allows checkpoint input">
    </member>
    <member
      name="type"
      type="TRICK_TYPE"
      io_attributes="15"
      units="--"
      description="TRICK data type.">
    </member>
    <member
      name="size"
      type="int"
      io_attributes="15"
      units="--"
      description="Data type size in bytes">
    </member>
    <member
      name="range_min"
      type="double"
      io_attributes="15"
      units="--"
      description="Minimum allowable value for parameter">
    </member>
    <member
      name="range_max"
      type="double"
      io_attributes="15"
      units="--"
      description="Minimum allowable value for parameter">
    </member>
    <member
      name="language"
      type="Language"
      io_attributes="15"
      units="--"
      description="Native language of parameter.">
    </member>
    <member
      name="mods"
      type="int"
      io_attributes="15"
      units="--"
      description="Modification bits. bit 0 = c++ reference var bit 1 = c++ static var bit 2 = &quot;--&quot; units bit 3-8: if c++ reference bit is set, width of reference attribute. else not set. Why: because `size` is the size of the type, not the reference reference is the size of a pointer because of compiler implementations, but is not enforced by C++ standard (could change). bit 31 = deprecated var">
    </member>
    <member
      name="offset"
      type="long"
      io_attributes="15"
      units="--"
      description="Offset in bytes of this parameter from beginning of data structure">
    </member>
    <member
      name="num_index"
      type="int"
      io_attributes="15"
      units="--"
      description="Number of array indices for the parameter. May have values in the range 0..8. 0 = not arrayed. 1..8 = number of array dimensions. NOTE: TRICK_BITFIELD and TRICK_UNSIGNED_BITFIELD are not considered to be arrays so num_index is 0 for these types. Even so, for these two types index[0] contains bitfield information.">
    </member>
    <member
      name="index"
      type="INDEX"
      io_attributes="15"
      units="--"
      description="An array of array-index information or bit-field information. Is only meaningful if num_index > 0 or if type is a bit field type.">
      <dimension>8</dimension>
    </member>
    <member
      name="stl_type"
      type="TRICK_STL_TYPE"
      io_attributes="15"
      units="--"
      description="STL type if this is an STL container">
    </member>
    <member
      name="stl_elem_type"
      type="TRICK_TYPE"
      io_attributes="15"
      units="--"
      description="Element type of STL container TRICK data type">
    </member>
    <member
      name="stl_elem_type_name"
      type="char"
      io_attributes="15"
      units="--"
      description="Element type name of STL container Character string representation of the C/C++ data type or user-defined type.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="ENUM_LIST">
    <member
      name="type_name"
      type="char"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="E"
      type="ENUM_ATTR"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="NAME_TO_ATTR">
    <member
      name="name"
      type="char"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="attr"
      type="ATTRIBUTES_tag"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="size"
      type="int"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="EQUIV_ATTRIBUTES">
  </class>

  <class name="ALLOC_INFO">
  </class>

  <class name="VALUE">
    <member
      name="ll"
      type="long long"
      io_attributes="15"
      units="--"
      description="long long">
    </member>
  </class>

  <class name="V_DATA">
    <member
      name="type"
      type="TRICK_TYPE"
      io_attributes="15"
      units="--"
      description="value type">
    </member>
    <member
      name="value"
      type="VALUE"
      io_attributes="15"
      units="--"
      description="value">
    </member>
  </class>

  <class name="VALUE_LIST">
    <member
      name="num_val"
      type="int"
      io_attributes="15"
      units="--"
      description="Number of values">
    </member>
    <member
      name="v_data"
      type="V_DATA"
      io_attributes="15"
      units="1">
      <dimension>512</dimension>
    </member>
  </class>

  <class name="v_tree">
    <member
      name="last"
      type="v_tree"
      io_attributes="15"
      units="--"
      description="last element in the current list">
      <dimension>0</dimension>
    </member>
    <member
      name="next"
      type="v_tree"
      io_attributes="15"
      units="--"
      description="next element in the current list">
      <dimension>0</dimension>
    </member>
    <member
      name="down"
      type="v_tree"
      io_attributes="15"
      units="--"
      description="subordinate list of the current element. If non-NULL then &quot;v_data&quot; should be NULL.">
      <dimension>0</dimension>
    </member>
    <member
      name="v_data"
      type="V_DATA"
      io_attributes="15"
      units="--"
      description="data of the current element. If non-NULL then &quot;down&quot; should be NULL.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="V_TREE">
    <member
      name="last"
      type="v_tree"
      io_attributes="15"
      units="--"
      description="last element in the current list">
      <dimension>0</dimension>
    </member>
    <member
      name="next"
      type="v_tree"
      io_attributes="15"
      units="--"
      description="next element in the current list">
      <dimension>0</dimension>
    </member>
    <member
      name="down"
      type="v_tree"
      io_attributes="15"
      units="--"
      description="subordinate list of the current element. If non-NULL then &quot;v_data&quot; should be NULL.">
      <dimension>0</dimension>
    </member>
    <member
      name="v_data"
      type="V_DATA"
      io_attributes="15"
      units="--"
      description="data of the current element. If non-NULL then &quot;down&quot; should be NULL.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="_DLLNODE">
    <member
      name="prev"
      type="_DLLNODE"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="next"
      type="_DLLNODE"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="DLLNODE">
    <member
      name="prev"
      type="_DLLNODE"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="next"
      type="_DLLNODE"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="_DLLIST">
    <member
      name="count"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="head"
      type="_DLLNODE"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="tail"
      type="_DLLNODE"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="DLLIST">
    <member
      name="count"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="head"
      type="_DLLNODE"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="tail"
      type="_DLLNODE"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="ADDRESS_OPERAND">
    <member
      name="offset"
      type="long"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="ADDRESS_NODE">
    <member
      name="operator_"
      type="ADDRESS_OPERATOR"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="operand"
      type="ADDRESS_OPERAND"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="REF2">
    <member
      name="reference"
      type="char"
      io_attributes="15"
      units="--"
      description="Main buffer for variable reference">
      <dimension>0</dimension>
    </member>
    <member
      name="num_index"
      type="int"
      io_attributes="15"
      units="--"
      description="num index for last level of reference">
    </member>
    <member
      name="units"
      type="char"
      io_attributes="15"
      units="--"
      description="Units as specified in input runstream">
      <dimension>0</dimension>
    </member>
    <member
      name="num_index_left"
      type="int"
      io_attributes="15"
      units="--"
      description="FIXME OBSOLETE Number of remaining indicies to specify">
    </member>
    <member
      name="pointer_present"
      type="int"
      io_attributes="15"
      units="--"
      description="0 = no , 1 = yes (address could change)">
    </member>
    <member
      name="stl_present"
      type="int"
      io_attributes="15"
      units="--"
      description="0 = no , 1 = yes (STL container was indexed in path)">
    </member>
    <member
      name="ref_type"
      type="int"
      io_attributes="15"
      units="--"
      description="0 = address, 1 = value.">
    </member>
    <member
      name="attr"
      type="ATTRIBUTES_tag"
      io_attributes="15"
      units="--"
      description="Parameter attributes">
      <dimension>0</dimension>
    </member>
    <member
      name="ref_attr"
      type="ATTRIBUTES_tag"
      io_attributes="15"
      units="--"
      description="Dynamically allocated reference attribute.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="VAR_DECLARE">
  </class>

  <class name="VAR_LIST">
  </class>

  <class name="Trick__VarNameElement">
    <member
      name="type"
      type="Trick__VarNameElementType"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="index"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__CheckPointAgent">
  </class>

  <class name="Trick__ALLOC_INFO_MAP">
  </class>

  <class name="Trick__ALLOC_INFO_MAP_ITER">
  </class>

  <class name="Trick__VARIABLE_MAP">
  </class>

  <class name="Trick__VARIABLE_MAP_ITER">
  </class>

  <class name="Trick__ENUMERATION_MAP">
  </class>

  <class name="Trick__MemoryManager">
    <member
      name="debug_level"
      type="int"
      io_attributes="15"
      units="--"
      description="Debug level">
    </member>
    <member
      name="restore_stls_default"
      type="bool"
      io_attributes="15"
      units="--"
      description="true = restore STL variables on checkpoint restore if user does not specify option. false = don't">
    </member>
    <member
      name="local_anon_var_prefix"
      type="char"
      io_attributes="15"
      units="--"
      description="Temporary-variable-name prefix.">
      <dimension>0</dimension>
    </member>
    <member
      name="extern_anon_var_prefix"
      type="char"
      io_attributes="15"
      units="--"
      description="Temporary-variable-name prefix.">
      <dimension>0</dimension>
    </member>
    <member
      name="reduced_checkpoint"
      type="bool"
      io_attributes="15"
      units="--"
      description="true = Don't write zero valued variables in the checkpoint. false= Write all values.">
    </member>
    <member
      name="hexfloat_checkpoint"
      type="bool"
      io_attributes="15"
      units="--"
      description="true = Represent floating point values as hexidecimal to preserve precision. false= Normal.">
    </member>
    <member
      name="hexfloat_decimal_comment_checkpoint"
      type="bool"
      io_attributes="15"
      units="--"
      description="true = Add decimal representation comment for hexfloat values. false= no decimal representation comment.">
    </member>
    <member
      name="expanded_arrays"
      type="bool"
      io_attributes="15"
      units="--"
      description="true = array element values are set in separate assignments.">
    </member>
    <member
      name="checkpoint_restore_success"
      type="bool"
      io_attributes="15"
      units="--"
      description="true = If the checkpoint restore process is successful. false = otherwise.">
    </member>
    <member
      name="resetting_memory"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__Event">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="thread_id"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="before_after"
      type="Trick__EventBeforeAfter"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cycle"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="cycle_tics"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="next_tics"
      type="long long"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="free_on_removal"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="target_name"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="target_inst"
      type="unsigned int"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__CompareEventPtrs">
  </class>

  <class name="Trick__EventProcessor">
  </class>

  <class name="Trick__EventInstrument">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="phase"
      type="unsigned short"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="target_job"
      type="Trick__JobData"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="event"
      type="Trick__Event"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="Trick__EventManager">
    <member
      name="active_events"
      type="Trick__Event"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="num_active_events"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="num_allocated"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__InputProcessor">
    <member
      name="verify_input"
      type="int"
      io_attributes="15"
      units="--"
      description="verify input">
    </member>
    <member
      name="save_input"
      type="int"
      io_attributes="15"
      units="--"
      description="save input while running">
    </member>
    <member
      name="input_file"
      type="std__string"
      io_attributes="15"
      units="--"
      description="Simulation input data file name">
    </member>
  </class>

  <class name="Trick__IPPython">
    <member
      name="verify_input"
      type="int"
      io_attributes="15"
      units="--"
      description="verify input">
    </member>
    <member
      name="save_input"
      type="int"
      io_attributes="15"
      units="--"
      description="save input while running">
    </member>
    <member
      name="input_file"
      type="std__string"
      io_attributes="15"
      units="--"
      description="Simulation input data file name">
    </member>
  </class>

  <class name="Trick__condition_t">
    <member
      name="enabled"
      type="char"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="hold"
      type="char"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="fired"
      type="char"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="fired_count"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="fired_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="str"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="comment"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cond_type"
      type="int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__action_t">
    <member
      name="enabled"
      type="char"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ran"
      type="char"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ran_count"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ran_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="str"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="comment"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="act_type"
      type="int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__IPPythonEvent">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="thread_id"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="before_after"
      type="Trick__EventBeforeAfter"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cycle"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="cycle_tics"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="next_tics"
      type="long long"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="free_on_removal"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="target_name"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="target_inst"
      type="unsigned int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="added"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="is_user_event"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="manual"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="manual_fired"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cond_all"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="fired"
      type="char"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="hold"
      type="char"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ran"
      type="char"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="condition_count"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="fired_count"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="fired_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="action_count"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ran_count"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ran_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="condition_list"
      type="Trick__condition_t"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="action_list"
      type="Trick__action_t"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="Trick__MTV">
    <member
      name="dummy_event"
      type="Trick__IPPythonEvent"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mtv_list"
      type="Trick__IPPythonEvent"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="mtv_count"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="mtv_update_ticker"
      type="int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__JITEvent">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="thread_id"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="before_after"
      type="Trick__EventBeforeAfter"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cycle"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="cycle_tics"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="next_tics"
      type="long long"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="free_on_removal"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="target_name"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="target_inst"
      type="unsigned int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="func_name"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__JITLibInfo">
    <member
      name="library_name"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__JITInputFile">
    <member
      name="input_file"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="file_to_libinfo_map"
      type="std__map&lt;std__string, JITLibInfo>"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="_TrickErrorHndlr">
    <member
      name="report_level"
      type="TrickErrorLevel"
      io_attributes="15"
      units="--"
      description="Err reporting level">
    </member>
    <member
      name="use_send_hs"
      type="int"
      io_attributes="15"
      units="--"
      description="1=send_hs; else fprintf">
      <dimension>9</dimension>
    </member>
  </class>

  <class name="TrickErrorHndlr">
    <member
      name="report_level"
      type="TrickErrorLevel"
      io_attributes="15"
      units="--"
      description="Err reporting level">
    </member>
    <member
      name="use_send_hs"
      type="int"
      io_attributes="15"
      units="--"
      description="1=send_hs; else fprintf">
      <dimension>9</dimension>
    </member>
  </class>

  <class name="TCDevice">
    <member
      name="disabled"
      type="TCCommFlag"
      io_attributes="15"
      units="--"
      description="Connection enabled flag">
    </member>
    <member
      name="disable_handshaking"
      type="TCCommFlag"
      io_attributes="15"
      units="--"
      description="Set this to skip handshaking in tc_connect and tc_accept.">
    </member>
    <member
      name="blockio_limit"
      type="double"
      io_attributes="15"
      units="s"
      description="Block I/O timeout limit">
    </member>
    <member
      name="blockio_type"
      type="TCCommBlocking"
      io_attributes="15"
      units="--"
      description="E.g. spinloops">
    </member>
    <member
      name="client_id"
      type="int"
      io_attributes="15"
      units="--"
      description="client id, other side. Set by tc_accept.">
    </member>
    <member
      name="client_tag"
      type="char"
      io_attributes="15"
      units="--"
      description="client tag, other side. User specified. Defaults if unspecified.">
      <dimension>80</dimension>
    </member>
    <member
      name="hostname"
      type="char"
      io_attributes="15"
      units="--"
      description="Hostname of server/client. User specified.">
      <dimension>0</dimension>
    </member>
    <member
      name="port"
      type="int"
      io_attributes="15"
      units="--"
      description="TCP/IP Port number. User specified.">
    </member>
    <member
      name="mcast_group"
      type="char"
      io_attributes="15"
      units="--"
      description="Multicast group address. User specified.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="SEND_ME">
  </class>

  <class name="BC_INFO">
  </class>

  <class name="Trick__JSONVariableServer">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rt_priority"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="source_address"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="port"
      type="unsigned short"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="user_port_requested"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__JSONVariableServerThread">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rt_priority"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__MSConnect">
    <member
      name="sync_wait_limit"
      type="double"
      io_attributes="15"
      units="s">
    </member>
  </class>

  <class name="Trick__SlaveInfo">
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="activated"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="slave_type"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="remote_shell"
      type="Trick__RemoteShell"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="user_remote_shell"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="remote_shell_args"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="machine_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="machine_display"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sim_path"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="remote_shell_config_file"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="S_main_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="chkpnt_dump_auto"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="chkpnt_load_auto"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="chkpnt_name"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>256</dimension>
    </member>
    <member
      name="run_input_file"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="other_args"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sync_error_terminate"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sync_wait_limit"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="reconnect_wait_limit"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="connection"
      type="Trick__MSConnect"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="Trick__Master">
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="num_slaves"
      type="int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="MonteCarloVariable">
    <member
      name="units"
      type="std__string"
      io_attributes="15"
      units="--"
      description="optional setting in the case where the specified values are in units different from the native units of the variable. These are the units associated with the specified-value.">
    </member>
    <member
      name="include_in_summary"
      type="bool"
      io_attributes="15"
      units="--"
      description="Flag telling MonteCarloMaster whether to include this variable in the dispersion summary file. The default depends on the type of variable but is generally true.">
    </member>
    <member
      name="variable_name"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The name of the sim-variable being assigned by this instance.">
    </member>
    <member
      name="assignment"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The value assigned to the variable. Used in MonteCarloMaster to generate the dispersion summary file.">
    </member>
    <member
      name="command"
      type="std__string"
      io_attributes="15"
      units="--"
      description="the command that gets pushed to the monte_input input file.">
    </member>
    <member
      name="type"
      type="MonteCarloVariable__MonteCarloVariableType"
      io_attributes="15"
      units="--"
      description="Broad categorization of types of MonteCarloVariable. This is set in the constructor of the specific classes derived from MonteCarloVariable and provides information to the MonteCarloMaster about what general type of variable it is dealing with.">
    </member>
  </class>

  <class name="MonteCarloVariableFile">
    <member
      name="units"
      type="std__string"
      io_attributes="15"
      units="--"
      description="optional setting in the case where the specified values are in units different from the native units of the variable. These are the units associated with the specified-value.">
    </member>
    <member
      name="include_in_summary"
      type="bool"
      io_attributes="15"
      units="--"
      description="Flag telling MonteCarloMaster whether to include this variable in the dispersion summary file. The default depends on the type of variable but is generally true.">
    </member>
    <member
      name="variable_name"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The name of the sim-variable being assigned by this instance.">
    </member>
    <member
      name="assignment"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The value assigned to the variable. Used in MonteCarloMaster to generate the dispersion summary file.">
    </member>
    <member
      name="command"
      type="std__string"
      io_attributes="15"
      units="--"
      description="the command that gets pushed to the monte_input input file.">
    </member>
    <member
      name="type"
      type="MonteCarloVariable__MonteCarloVariableType"
      io_attributes="15"
      units="--"
      description="Broad categorization of types of MonteCarloVariable. This is set in the constructor of the specific classes derived from MonteCarloVariable and provides information to the MonteCarloMaster about what general type of variable it is dealing with.">
    </member>
    <member
      name="max_skip"
      type="unsigned long"
      io_attributes="15"
      units="--"
      description="The maximum number of lines to skip in a file. This defaults to 0, indicating that the file will be read sequentially.">
    </member>
    <member
      name="is_dependent"
      type="bool"
      io_attributes="15"
      units="--"
      description="A flag indicating that this instance is dependent upon another instance for reading the file &quot;filename&quot;. Only one instance will read each filename. Default: false.">
    </member>
    <member
      name="filename"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The name of the file containing the data for this variable. Assigned at construction.">
    </member>
    <member
      name="column_number"
      type="unsigned long"
      io_attributes="15"
      units="--"
      description="The column number indicating from where in the data file the data for this variable should be extracted.">
    </member>
    <member
      name="first_column_number"
      type="unsigned long"
      io_attributes="15"
      units="--"
      description="Usually used to distinguish between whether the first column should be identified with a 0 or 1, but extensible to other integers as well. Default: 1.">
    </member>
    <member
      name="dependents"
      type="std__list&lt;MonteCarloVariableFile *>"
      io_attributes="15"
      units="--"
      description="A list of MonteVarVariableFile instances that use the same file as this one. This list is only populated if this instance was the first registered to use this file.">
    </member>
  </class>

  <class name="MonteCarloPythonLineExec">
    <member
      name="units"
      type="std__string"
      io_attributes="15"
      units="--"
      description="optional setting in the case where the specified values are in units different from the native units of the variable. These are the units associated with the specified-value.">
    </member>
    <member
      name="include_in_summary"
      type="bool"
      io_attributes="15"
      units="--"
      description="Flag telling MonteCarloMaster whether to include this variable in the dispersion summary file. The default depends on the type of variable but is generally true.">
    </member>
    <member
      name="variable_name"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The name of the sim-variable being assigned by this instance.">
    </member>
    <member
      name="assignment"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The value assigned to the variable. Used in MonteCarloMaster to generate the dispersion summary file.">
    </member>
    <member
      name="command"
      type="std__string"
      io_attributes="15"
      units="--"
      description="the command that gets pushed to the monte_input input file.">
    </member>
    <member
      name="type"
      type="MonteCarloVariable__MonteCarloVariableType"
      io_attributes="15"
      units="--"
      description="Broad categorization of types of MonteCarloVariable. This is set in the constructor of the specific classes derived from MonteCarloVariable and provides information to the MonteCarloMaster about what general type of variable it is dealing with.">
    </member>
    <member
      name="instruction_set"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The right-hand-side of an equation that gets inserted into the monte-input file and looks like: &lt;variable_name> = &lt;instruction-set>">
    </member>
    <member
      name="instruction_is_command"
      type="bool"
      io_attributes="15"
      units="--"
      description="Indicates whether to implement a command that looks like: - variable=instruction vs variable representing the standalone command, in which case variable_name and instruction_set are identical.">
    </member>
  </class>

  <class name="MonteCarloPythonFileExec">
    <member
      name="units"
      type="std__string"
      io_attributes="15"
      units="--"
      description="optional setting in the case where the specified values are in units different from the native units of the variable. These are the units associated with the specified-value.">
    </member>
    <member
      name="include_in_summary"
      type="bool"
      io_attributes="15"
      units="--"
      description="Flag telling MonteCarloMaster whether to include this variable in the dispersion summary file. The default depends on the type of variable but is generally true.">
    </member>
    <member
      name="variable_name"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The name of the sim-variable being assigned by this instance.">
    </member>
    <member
      name="assignment"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The value assigned to the variable. Used in MonteCarloMaster to generate the dispersion summary file.">
    </member>
    <member
      name="command"
      type="std__string"
      io_attributes="15"
      units="--"
      description="the command that gets pushed to the monte_input input file.">
    </member>
    <member
      name="type"
      type="MonteCarloVariable__MonteCarloVariableType"
      io_attributes="15"
      units="--"
      description="Broad categorization of types of MonteCarloVariable. This is set in the constructor of the specific classes derived from MonteCarloVariable and provides information to the MonteCarloMaster about what general type of variable it is dealing with.">
    </member>
  </class>

  <class name="MonteCarloVariableRandom">
    <member
      name="units"
      type="std__string"
      io_attributes="15"
      units="--"
      description="optional setting in the case where the specified values are in units different from the native units of the variable. These are the units associated with the specified-value.">
    </member>
    <member
      name="include_in_summary"
      type="bool"
      io_attributes="15"
      units="--"
      description="Flag telling MonteCarloMaster whether to include this variable in the dispersion summary file. The default depends on the type of variable but is generally true.">
    </member>
    <member
      name="variable_name"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The name of the sim-variable being assigned by this instance.">
    </member>
    <member
      name="assignment"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The value assigned to the variable. Used in MonteCarloMaster to generate the dispersion summary file.">
    </member>
    <member
      name="command"
      type="std__string"
      io_attributes="15"
      units="--"
      description="the command that gets pushed to the monte_input input file.">
    </member>
    <member
      name="type"
      type="MonteCarloVariable__MonteCarloVariableType"
      io_attributes="15"
      units="--"
      description="Broad categorization of types of MonteCarloVariable. This is set in the constructor of the specific classes derived from MonteCarloVariable and provides information to the MonteCarloMaster about what general type of variable it is dealing with.">
    </member>
    <member
      name="seed_m"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="the value used to seed the generator.">
    </member>
  </class>

  <class name="MonteCarloVariableFixed">
    <member
      name="units"
      type="std__string"
      io_attributes="15"
      units="--"
      description="optional setting in the case where the specified values are in units different from the native units of the variable. These are the units associated with the specified-value.">
    </member>
    <member
      name="include_in_summary"
      type="bool"
      io_attributes="15"
      units="--"
      description="Flag telling MonteCarloMaster whether to include this variable in the dispersion summary file. The default depends on the type of variable but is generally true.">
    </member>
    <member
      name="variable_name"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The name of the sim-variable being assigned by this instance.">
    </member>
    <member
      name="assignment"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The value assigned to the variable. Used in MonteCarloMaster to generate the dispersion summary file.">
    </member>
    <member
      name="command"
      type="std__string"
      io_attributes="15"
      units="--"
      description="the command that gets pushed to the monte_input input file.">
    </member>
    <member
      name="type"
      type="MonteCarloVariable__MonteCarloVariableType"
      io_attributes="15"
      units="--"
      description="Broad categorization of types of MonteCarloVariable. This is set in the constructor of the specific classes derived from MonteCarloVariable and provides information to the MonteCarloMaster about what general type of variable it is dealing with.">
    </member>
    <member
      name="var_type"
      type="int"
      io_attributes="15"
      units="--"
      description="0: double 1: integer 2: string;">
    </member>
  </class>

  <class name="MonteCarloVariableSemiFixed">
    <member
      name="units"
      type="std__string"
      io_attributes="15"
      units="--"
      description="optional setting in the case where the specified values are in units different from the native units of the variable. These are the units associated with the specified-value.">
    </member>
    <member
      name="include_in_summary"
      type="bool"
      io_attributes="15"
      units="--"
      description="Flag telling MonteCarloMaster whether to include this variable in the dispersion summary file. The default depends on the type of variable but is generally true.">
    </member>
    <member
      name="variable_name"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The name of the sim-variable being assigned by this instance.">
    </member>
    <member
      name="assignment"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The value assigned to the variable. Used in MonteCarloMaster to generate the dispersion summary file.">
    </member>
    <member
      name="command"
      type="std__string"
      io_attributes="15"
      units="--"
      description="the command that gets pushed to the monte_input input file.">
    </member>
    <member
      name="type"
      type="MonteCarloVariable__MonteCarloVariableType"
      io_attributes="15"
      units="--"
      description="Broad categorization of types of MonteCarloVariable. This is set in the constructor of the specific classes derived from MonteCarloVariable and provides information to the MonteCarloMaster about what general type of variable it is dealing with.">
    </member>
    <member
      name="seed_variable"
      type="MonteCarloVariable"
      io_attributes="3"
      units="--"
      description="A reference to another MonteCarloVariable; the value of *this* variable is taken from the value of this seed-variable during preparation of the first monte-input file.">
    </member>
    <member
      name="command_generated"
      type="bool"
      io_attributes="15"
      units="--"
      description="flag indicating the fixed command has been generated.">
    </member>
  </class>

  <class name="MonteCarloMaster">
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--"
      description="The main active flag determining whether an input file should be processed for a monte-carlo run. This flag is used to manage the configuration of the scenario, including things like which variables to log.">
    </member>
    <member
      name="generate_dispersions"
      type="bool"
      io_attributes="15"
      units="--"
      description="This flag controls whether the variables should be loaded and dispersed. It has no effect if the active flag is off. False: Configure the run for MC; this configuration typically uses a previously-generated monte_input.py file; it does not read in MC variables and does not generate new monte_input files. True: Use this execution of the sim to read in the MC variables and generating the monte-input files. After doing so, the execution will terminate. The sim can then be re-run using one of the new monte_input files. Default: true. This is set to false in the monte_input.py files to allow the base input file to be processed from within the monte-input file without regenerting the monte-input files.">
    </member>
    <member
      name="run_name"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The name of the scenario, used in generating the &quot;MONTE_&lt;run_name>&quot; directory, which contains all of the runs.">
    </member>
    <member
      name="monte_dir"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The name of the MONTE&lt;RUN...> directory relative to the SIM directory where runs will be generated">
    </member>
    <member
      name="input_file_name"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The name of the original file used as the main input file. Default: input.py.">
    </member>
    <member
      name="generate_meta_data"
      type="bool"
      io_attributes="15"
      units="--"
      description="Flag indicating whether to generate the meta-data output file.">
    </member>
    <member
      name="generate_summary"
      type="bool"
      io_attributes="15"
      units="--"
      description="Flag indicating whether to generate the dispersion summary file.">
    </member>
    <member
      name="minimum_padding"
      type="int"
      io_attributes="15"
      units="--"
      description="The minimum width of the run-number field, e.g. RUN_1 vs RUN_00001; The run-number field will be sized to the minimum of this value or the width necessary to accommodate the highest number. Defaults to 0.">
    </member>
    <member
      name="monte_run_number"
      type="unsigned long"
      io_attributes="15"
      units="--"
      description="A unique identifying number for each run.">
    </member>
    <member
      name="input_files_prepared"
      type="bool"
      io_attributes="15"
      units="--"
      description="Internal flag indicating that the input files have been generated and waiting for execution. Effectively blocks further modifications to variables after this flag has been set.">
    </member>
    <member
      name="location"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The location in the main sim by which this instance may be addressed in an input file.">
    </member>
    <member
      name="variables"
      type="std__list&lt;MonteCarloVariable *>"
      io_attributes="15"
      units="--"
      description="A STL-list of pointers to instances of all the base-class MonteVarVariable instances. Note that this has to be a list of pointers rather than instances because the actual instances are polymorphic; making a copy would restrict them to be actual MonteCarloVariable instances and we need the polymorphic capabilities for generating the monte_input command.">
    </member>
    <member
      name="num_runs"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="The number of runs to execute for this scenario.">
    </member>
    <member
      name="file_list"
      type="std__list&lt;std__pair&lt;std__string, MonteCarloVariableFile *> >"
      io_attributes="15"
      units="--"
      description="A list of filenames being read as part of the MonteVarFile variables being managed by this class.">
    </member>
  </class>

  <class name="MonteCarloVariableRandomUniform">
    <member
      name="units"
      type="std__string"
      io_attributes="15"
      units="--"
      description="optional setting in the case where the specified values are in units different from the native units of the variable. These are the units associated with the specified-value.">
    </member>
    <member
      name="include_in_summary"
      type="bool"
      io_attributes="15"
      units="--"
      description="Flag telling MonteCarloMaster whether to include this variable in the dispersion summary file. The default depends on the type of variable but is generally true.">
    </member>
    <member
      name="variable_name"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The name of the sim-variable being assigned by this instance.">
    </member>
    <member
      name="assignment"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The value assigned to the variable. Used in MonteCarloMaster to generate the dispersion summary file.">
    </member>
    <member
      name="command"
      type="std__string"
      io_attributes="15"
      units="--"
      description="the command that gets pushed to the monte_input input file.">
    </member>
    <member
      name="type"
      type="MonteCarloVariable__MonteCarloVariableType"
      io_attributes="15"
      units="--"
      description="Broad categorization of types of MonteCarloVariable. This is set in the constructor of the specific classes derived from MonteCarloVariable and provides information to the MonteCarloMaster about what general type of variable it is dealing with.">
    </member>
    <member
      name="seed_m"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="the value used to seed the generator.">
    </member>
  </class>

  <class name="MonteCarloVariableRandomUniformInt">
    <member
      name="units"
      type="std__string"
      io_attributes="15"
      units="--"
      description="optional setting in the case where the specified values are in units different from the native units of the variable. These are the units associated with the specified-value.">
    </member>
    <member
      name="include_in_summary"
      type="bool"
      io_attributes="15"
      units="--"
      description="Flag telling MonteCarloMaster whether to include this variable in the dispersion summary file. The default depends on the type of variable but is generally true.">
    </member>
    <member
      name="variable_name"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The name of the sim-variable being assigned by this instance.">
    </member>
    <member
      name="assignment"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The value assigned to the variable. Used in MonteCarloMaster to generate the dispersion summary file.">
    </member>
    <member
      name="command"
      type="std__string"
      io_attributes="15"
      units="--"
      description="the command that gets pushed to the monte_input input file.">
    </member>
    <member
      name="type"
      type="MonteCarloVariable__MonteCarloVariableType"
      io_attributes="15"
      units="--"
      description="Broad categorization of types of MonteCarloVariable. This is set in the constructor of the specific classes derived from MonteCarloVariable and provides information to the MonteCarloMaster about what general type of variable it is dealing with.">
    </member>
    <member
      name="seed_m"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="the value used to seed the generator.">
    </member>
  </class>

  <class name="MonteCarloVariableRandomStringSet">
    <member
      name="units"
      type="std__string"
      io_attributes="15"
      units="--"
      description="optional setting in the case where the specified values are in units different from the native units of the variable. These are the units associated with the specified-value.">
    </member>
    <member
      name="include_in_summary"
      type="bool"
      io_attributes="15"
      units="--"
      description="Flag telling MonteCarloMaster whether to include this variable in the dispersion summary file. The default depends on the type of variable but is generally true.">
    </member>
    <member
      name="variable_name"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The name of the sim-variable being assigned by this instance.">
    </member>
    <member
      name="assignment"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The value assigned to the variable. Used in MonteCarloMaster to generate the dispersion summary file.">
    </member>
    <member
      name="command"
      type="std__string"
      io_attributes="15"
      units="--"
      description="the command that gets pushed to the monte_input input file.">
    </member>
    <member
      name="type"
      type="MonteCarloVariable__MonteCarloVariableType"
      io_attributes="15"
      units="--"
      description="Broad categorization of types of MonteCarloVariable. This is set in the constructor of the specific classes derived from MonteCarloVariable and provides information to the MonteCarloMaster about what general type of variable it is dealing with.">
    </member>
    <member
      name="seed_m"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="the value used to seed the generator.">
    </member>
    <member
      name="values"
      type="std__vector&lt;std__string>"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="MonteCarloVariableRandomBool">
    <member
      name="units"
      type="std__string"
      io_attributes="15"
      units="--"
      description="optional setting in the case where the specified values are in units different from the native units of the variable. These are the units associated with the specified-value.">
    </member>
    <member
      name="include_in_summary"
      type="bool"
      io_attributes="15"
      units="--"
      description="Flag telling MonteCarloMaster whether to include this variable in the dispersion summary file. The default depends on the type of variable but is generally true.">
    </member>
    <member
      name="variable_name"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The name of the sim-variable being assigned by this instance.">
    </member>
    <member
      name="assignment"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The value assigned to the variable. Used in MonteCarloMaster to generate the dispersion summary file.">
    </member>
    <member
      name="command"
      type="std__string"
      io_attributes="15"
      units="--"
      description="the command that gets pushed to the monte_input input file.">
    </member>
    <member
      name="type"
      type="MonteCarloVariable__MonteCarloVariableType"
      io_attributes="15"
      units="--"
      description="Broad categorization of types of MonteCarloVariable. This is set in the constructor of the specific classes derived from MonteCarloVariable and provides information to the MonteCarloMaster about what general type of variable it is dealing with.">
    </member>
    <member
      name="seed_m"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="the value used to seed the generator.">
    </member>
    <member
      name="values"
      type="std__vector&lt;std__string>"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="MonteCarloVariableRandomNormal">
    <member
      name="units"
      type="std__string"
      io_attributes="15"
      units="--"
      description="optional setting in the case where the specified values are in units different from the native units of the variable. These are the units associated with the specified-value.">
    </member>
    <member
      name="include_in_summary"
      type="bool"
      io_attributes="15"
      units="--"
      description="Flag telling MonteCarloMaster whether to include this variable in the dispersion summary file. The default depends on the type of variable but is generally true.">
    </member>
    <member
      name="variable_name"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The name of the sim-variable being assigned by this instance.">
    </member>
    <member
      name="assignment"
      type="std__string"
      io_attributes="15"
      units="--"
      description="The value assigned to the variable. Used in MonteCarloMaster to generate the dispersion summary file.">
    </member>
    <member
      name="command"
      type="std__string"
      io_attributes="15"
      units="--"
      description="the command that gets pushed to the monte_input input file.">
    </member>
    <member
      name="type"
      type="MonteCarloVariable__MonteCarloVariableType"
      io_attributes="15"
      units="--"
      description="Broad categorization of types of MonteCarloVariable. This is set in the constructor of the specific classes derived from MonteCarloVariable and provides information to the MonteCarloMaster about what general type of variable it is dealing with.">
    </member>
    <member
      name="seed_m"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="the value used to seed the generator.">
    </member>
    <member
      name="max_num_tries"
      type="unsigned long"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="min_value"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="max_value"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="truncated_low"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="truncated_high"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__Slave">
    <member
      name="activated"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="reconnected"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sent_reconnect_cmd"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="msg_published"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="chkpnt_name"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>256</dimension>
    </member>
    <member
      name="sync_error_terminate"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sync_wait_limit"
      type="double"
      io_attributes="15"
      units="s">
    </member>
  </class>

  <class name="Trick__MSSocket">
    <member
      name="sync_wait_limit"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="tc_dev"
      type="TCDevice"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sync_port_tag"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="TSMDevice">
    <member
      name="size"
      type="int"
      io_attributes="15"
      units="--"
      description="Size of shared memory segment">
    </member>
    <member
      name="key_file"
      type="char"
      io_attributes="15"
      units="--"
      description="An existing file name to use in generating key, in combination with proj_id, (ftok) for shared memory">
      <dimension>256</dimension>
    </member>
    <member
      name="proj_id"
      type="int"
      io_attributes="15"
      units="--"
      description="A value to use, in combination with the key_file, (ftok) for shared memory. Use 1..255 to create 255 different keys">
    </member>
    <member
      name="timeout_limit"
      type="double"
      io_attributes="15"
      units="--"
      description="s Optional: how long do we wait for shared memory data before we time out">
    </member>
    <member
      name="default_val"
      type="int"
      io_attributes="15"
      units="--"
      description="Optional: value to set shared memory data to after it's been read">
    </member>
    <member
      name="use_lock"
      type="char"
      io_attributes="15"
      units="--"
      description="Optional: if true then tsm_init creates pthread read/write lock">
    </member>
  </class>

  <class name="Trick__MSSharedMemData">
    <member
      name="master_pid"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="master_time"
      type="long long"
      io_attributes="15"
      units="1">
      <dimension>5</dimension>
    </member>
    <member
      name="master_time_front"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="master_time_back"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="master_command"
      type="int"
      io_attributes="15"
      units="1">
      <dimension>5</dimension>
    </member>
    <member
      name="master_command_front"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="master_command_back"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="slave_command"
      type="int"
      io_attributes="15"
      units="1">
      <dimension>5</dimension>
    </member>
    <member
      name="slave_command_front"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="slave_command_back"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="slave_port"
      type="int"
      io_attributes="15"
      units="--"
      description="slave's checkpoint port">
    </member>
    <member
      name="chkpnt_name"
      type="char"
      io_attributes="15"
      units="--"
      description="checkpoint dir/filename">
      <dimension>256</dimension>
    </member>
  </class>

  <class name="Trick__MSSharedMem">
    <member
      name="sync_wait_limit"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="tsm_dev"
      type="TSMDevice"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="shm_addr"
      type="Trick__MSSharedMemData"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="Trick__MessageSubscriber">
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="color"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__MessageCout">
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="color"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__SysThread">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rt_priority"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__MessageThreadedCout">
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="color"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="MessageSubscriber::name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="SysThread::ThreadBase::name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rt_priority"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="max_buffer_items"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="max_buffer_size"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="color_code"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="print_immediate"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__MessageFile">
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="color"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="file_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__MessageHSFile">
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="color"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="file_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__MessageCustomFile">
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="color"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="file_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="_this_level"
      type="int"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__MessageCustomManager">
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="color"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="_custom_message_files"
      type="std__vector&lt;MessageCustomFile *>"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__MessageLCout">
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="color"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="subs"
      type="std__map&lt;char, std__string>"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="seed"
      type="unsigned int"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__MessagePublisher">
    <member
      name="subscribers"
      type="std__list&lt;MessageSubscriber *>"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="tics_per_sec"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="num_digits"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="print_format"
      type="char"
      io_attributes="15"
      units="1">
      <dimension>64</dimension>
    </member>
    <member
      name="sim_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__MessageTCDeviceListenThread">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rt_priority"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__MessageTCDevice">
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="color"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="port"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="listen_thread"
      type="Trick__MessageTCDeviceListenThread"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__PlaybackFile">
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="color"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="file_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__MonteVar">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="unit"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="value"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__MonteRun">
    <member
      name="id"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="num_tries"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="start_time"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="end_time"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="variables"
      type="std__vector&lt;std__string>"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="exit_status"
      type="Trick__MonteRun__ExitStatus"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__MonteSlave">
    <member
      name="id"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="state"
      type="Trick__MonteSlave__State"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="machine_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="port"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="current_run"
      type="Trick__MonteRun"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="num_dispatches"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="num_results"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cpu_time"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="remote_shell"
      type="Trick__RemoteShell"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="user_remote_shell"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="remote_shell_args"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="multiplier"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sim_path"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="S_main_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__MonteRange">
    <member
      name="start"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="end"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__MonteCarlo">
    <member
      name="slave_sim_options"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="slave_output_directory"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dry_run"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="localhost_as_remote"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="custom_slave_dispatch"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="timeout"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="max_tries"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="user_cmd_string"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="custom_pre_text"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="custom_post_text"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="verbosity"
      type="Trick__MonteCarlo__Verbosity"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="listen_device"
      type="TCDevice"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="connection_device"
      type="TCDevice"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="num_slaves"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="slaves_head"
      type="Trick__MonteSlave"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="current_run"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="num_runs"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="actual_num_runs"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="num_results"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="start_time"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="end_time"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="master_port"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="slave_id"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="machine_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="run_directory"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="master_init_queue"
      type="Trick__ScheduledJobQueue"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="master_pre_queue"
      type="Trick__ScheduledJobQueue"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="master_post_queue"
      type="Trick__ScheduledJobQueue"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="master_shutdown_queue"
      type="Trick__ScheduledJobQueue"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="slave_init_queue"
      type="Trick__ScheduledJobQueue"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="slave_pre_queue"
      type="Trick__ScheduledJobQueue"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="slave_post_queue"
      type="Trick__ScheduledJobQueue"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="slave_shutdown_queue"
      type="Trick__ScheduledJobQueue"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__Timer">
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__RealtimeSync">
    <member
      name="enable_flag"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="disable_flag"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="freeze_frame"
      type="long long"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="freeze_time_tics"
      type="long long"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="frame_overrun_cnt"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="total_overrun"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rt_max_overrun_cnt"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rt_max_overrun_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="rt_max_overrun_time_tics"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rt_overrun_freeze"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="frame_sched_time"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="frame_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="frame_overrun_time"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="frame_overrun"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="last_clock_time"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="tics_per_sec"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="align_sim_to_wall_clock"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="align_tic_mult"
      type="double"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rt_clock"
      type="Trick__Clock"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="default_clock"
      type="Trick__Clock"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="sleep_timer"
      type="Trick__Timer"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="freeze_shutdown"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sim_start_time"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sim_end_init_time"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="sim_end_time"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="actual_run_ratio"
      type="double"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__ITimer">
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="active"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="SystemInterface">
  </class>

  <class name="Trick__ClientConnection">
    <member
      name="_connection_type"
      type="Trick__ClientConnection__ConnectionType"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_client_tag"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__TCPConnection">
    <member
      name="_connection_type"
      type="Trick__ClientConnection__ConnectionType"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_client_tag"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_socket"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_connected"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_listen_socket"
      type="int"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__TCPClientListener">
    <member
      name="_listen_socket"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_hostname"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_port"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_client_tag"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_initialized"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__UDPConnection">
    <member
      name="_connection_type"
      type="Trick__ClientConnection__ConnectionType"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_client_tag"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_initialized"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_started"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_socket"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_port"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_hostname"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_remote_serv_addr"
      type="sockaddr_in"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__MulticastGroup">
    <member
      name="_connection_type"
      type="Trick__ClientConnection__ConnectionType"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_client_tag"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="MulticastGroup::UDPConnection::_initialized"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_started"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_socket"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_port"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_hostname"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_remote_serv_addr"
      type="sockaddr_in"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_system_interface"
      type="SystemInterface"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="Trick__VariableServerListenThread">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rt_priority"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="_requested_source_address"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="_requested_port"
      type="unsigned short"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="_user_requested_address"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="_user_tag"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="_broadcast"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__VariableReference">
    <member
      name="_var_info"
      type="REF2"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="_size"
      type="int"
      io_attributes="15"
      units="--"
      description="size of data copied to buffer">
    </member>
    <member
      name="_deref"
      type="bool"
      io_attributes="15"
      units="--"
      description="indicates whether variable is pointer that needs to be dereferenced">
    </member>
    <member
      name="_trick_type"
      type="TRICK_TYPE"
      io_attributes="15"
      units="--"
      description="Trick type of this variable">
    </member>
    <member
      name="_used_stl_indexing"
      type="bool"
      io_attributes="15"
      units="--"
      description="indicates if reference involved STL container indexing">
    </member>
    <member
      name="_staged"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_write_ready"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_base_units"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_requested_units"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_name"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__VariableServerSession">
    <member
      name="_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="_info_msg"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_session_log_msg_stream"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_send_stdio"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_validate_address"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="_instance_num"
      type="int"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__VariableServerSessionThread">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rt_priority"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="_saved_pause_cmd"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__VariableServer">
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="info_msg"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="log"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="session_log"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="listen_thread"
      type="Trick__VariableServerListenThread"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="ip_allowlist"
      type="std__set&lt;std__string>"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="allow_connections"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="bypass_ip_check"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="REGULA_FALSI">
    <member
      name="lower_set"
      type="int"
      io_attributes="15"
      units="--"
      description="Yes = Lower bounds has been set">
    </member>
    <member
      name="upper_set"
      type="int"
      io_attributes="15"
      units="--"
      description="Yes = Upper bounds has been set">
    </member>
    <member
      name="iterations"
      type="int"
      io_attributes="15"
      units="--"
      description="Total num of iterations used to fire event">
    </member>
    <member
      name="fires"
      type="int"
      io_attributes="15"
      units="--"
      description="Total num of times event fired">
    </member>
    <member
      name="x_lower"
      type="double"
      io_attributes="15"
      units="--"
      description="Lower value from error func">
    </member>
    <member
      name="t_lower"
      type="double"
      io_attributes="15"
      units="s"
      description="Time at lower val of err func">
    </member>
    <member
      name="x_upper"
      type="double"
      io_attributes="15"
      units="--"
      description="Upper value from err function">
    </member>
    <member
      name="t_upper"
      type="double"
      io_attributes="15"
      units="s"
      description="Time at upper value of err func">
    </member>
    <member
      name="delta_time"
      type="double"
      io_attributes="15"
      units="s"
      description="Time to go">
    </member>
    <member
      name="error"
      type="double"
      io_attributes="15"
      units="--"
      description="New Error value from err func">
    </member>
    <member
      name="last_error"
      type="double"
      io_attributes="15"
      units="--"
      description="Last pass error value">
    </member>
    <member
      name="last_tgo"
      type="double"
      io_attributes="15"
      units="s"
      description="Last pass Time to go value">
    </member>
    <member
      name="error_tol"
      type="double"
      io_attributes="15"
      units="--"
      description="Tolerance on error below which tgo=0">
    </member>
    <member
      name="mode"
      type="Regula_Falsi"
      io_attributes="15"
      units="--"
      description="Operating mode for regula falsi">
    </member>
    <member
      name="function_slope"
      type="Regula_Falsi"
      io_attributes="15"
      units="--"
      description="Operating mode for regula falsi">
    </member>
  </class>

  <class name="Trick__Integrator">
    <member
      name="num_state"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="intermediate_step"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="first_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="last_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="is_2nd_order_ODE_technique"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="use_deriv2"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="dt"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopSimObject.cpp">
    </member>
    <member
      name="target_integ_time"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopScheduler.cpp. Final integration time regardless of">
    </member>
    <member
      name="state"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="deriv2"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="state_ws"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="time"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_0"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="verbosity"
      type="int"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="er7_utils__Er7UtilsDeletable">
  </class>

  <class name="er7_utils__GeneralizedPositionDerivativeFunctions">
  </class>

  <class name="er7_utils__GeneralizedPositionStepFunctions">
  </class>

  <class name="er7_utils__Integration">
  </class>

  <class name="er7_utils__IntegratorConstructor">
  </class>

  <class name="er7_utils__PrimingIntegratorConstructor">
    <member
      name="primer_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n Constructor used to create the primers.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RK4IntegratorConstructor">
  </class>

  <class name="er7_utils__IntegratorInterface">
  </class>

  <class name="er7_utils__IntegrationControls">
    <member
      name="time_scale_factor"
      type="double"
      io_attributes="15"
      units="--"
      description="n Ratio of dynamic delta time to simulation engine delta time.">
    </member>
    <member
      name="integ_starttime"
      type="double"
      io_attributes="15"
      units="--"
      description="n The simulation time of the start of the current integration loop as requested by the simulation engine.">
    </member>
    <member
      name="integ_simdt"
      type="double"
      io_attributes="15"
      units="--"
      description="n The simulation time span of the current integration loop as requested by the simulation engine.">
    </member>
    <member
      name="integ_dyndt"
      type="double"
      io_attributes="15"
      units="--"
      description="n The dynamic time span corresponding to integ_simdt.">
    </member>
    <member
      name="integ_time_scale"
      type="double"
      io_attributes="15"
      units="--"
      description="n The time scale factor, with 0.0 representing the start of the integration interval and 1.0 representing the end of the interval.">
    </member>
    <member
      name="integ_simtime"
      type="double"
      io_attributes="15"
      units="--"
      description="n The current simulation time.">
    </member>
    <member
      name="transition_table"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n A number_stages array that directs the transitions from one integration stage to the next. The constructor for this class populates this array with values 1 (element 0) to number_stages (element number_stages-1).">
      <dimension>0</dimension>
    </member>
    <member
      name="step_number"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n Starts at zero at the start of a tour, increments by one per stage, and resets to zero at the end of a tour.">
    </member>
    <member
      name="cycle_stage"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The technique-specific finite state machine state number of the current stage. The cycle_stage starts at zero, nominally incrementing by one for each cycle, until it attains a value equal to the final_stage. At this point the cycle begins anew with a cycle_stage of zero.">
    </member>
    <member
      name="final_stage"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The stage number at which the cycle_stage resets to zero.">
    </member>
    <member
      name="number_stages"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The size of the transition table, nominally final_stage.">
    </member>
    <member
      name="reset_needed"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Wen set, indicates that a reset needs to be performed at the start of the next integration cycle. The flag will be cleared when the reset is performed.">
    </member>
  </class>

  <class name="er7_utils__SingleCycleIntegrationControls">
    <member
      name="time_scale_factor"
      type="double"
      io_attributes="15"
      units="--"
      description="n Ratio of dynamic delta time to simulation engine delta time.">
    </member>
    <member
      name="integ_starttime"
      type="double"
      io_attributes="15"
      units="--"
      description="n The simulation time of the start of the current integration loop as requested by the simulation engine.">
    </member>
    <member
      name="integ_simdt"
      type="double"
      io_attributes="15"
      units="--"
      description="n The simulation time span of the current integration loop as requested by the simulation engine.">
    </member>
    <member
      name="integ_dyndt"
      type="double"
      io_attributes="15"
      units="--"
      description="n The dynamic time span corresponding to integ_simdt.">
    </member>
    <member
      name="integ_time_scale"
      type="double"
      io_attributes="15"
      units="--"
      description="n The time scale factor, with 0.0 representing the start of the integration interval and 1.0 representing the end of the interval.">
    </member>
    <member
      name="integ_simtime"
      type="double"
      io_attributes="15"
      units="--"
      description="n The current simulation time.">
    </member>
    <member
      name="transition_table"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n A number_stages array that directs the transitions from one integration stage to the next. The constructor for this class populates this array with values 1 (element 0) to number_stages (element number_stages-1).">
      <dimension>0</dimension>
    </member>
    <member
      name="step_number"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n Starts at zero at the start of a tour, increments by one per stage, and resets to zero at the end of a tour.">
    </member>
    <member
      name="cycle_stage"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The technique-specific finite state machine state number of the current stage. The cycle_stage starts at zero, nominally incrementing by one for each cycle, until it attains a value equal to the final_stage. At this point the cycle begins anew with a cycle_stage of zero.">
    </member>
    <member
      name="final_stage"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The stage number at which the cycle_stage resets to zero.">
    </member>
    <member
      name="number_stages"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The size of the transition table, nominally final_stage.">
    </member>
    <member
      name="reset_needed"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Wen set, indicates that a reset needs to be performed at the start of the next integration cycle. The flag will be cleared when the reset is performed.">
    </member>
  </class>

  <class name="er7_utils__StateIntegratorInterface">
  </class>

  <class name="er7_utils__IntegratorResult">
    <member
      name="time_scale"
      type="double"
      io_attributes="15"
      units="--"
      description="n Fraction of the integration interval time step by which the time should be advanced. A value of 0.0 means time should be set to the start of the integration interval; a value of 1.0 means time should be advanced to the end of the interval.">
    </member>
    <member
      name="failure_mode"
      type="int"
      io_attributes="15"
      units="--"
      description="n Zero indicates the integrator successfully reached the target stage. A non-zero value indicates some technique-dependent failure.">
    </member>
    <member
      name="merge_count"
      type="int"
      io_attributes="15"
      units="--"
      description="n The number of times another IntegratorResult has been merged into this IntegratorResult. A value of zero means this is a virgin result.">
    </member>
  </class>

  <class name="er7_utils__FirstOrderODEIntegrator">
    <member
      name="state_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The size of the state.">
    </member>
  </class>

  <class name="er7_utils__RK4FirstOrderODEIntegrator">
    <member
      name="state_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The size of the state.">
    </member>
    <member
      name="init_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n State at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n State derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__SecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
  </class>

  <class name="er7_utils__RK4SecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="saved_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position after stage 1.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Product of delta t and weighted sum of generalized velocities.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RK4SimpleSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="saved_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position after stage 1.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Product of delta t and weighted sum of generalized velocities.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RK4GeneralizedDerivSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="saved_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position after stage 1.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Product of delta t and weighted sum of generalized velocities.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RK4GeneralizedStepSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="saved_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position after stage 1.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Product of delta t and weighted sum of generalized velocities.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__ABM4IntegratorConstructor">
    <member
      name="primer_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n Constructor used to create the primers.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__StandardIntegrationControls">
    <member
      name="time_scale_factor"
      type="double"
      io_attributes="15"
      units="--"
      description="n Ratio of dynamic delta time to simulation engine delta time.">
    </member>
    <member
      name="integ_starttime"
      type="double"
      io_attributes="15"
      units="--"
      description="n The simulation time of the start of the current integration loop as requested by the simulation engine.">
    </member>
    <member
      name="integ_simdt"
      type="double"
      io_attributes="15"
      units="--"
      description="n The simulation time span of the current integration loop as requested by the simulation engine.">
    </member>
    <member
      name="integ_dyndt"
      type="double"
      io_attributes="15"
      units="--"
      description="n The dynamic time span corresponding to integ_simdt.">
    </member>
    <member
      name="integ_time_scale"
      type="double"
      io_attributes="15"
      units="--"
      description="n The time scale factor, with 0.0 representing the start of the integration interval and 1.0 representing the end of the interval.">
    </member>
    <member
      name="integ_simtime"
      type="double"
      io_attributes="15"
      units="--"
      description="n The current simulation time.">
    </member>
    <member
      name="transition_table"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n A number_stages array that directs the transitions from one integration stage to the next. The constructor for this class populates this array with values 1 (element 0) to number_stages (element number_stages-1).">
      <dimension>0</dimension>
    </member>
    <member
      name="step_number"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n Starts at zero at the start of a tour, increments by one per stage, and resets to zero at the end of a tour.">
    </member>
    <member
      name="cycle_stage"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The technique-specific finite state machine state number of the current stage. The cycle_stage starts at zero, nominally incrementing by one for each cycle, until it attains a value equal to the final_stage. At this point the cycle begins anew with a cycle_stage of zero.">
    </member>
    <member
      name="final_stage"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The stage number at which the cycle_stage resets to zero.">
    </member>
    <member
      name="number_stages"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The size of the transition table, nominally final_stage.">
    </member>
    <member
      name="reset_needed"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Wen set, indicates that a reset needs to be performed at the start of the next integration cycle. The flag will be cleared when the reset is performed.">
    </member>
    <member
      name="cycle_starttime"
      type="double"
      io_attributes="15"
      units="--"
      description="n The simulation engine time of the start of the current integration cycle as determined by start_integration_tour or end_integration_cycle. For single cycle integrators such as RK4, the cycle_starttime and cycle_simdt are equal to the integ_starttime and integ_simdt. Multi-cycle integrators such as Gauss-Jackson compute the cycle_starttime and cycle_simdt.">
    </member>
    <member
      name="cycle_simdt"
      type="double"
      io_attributes="15"
      units="--"
      description="n The simulation engine time span of the current integration cycle as determined by start_integration_tour or end_integration_cycle.">
    </member>
    <member
      name="cycle_dyndt"
      type="double"
      io_attributes="15"
      units="--"
      description="n The JEOD dynamic time span corresponding to cycle_simdt.">
    </member>
    <member
      name="multi_cycle"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Always false for single-cycle integrators. Multi-cycle integrators must set this to true to operate in multi-cycle mode.">
    </member>
    <member
      name="alt_controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n An alternate controls, typically for priming, that acts as a stand-in for this integration controller.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__PrimingIntegrationControls">
    <member
      name="time_scale_factor"
      type="double"
      io_attributes="15"
      units="--"
      description="n Ratio of dynamic delta time to simulation engine delta time.">
    </member>
    <member
      name="integ_starttime"
      type="double"
      io_attributes="15"
      units="--"
      description="n The simulation time of the start of the current integration loop as requested by the simulation engine.">
    </member>
    <member
      name="integ_simdt"
      type="double"
      io_attributes="15"
      units="--"
      description="n The simulation time span of the current integration loop as requested by the simulation engine.">
    </member>
    <member
      name="integ_dyndt"
      type="double"
      io_attributes="15"
      units="--"
      description="n The dynamic time span corresponding to integ_simdt.">
    </member>
    <member
      name="integ_time_scale"
      type="double"
      io_attributes="15"
      units="--"
      description="n The time scale factor, with 0.0 representing the start of the integration interval and 1.0 representing the end of the interval.">
    </member>
    <member
      name="integ_simtime"
      type="double"
      io_attributes="15"
      units="--"
      description="n The current simulation time.">
    </member>
    <member
      name="transition_table"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n A number_stages array that directs the transitions from one integration stage to the next. The constructor for this class populates this array with values 1 (element 0) to number_stages (element number_stages-1).">
      <dimension>0</dimension>
    </member>
    <member
      name="step_number"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n Starts at zero at the start of a tour, increments by one per stage, and resets to zero at the end of a tour.">
    </member>
    <member
      name="cycle_stage"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The technique-specific finite state machine state number of the current stage. The cycle_stage starts at zero, nominally incrementing by one for each cycle, until it attains a value equal to the final_stage. At this point the cycle begins anew with a cycle_stage of zero.">
    </member>
    <member
      name="final_stage"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The stage number at which the cycle_stage resets to zero.">
    </member>
    <member
      name="number_stages"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The size of the transition table, nominally final_stage.">
    </member>
    <member
      name="reset_needed"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Wen set, indicates that a reset needs to be performed at the start of the next integration cycle. The flag will be cleared when the reset is performed.">
    </member>
    <member
      name="cycle_starttime"
      type="double"
      io_attributes="15"
      units="--"
      description="n The simulation engine time of the start of the current integration cycle as determined by start_integration_tour or end_integration_cycle. For single cycle integrators such as RK4, the cycle_starttime and cycle_simdt are equal to the integ_starttime and integ_simdt. Multi-cycle integrators such as Gauss-Jackson compute the cycle_starttime and cycle_simdt.">
    </member>
    <member
      name="cycle_simdt"
      type="double"
      io_attributes="15"
      units="--"
      description="n The simulation engine time span of the current integration cycle as determined by start_integration_tour or end_integration_cycle.">
    </member>
    <member
      name="cycle_dyndt"
      type="double"
      io_attributes="15"
      units="--"
      description="n The JEOD dynamic time span corresponding to cycle_simdt.">
    </member>
    <member
      name="multi_cycle"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Always false for single-cycle integrators. Multi-cycle integrators must set this to true to operate in multi-cycle mode.">
    </member>
    <member
      name="alt_controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n An alternate controls, typically for priming, that acts as a stand-in for this integration controller.">
      <dimension>0</dimension>
    </member>
    <member
      name="priming_controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object used to prime the state integrators.">
      <dimension>0</dimension>
    </member>
    <member
      name="priming_count"
      type="int"
      io_attributes="15"
      units="--"
      description="n The number of priming integration cycles the integrator to go. This is typically reset to history_length-1.">
    </member>
    <member
      name="history_length"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The number of items in the state integrator's history buffer.">
    </member>
  </class>

  <class name="er7_utils__PrimingFirstOrderODEIntegrator">
    <member
      name="state_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The size of the state.">
    </member>
    <member
      name="controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that controls this state integrator.">
      <dimension>0</dimension>
    </member>
    <member
      name="primer"
      type="er7_utils__FirstOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The state integrator used to prime this integrator.">
      <dimension>0</dimension>
    </member>
    <member
      name="priming_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The number of start of cycle derivatives needed by the technique.">
    </member>
    <member
      name="prime_counter"
      type="int"
      io_attributes="15"
      units="--"
      description="n Priming phase countdown. This is set to priming_state_size initially and upon reset. Priming is complete when the counter reaches zero.">
    </member>
    <member
      name="primed"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Indicates whether the object has been primed. This is false initially and upon reset; it is set to true when priming is complete.">
    </member>
  </class>

  <class name="er7_utils__ABM4FirstOrderODEIntegrator">
    <member
      name="state_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The size of the state.">
    </member>
    <member
      name="controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that controls this state integrator.">
      <dimension>0</dimension>
    </member>
    <member
      name="primer"
      type="er7_utils__FirstOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The state integrator used to prime this integrator.">
      <dimension>0</dimension>
    </member>
    <member
      name="priming_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The number of start of cycle derivatives needed by the technique.">
    </member>
    <member
      name="prime_counter"
      type="int"
      io_attributes="15"
      units="--"
      description="n Priming phase countdown. This is set to priming_state_size initially and upon reset. Priming is complete when the counter reaches zero.">
    </member>
    <member
      name="primed"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Indicates whether the object has been primed. This is false initially and upon reset; it is set to true when priming is complete.">
    </member>
    <member
      name="init_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n The state at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n The state derivatives at the start of current and at the starts of the three previous integration cycles. This array is rotated so that deriv_hist[0] contains the state derivatives at the start of the current cycle, deriv_hist[1] the derivatives at the start of the previous cycle, and so on.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__PrimingSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that controls this state integrator.">
      <dimension>0</dimension>
    </member>
    <member
      name="primer"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The state integrator used to prime this integrator.">
      <dimension>0</dimension>
    </member>
    <member
      name="priming_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The number of start of cycle derivatives needed by the technique.">
    </member>
    <member
      name="prime_counter"
      type="int"
      io_attributes="15"
      units="--"
      description="n Priming phase countdown. This is set to priming_state_size initially and upon reset. Priming is complete when the counter reaches zero.">
    </member>
    <member
      name="primed"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Indicates whether the object has been primed. This is false initially and upon reset; it is set to true when priming is complete.">
    </member>
  </class>

  <class name="er7_utils__ABM4SecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that controls this state integrator.">
      <dimension>0</dimension>
    </member>
    <member
      name="primer"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The state integrator used to prime this integrator.">
      <dimension>0</dimension>
    </member>
    <member
      name="priming_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The number of start of cycle derivatives needed by the technique.">
    </member>
    <member
      name="prime_counter"
      type="int"
      io_attributes="15"
      units="--"
      description="n Priming phase countdown. This is set to priming_state_size initially and upon reset. Priming is complete when the counter reaches zero.">
    </member>
    <member
      name="primed"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Indicates whether the object has been primed. This is false initially and upon reset; it is set to true when priming is complete.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative at the current time step.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist_anchor"
      type="double"
      io_attributes="15"
      units="--"
      description="n Cached pointer to the data needed for deletion after PDH is rotated">
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist_anchor"
      type="double"
      io_attributes="15"
      units="--"
      description="n Cached pointer to the data needed for deletion after VDH is rotated">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__ABM4SimpleSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that controls this state integrator.">
      <dimension>0</dimension>
    </member>
    <member
      name="primer"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The state integrator used to prime this integrator.">
      <dimension>0</dimension>
    </member>
    <member
      name="priming_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The number of start of cycle derivatives needed by the technique.">
    </member>
    <member
      name="prime_counter"
      type="int"
      io_attributes="15"
      units="--"
      description="n Priming phase countdown. This is set to priming_state_size initially and upon reset. Priming is complete when the counter reaches zero.">
    </member>
    <member
      name="primed"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Indicates whether the object has been primed. This is false initially and upon reset; it is set to true when priming is complete.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative at the current time step.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist_anchor"
      type="double"
      io_attributes="15"
      units="--"
      description="n Cached pointer to the data needed for deletion after PDH is rotated">
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist_anchor"
      type="double"
      io_attributes="15"
      units="--"
      description="n Cached pointer to the data needed for deletion after VDH is rotated">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__ABM4GeneralizedDerivSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that controls this state integrator.">
      <dimension>0</dimension>
    </member>
    <member
      name="primer"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The state integrator used to prime this integrator.">
      <dimension>0</dimension>
    </member>
    <member
      name="priming_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The number of start of cycle derivatives needed by the technique.">
    </member>
    <member
      name="prime_counter"
      type="int"
      io_attributes="15"
      units="--"
      description="n Priming phase countdown. This is set to priming_state_size initially and upon reset. Priming is complete when the counter reaches zero.">
    </member>
    <member
      name="primed"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Indicates whether the object has been primed. This is false initially and upon reset; it is set to true when priming is complete.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative at the current time step.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist_anchor"
      type="double"
      io_attributes="15"
      units="--"
      description="n Cached pointer to the data needed for deletion after PDH is rotated">
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist_anchor"
      type="double"
      io_attributes="15"
      units="--"
      description="n Cached pointer to the data needed for deletion after VDH is rotated">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__BaseIntegrationGroup">
    <member
      name="integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor that is used to generate the integration controls for this object and is used to generate the state integrators for each integrated object whose state is integrated by this group.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_interface"
      type="er7_utils__IntegratorInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the simulation engine's integration structure.">
      <dimension>0</dimension>
    </member>
    <member
      name="time_interface"
      type="er7_utils__TimeInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the object that represents time.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that guides the integration process. This object is created at construction time by calling the integrator constructor's create_integration_controls method.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__TimeInterface">
  </class>

  <class name="er7_utils__IntegrationMessages">
    <member
      name="unsupported_option"
      type="char"
      io_attributes="15"
      units="--"
      description="n Issued when some user input is invalid.">
      <dimension>0</dimension>
    </member>
    <member
      name="invalid_item"
      type="char"
      io_attributes="15"
      units="--"
      description="n Issued when an item is somehow invalid; a duplicate entry for example.">
      <dimension>0</dimension>
    </member>
    <member
      name="internal_error"
      type="char"
      io_attributes="15"
      units="--"
      description="n Issued when the ER7_UTILS programmer messed up.">
      <dimension>0</dimension>
    </member>
    <member
      name="invalid_request"
      type="char"
      io_attributes="15"
      units="--"
      description="n Issued when a non-ER7_UTILS programmer messed up.">
      <dimension>0</dimension>
    </member>
    <member
      name="information"
      type="char"
      io_attributes="15"
      units="--"
      description="n Issued in non-error messages.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__BogusIntegrationControls">
    <member
      name="time_scale_factor"
      type="double"
      io_attributes="15"
      units="--"
      description="n Ratio of dynamic delta time to simulation engine delta time.">
    </member>
    <member
      name="integ_starttime"
      type="double"
      io_attributes="15"
      units="--"
      description="n The simulation time of the start of the current integration loop as requested by the simulation engine.">
    </member>
    <member
      name="integ_simdt"
      type="double"
      io_attributes="15"
      units="--"
      description="n The simulation time span of the current integration loop as requested by the simulation engine.">
    </member>
    <member
      name="integ_dyndt"
      type="double"
      io_attributes="15"
      units="--"
      description="n The dynamic time span corresponding to integ_simdt.">
    </member>
    <member
      name="integ_time_scale"
      type="double"
      io_attributes="15"
      units="--"
      description="n The time scale factor, with 0.0 representing the start of the integration interval and 1.0 representing the end of the interval.">
    </member>
    <member
      name="integ_simtime"
      type="double"
      io_attributes="15"
      units="--"
      description="n The current simulation time.">
    </member>
    <member
      name="transition_table"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n A number_stages array that directs the transitions from one integration stage to the next. The constructor for this class populates this array with values 1 (element 0) to number_stages (element number_stages-1).">
      <dimension>0</dimension>
    </member>
    <member
      name="step_number"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n Starts at zero at the start of a tour, increments by one per stage, and resets to zero at the end of a tour.">
    </member>
    <member
      name="cycle_stage"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The technique-specific finite state machine state number of the current stage. The cycle_stage starts at zero, nominally incrementing by one for each cycle, until it attains a value equal to the final_stage. At this point the cycle begins anew with a cycle_stage of zero.">
    </member>
    <member
      name="final_stage"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The stage number at which the cycle_stage resets to zero.">
    </member>
    <member
      name="number_stages"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The size of the transition table, nominally final_stage.">
    </member>
    <member
      name="reset_needed"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Wen set, indicates that a reset needs to be performed at the start of the next integration cycle. The flag will be cleared when the reset is performed.">
    </member>
  </class>

  <class name="er7_utils__TrickIntegrator">
    <member
      name="num_state"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="intermediate_step"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="first_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="last_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="is_2nd_order_ODE_technique"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="use_deriv2"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="dt"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopSimObject.cpp">
    </member>
    <member
      name="target_integ_time"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopScheduler.cpp. Final integration time regardless of">
    </member>
    <member
      name="state"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="deriv2"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="state_ws"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="time"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_0"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="verbosity"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor that is used to generate the integration controls for this object and is used to generate the state integrators for each integrated object whose state is integrated by this group.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_interface"
      type="er7_utils__IntegratorInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the simulation engine's integration structure.">
      <dimension>0</dimension>
    </member>
    <member
      name="time_interface"
      type="er7_utils__TimeInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the object that represents time.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that guides the integration process. This object is created at construction time by calling the integrator constructor's create_integration_controls method.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_derivs"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of derivatives used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n State vector used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_accel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of accelerations used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_velocity"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of velocities used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_position"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of positions used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv2"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv2.">
      <dimension>0</dimension>
    </member>
    <member
      name="trick_integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor used to generate the state integrators this object.">
      <dimension>0</dimension>
    </member>
    <member
      name="first_order_integrator"
      type="er7_utils__FirstOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a first order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="second_order_integrator"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a second order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="buf_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="half_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="integ_mode"
      type="er7_utils__TrickIntegrator__IntegrationMode"
      io_attributes="15"
      units="--"
      description="n Indicates which of the first or second order integrator is to be used.">
    </member>
    <member
      name="default_first_step_deriv"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Default value of the Trick::Integrator first_step_deriv flag.">
    </member>
  </class>

  <class name="er7_utils__TrickFirstOrderOdeIntegrator">
    <member
      name="num_state"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="intermediate_step"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="first_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="last_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="is_2nd_order_ODE_technique"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="use_deriv2"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="dt"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopSimObject.cpp">
    </member>
    <member
      name="target_integ_time"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopScheduler.cpp. Final integration time regardless of">
    </member>
    <member
      name="state"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="deriv2"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="state_ws"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="time"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_0"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="verbosity"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor that is used to generate the integration controls for this object and is used to generate the state integrators for each integrated object whose state is integrated by this group.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_interface"
      type="er7_utils__IntegratorInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the simulation engine's integration structure.">
      <dimension>0</dimension>
    </member>
    <member
      name="time_interface"
      type="er7_utils__TimeInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the object that represents time.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that guides the integration process. This object is created at construction time by calling the integrator constructor's create_integration_controls method.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_derivs"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of derivatives used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n State vector used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_accel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of accelerations used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_velocity"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of velocities used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_position"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of positions used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv2"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv2.">
      <dimension>0</dimension>
    </member>
    <member
      name="trick_integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor used to generate the state integrators this object.">
      <dimension>0</dimension>
    </member>
    <member
      name="first_order_integrator"
      type="er7_utils__FirstOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a first order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="second_order_integrator"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a second order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="buf_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="half_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="integ_mode"
      type="er7_utils__TrickIntegrator__IntegrationMode"
      io_attributes="15"
      units="--"
      description="n Indicates which of the first or second order integrator is to be used.">
    </member>
    <member
      name="default_first_step_deriv"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Default value of the Trick::Integrator first_step_deriv flag.">
    </member>
  </class>

  <class name="Trick__ABM_IntegratorHelper">
    <member
      name="helper_integ_constructor"
      type="er7_utils__ABM4IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with ABM integration.">
    </member>
  </class>

  <class name="Trick__ABM_Integrator">
    <member
      name="helper_integ_constructor"
      type="er7_utils__ABM4IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with ABM integration.">
    </member>
    <member
      name="num_state"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="intermediate_step"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="first_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="last_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="is_2nd_order_ODE_technique"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="use_deriv2"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="dt"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopSimObject.cpp">
    </member>
    <member
      name="target_integ_time"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopScheduler.cpp. Final integration time regardless of">
    </member>
    <member
      name="state"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="deriv2"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="state_ws"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="time"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_0"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="verbosity"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor that is used to generate the integration controls for this object and is used to generate the state integrators for each integrated object whose state is integrated by this group.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_interface"
      type="er7_utils__IntegratorInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the simulation engine's integration structure.">
      <dimension>0</dimension>
    </member>
    <member
      name="time_interface"
      type="er7_utils__TimeInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the object that represents time.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that guides the integration process. This object is created at construction time by calling the integrator constructor's create_integration_controls method.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_derivs"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of derivatives used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n State vector used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_accel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of accelerations used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_velocity"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of velocities used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_position"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of positions used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv2"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv2.">
      <dimension>0</dimension>
    </member>
    <member
      name="trick_integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor used to generate the state integrators this object.">
      <dimension>0</dimension>
    </member>
    <member
      name="first_order_integrator"
      type="er7_utils__FirstOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a first order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="second_order_integrator"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a second order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="buf_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="half_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="integ_mode"
      type="er7_utils__TrickIntegrator__IntegrationMode"
      io_attributes="15"
      units="--"
      description="n Indicates which of the first or second order integrator is to be used.">
    </member>
    <member
      name="default_first_step_deriv"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Default value of the Trick::Integrator first_step_deriv flag.">
    </member>
  </class>

  <class name="er7_utils__SymplecticEulerIntegratorConstructor">
  </class>

  <class name="er7_utils__EulerFirstOrderODEIntegrator">
    <member
      name="state_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The size of the state.">
    </member>
  </class>

  <class name="er7_utils__SymplecticEulerSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__SymplecticEulerSimpleSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__SymplecticEulerGeneralizedDerivSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__SymplecticEulerGeneralizedStepSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__TrickSecondOrderOdeIntegrator">
    <member
      name="num_state"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="intermediate_step"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="first_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="last_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="is_2nd_order_ODE_technique"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="use_deriv2"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="dt"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopSimObject.cpp">
    </member>
    <member
      name="target_integ_time"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopScheduler.cpp. Final integration time regardless of">
    </member>
    <member
      name="state"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="deriv2"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="state_ws"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="time"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_0"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="verbosity"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor that is used to generate the integration controls for this object and is used to generate the state integrators for each integrated object whose state is integrated by this group.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_interface"
      type="er7_utils__IntegratorInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the simulation engine's integration structure.">
      <dimension>0</dimension>
    </member>
    <member
      name="time_interface"
      type="er7_utils__TimeInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the object that represents time.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that guides the integration process. This object is created at construction time by calling the integrator constructor's create_integration_controls method.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_derivs"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of derivatives used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n State vector used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_accel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of accelerations used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_velocity"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of velocities used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_position"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of positions used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv2"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv2.">
      <dimension>0</dimension>
    </member>
    <member
      name="trick_integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor used to generate the state integrators this object.">
      <dimension>0</dimension>
    </member>
    <member
      name="first_order_integrator"
      type="er7_utils__FirstOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a first order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="second_order_integrator"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a second order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="buf_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="half_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="integ_mode"
      type="er7_utils__TrickIntegrator__IntegrationMode"
      io_attributes="15"
      units="--"
      description="n Indicates which of the first or second order integrator is to be used.">
    </member>
    <member
      name="default_first_step_deriv"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Default value of the Trick::Integrator first_step_deriv flag.">
    </member>
  </class>

  <class name="Trick__Euler_Cromer_IntegratorHelper">
    <member
      name="helper_integ_constructor"
      type="er7_utils__SymplecticEulerIntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with Euler Cromer integration.">
    </member>
  </class>

  <class name="Trick__Euler_Cromer_Integrator">
    <member
      name="helper_integ_constructor"
      type="er7_utils__SymplecticEulerIntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with Euler Cromer integration.">
    </member>
    <member
      name="num_state"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="intermediate_step"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="first_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="last_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="is_2nd_order_ODE_technique"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="use_deriv2"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="dt"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopSimObject.cpp">
    </member>
    <member
      name="target_integ_time"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopScheduler.cpp. Final integration time regardless of">
    </member>
    <member
      name="state"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="deriv2"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="state_ws"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="time"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_0"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="verbosity"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor that is used to generate the integration controls for this object and is used to generate the state integrators for each integrated object whose state is integrated by this group.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_interface"
      type="er7_utils__IntegratorInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the simulation engine's integration structure.">
      <dimension>0</dimension>
    </member>
    <member
      name="time_interface"
      type="er7_utils__TimeInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the object that represents time.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that guides the integration process. This object is created at construction time by calling the integrator constructor's create_integration_controls method.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_derivs"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of derivatives used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n State vector used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_accel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of accelerations used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_velocity"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of velocities used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_position"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of positions used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv2"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv2.">
      <dimension>0</dimension>
    </member>
    <member
      name="trick_integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor used to generate the state integrators this object.">
      <dimension>0</dimension>
    </member>
    <member
      name="first_order_integrator"
      type="er7_utils__FirstOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a first order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="second_order_integrator"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a second order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="buf_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="half_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="integ_mode"
      type="er7_utils__TrickIntegrator__IntegrationMode"
      io_attributes="15"
      units="--"
      description="n Indicates which of the first or second order integrator is to be used.">
    </member>
    <member
      name="default_first_step_deriv"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Default value of the Trick::Integrator first_step_deriv flag.">
    </member>
  </class>

  <class name="er7_utils__EulerIntegratorConstructor">
  </class>

  <class name="er7_utils__EulerSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__EulerSimpleSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__EulerGeneralizedDerivSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__EulerGeneralizedStepSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="Trick__Euler_IntegratorHelper">
    <member
      name="helper_integ_constructor"
      type="er7_utils__EulerIntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with Euler integration.">
    </member>
  </class>

  <class name="Trick__Euler_Integrator">
    <member
      name="helper_integ_constructor"
      type="er7_utils__EulerIntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with Euler integration.">
    </member>
    <member
      name="num_state"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="intermediate_step"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="first_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="last_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="is_2nd_order_ODE_technique"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="use_deriv2"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="dt"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopSimObject.cpp">
    </member>
    <member
      name="target_integ_time"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopScheduler.cpp. Final integration time regardless of">
    </member>
    <member
      name="state"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="deriv2"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="state_ws"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="time"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_0"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="verbosity"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor that is used to generate the integration controls for this object and is used to generate the state integrators for each integrated object whose state is integrated by this group.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_interface"
      type="er7_utils__IntegratorInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the simulation engine's integration structure.">
      <dimension>0</dimension>
    </member>
    <member
      name="time_interface"
      type="er7_utils__TimeInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the object that represents time.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that guides the integration process. This object is created at construction time by calling the integrator constructor's create_integration_controls method.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_derivs"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of derivatives used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n State vector used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_accel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of accelerations used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_velocity"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of velocities used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_position"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of positions used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv2"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv2.">
      <dimension>0</dimension>
    </member>
    <member
      name="trick_integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor used to generate the state integrators this object.">
      <dimension>0</dimension>
    </member>
    <member
      name="first_order_integrator"
      type="er7_utils__FirstOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a first order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="second_order_integrator"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a second order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="buf_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="half_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="integ_mode"
      type="er7_utils__TrickIntegrator__IntegrationMode"
      io_attributes="15"
      units="--"
      description="n Indicates which of the first or second order integrator is to be used.">
    </member>
    <member
      name="default_first_step_deriv"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Default value of the Trick::Integrator first_step_deriv flag.">
    </member>
  </class>

  <class name="er7_utils__MM4IntegratorConstructor">
  </class>

  <class name="er7_utils__RK2MidpointFirstOrderODEIntegrator">
    <member
      name="state_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The size of the state.">
    </member>
    <member
      name="init_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n State at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__MM4SecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="pos_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position history, initial plus results from first two steps.">
      <dimension>3</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="vel_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position history, initial plus results from first two steps.">
      <dimension>3</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Derivative of generalized position.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__MM4SimpleSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="pos_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position history, initial plus results from first two steps.">
      <dimension>3</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="vel_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position history, initial plus results from first two steps.">
      <dimension>3</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Derivative of generalized position.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__MM4GeneralizedDerivSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="pos_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position history, initial plus results from first two steps.">
      <dimension>3</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="vel_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position history, initial plus results from first two steps.">
      <dimension>3</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Derivative of generalized position.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="Trick__MM4_IntegratorHelper">
    <member
      name="helper_integ_constructor"
      type="er7_utils__MM4IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with MM4 integration.">
    </member>
  </class>

  <class name="Trick__MM4_Integrator">
    <member
      name="helper_integ_constructor"
      type="er7_utils__MM4IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with MM4 integration.">
    </member>
    <member
      name="num_state"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="intermediate_step"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="first_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="last_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="is_2nd_order_ODE_technique"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="use_deriv2"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="dt"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopSimObject.cpp">
    </member>
    <member
      name="target_integ_time"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopScheduler.cpp. Final integration time regardless of">
    </member>
    <member
      name="state"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="deriv2"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="state_ws"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="time"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_0"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="verbosity"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor that is used to generate the integration controls for this object and is used to generate the state integrators for each integrated object whose state is integrated by this group.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_interface"
      type="er7_utils__IntegratorInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the simulation engine's integration structure.">
      <dimension>0</dimension>
    </member>
    <member
      name="time_interface"
      type="er7_utils__TimeInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the object that represents time.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that guides the integration process. This object is created at construction time by calling the integrator constructor's create_integration_controls method.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_derivs"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of derivatives used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n State vector used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_accel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of accelerations used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_velocity"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of velocities used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_position"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of positions used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv2"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv2.">
      <dimension>0</dimension>
    </member>
    <member
      name="trick_integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor used to generate the state integrators this object.">
      <dimension>0</dimension>
    </member>
    <member
      name="first_order_integrator"
      type="er7_utils__FirstOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a first order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="second_order_integrator"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a second order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="buf_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="half_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="integ_mode"
      type="er7_utils__TrickIntegrator__IntegrationMode"
      io_attributes="15"
      units="--"
      description="n Indicates which of the first or second order integrator is to be used.">
    </member>
    <member
      name="default_first_step_deriv"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Default value of the Trick::Integrator first_step_deriv flag.">
    </member>
  </class>

  <class name="er7_utils__NystromLear2IntegratorConstructor">
  </class>

  <class name="er7_utils__NystromLear2SecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Derivative of generalized position.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__NystromLear2SimpleSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Derivative of generalized position.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__NystromLear2GeneralizedDerivSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Derivative of generalized position.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="Trick__NL2_IntegratorHelper">
    <member
      name="helper_integ_constructor"
      type="er7_utils__NystromLear2IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with NL2 integration.">
    </member>
  </class>

  <class name="Trick__NL2_Integrator">
    <member
      name="helper_integ_constructor"
      type="er7_utils__NystromLear2IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with NL2 integration.">
    </member>
    <member
      name="num_state"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="intermediate_step"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="first_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="last_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="is_2nd_order_ODE_technique"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="use_deriv2"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="dt"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopSimObject.cpp">
    </member>
    <member
      name="target_integ_time"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopScheduler.cpp. Final integration time regardless of">
    </member>
    <member
      name="state"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="deriv2"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="state_ws"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="time"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_0"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="verbosity"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor that is used to generate the integration controls for this object and is used to generate the state integrators for each integrated object whose state is integrated by this group.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_interface"
      type="er7_utils__IntegratorInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the simulation engine's integration structure.">
      <dimension>0</dimension>
    </member>
    <member
      name="time_interface"
      type="er7_utils__TimeInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the object that represents time.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that guides the integration process. This object is created at construction time by calling the integrator constructor's create_integration_controls method.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_derivs"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of derivatives used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n State vector used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_accel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of accelerations used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_velocity"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of velocities used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_position"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of positions used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv2"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv2.">
      <dimension>0</dimension>
    </member>
    <member
      name="trick_integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor used to generate the state integrators this object.">
      <dimension>0</dimension>
    </member>
    <member
      name="first_order_integrator"
      type="er7_utils__FirstOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a first order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="second_order_integrator"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a second order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="buf_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="half_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="integ_mode"
      type="er7_utils__TrickIntegrator__IntegrationMode"
      io_attributes="15"
      units="--"
      description="n Indicates which of the first or second order integrator is to be used.">
    </member>
    <member
      name="default_first_step_deriv"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Default value of the Trick::Integrator first_step_deriv flag.">
    </member>
  </class>

  <class name="er7_utils__RK2HeunIntegratorConstructor">
  </class>

  <class name="er7_utils__RK2HeunFirstOrderODEIntegrator">
    <member
      name="state_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The size of the state.">
    </member>
    <member
      name="init_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n State at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_deriv"
      type="double"
      io_attributes="15"
      units="--"
      description="n State derivative at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RK2HeunSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_acc"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity time derivative at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position step.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="final_posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative at the end of an integration cycle.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RK2HeunSimpleSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_acc"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity time derivative at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position step.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="final_posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative at the end of an integration cycle.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RK2HeunGeneralizedDerivSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_acc"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity time derivative at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position step.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="final_posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative at the end of an integration cycle.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RK2HeunGeneralizedStepSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_acc"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity time derivative at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position step.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="final_posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative at the end of an integration cycle.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="Trick__RK2_IntegratorHelper">
    <member
      name="helper_integ_constructor"
      type="er7_utils__RK2HeunIntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with RK2 integration.">
    </member>
  </class>

  <class name="Trick__RK2_Integrator">
    <member
      name="helper_integ_constructor"
      type="er7_utils__RK2HeunIntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with RK2 integration.">
    </member>
    <member
      name="num_state"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="intermediate_step"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="first_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="last_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="is_2nd_order_ODE_technique"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="use_deriv2"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="dt"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopSimObject.cpp">
    </member>
    <member
      name="target_integ_time"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopScheduler.cpp. Final integration time regardless of">
    </member>
    <member
      name="state"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="deriv2"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="state_ws"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="time"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_0"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="verbosity"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor that is used to generate the integration controls for this object and is used to generate the state integrators for each integrated object whose state is integrated by this group.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_interface"
      type="er7_utils__IntegratorInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the simulation engine's integration structure.">
      <dimension>0</dimension>
    </member>
    <member
      name="time_interface"
      type="er7_utils__TimeInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the object that represents time.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that guides the integration process. This object is created at construction time by calling the integrator constructor's create_integration_controls method.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_derivs"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of derivatives used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n State vector used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_accel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of accelerations used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_velocity"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of velocities used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_position"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of positions used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv2"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv2.">
      <dimension>0</dimension>
    </member>
    <member
      name="trick_integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor used to generate the state integrators this object.">
      <dimension>0</dimension>
    </member>
    <member
      name="first_order_integrator"
      type="er7_utils__FirstOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a first order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="second_order_integrator"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a second order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="buf_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="half_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="integ_mode"
      type="er7_utils__TrickIntegrator__IntegrationMode"
      io_attributes="15"
      units="--"
      description="n Indicates which of the first or second order integrator is to be used.">
    </member>
    <member
      name="default_first_step_deriv"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Default value of the Trick::Integrator first_step_deriv flag.">
    </member>
  </class>

  <class name="Trick__RK4_IntegratorHelper">
    <member
      name="helper_integ_constructor"
      type="er7_utils__RK4IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with RK4 integration.">
    </member>
  </class>

  <class name="Trick__RK4_Integrator">
    <member
      name="helper_integ_constructor"
      type="er7_utils__RK4IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with RK4 integration.">
    </member>
    <member
      name="num_state"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="intermediate_step"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="first_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="last_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="is_2nd_order_ODE_technique"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="use_deriv2"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="dt"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopSimObject.cpp">
    </member>
    <member
      name="target_integ_time"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopScheduler.cpp. Final integration time regardless of">
    </member>
    <member
      name="state"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="deriv2"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="state_ws"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="time"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_0"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="verbosity"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor that is used to generate the integration controls for this object and is used to generate the state integrators for each integrated object whose state is integrated by this group.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_interface"
      type="er7_utils__IntegratorInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the simulation engine's integration structure.">
      <dimension>0</dimension>
    </member>
    <member
      name="time_interface"
      type="er7_utils__TimeInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the object that represents time.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that guides the integration process. This object is created at construction time by calling the integrator constructor's create_integration_controls method.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_derivs"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of derivatives used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n State vector used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_accel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of accelerations used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_velocity"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of velocities used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_position"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of positions used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv2"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv2.">
      <dimension>0</dimension>
    </member>
    <member
      name="trick_integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor used to generate the state integrators this object.">
      <dimension>0</dimension>
    </member>
    <member
      name="first_order_integrator"
      type="er7_utils__FirstOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a first order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="second_order_integrator"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a second order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="buf_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="half_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="integ_mode"
      type="er7_utils__TrickIntegrator__IntegrationMode"
      io_attributes="15"
      units="--"
      description="n Indicates which of the first or second order integrator is to be used.">
    </member>
    <member
      name="default_first_step_deriv"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Default value of the Trick::Integrator first_step_deriv flag.">
    </member>
  </class>

  <class name="er7_utils__RKFehlberg45IntegratorConstructor">
  </class>

  <class name="er7_utils__RKFehlberg45FirstOrderODEIntegrator">
    <member
      name="state_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The size of the state.">
    </member>
    <member
      name="init_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n State at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n State derivatives at each step in the integration cycle.">
      <dimension>6</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RKFehlberg45SecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Product of delta t and weighted sum of generalized velocities.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives at each step in the integration cycle.">
      <dimension>6</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity derivatives at each step in the integration cycle.">
      <dimension>6</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RKFehlberg45SimpleSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Product of delta t and weighted sum of generalized velocities.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives at each step in the integration cycle.">
      <dimension>6</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity derivatives at each step in the integration cycle.">
      <dimension>6</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RKFehlberg45GeneralizedDerivSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Product of delta t and weighted sum of generalized velocities.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives at each step in the integration cycle.">
      <dimension>6</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity derivatives at each step in the integration cycle.">
      <dimension>6</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RKFehlberg45GeneralizedStepSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Product of delta t and weighted sum of generalized velocities.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives at each step in the integration cycle.">
      <dimension>6</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity derivatives at each step in the integration cycle.">
      <dimension>6</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="Trick__RKF45_IntegratorHelper">
    <member
      name="helper_integ_constructor"
      type="er7_utils__RKFehlberg45IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with RKF45 integration.">
    </member>
  </class>

  <class name="Trick__RKF45_Integrator">
    <member
      name="helper_integ_constructor"
      type="er7_utils__RKFehlberg45IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with RKF45 integration.">
    </member>
    <member
      name="num_state"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="intermediate_step"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="first_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="last_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="is_2nd_order_ODE_technique"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="use_deriv2"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="dt"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopSimObject.cpp">
    </member>
    <member
      name="target_integ_time"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopScheduler.cpp. Final integration time regardless of">
    </member>
    <member
      name="state"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="deriv2"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="state_ws"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="time"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_0"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="verbosity"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor that is used to generate the integration controls for this object and is used to generate the state integrators for each integrated object whose state is integrated by this group.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_interface"
      type="er7_utils__IntegratorInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the simulation engine's integration structure.">
      <dimension>0</dimension>
    </member>
    <member
      name="time_interface"
      type="er7_utils__TimeInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the object that represents time.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that guides the integration process. This object is created at construction time by calling the integrator constructor's create_integration_controls method.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_derivs"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of derivatives used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n State vector used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_accel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of accelerations used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_velocity"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of velocities used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_position"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of positions used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv2"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv2.">
      <dimension>0</dimension>
    </member>
    <member
      name="trick_integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor used to generate the state integrators this object.">
      <dimension>0</dimension>
    </member>
    <member
      name="first_order_integrator"
      type="er7_utils__FirstOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a first order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="second_order_integrator"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a second order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="buf_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="half_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="integ_mode"
      type="er7_utils__TrickIntegrator__IntegrationMode"
      io_attributes="15"
      units="--"
      description="n Indicates which of the first or second order integrator is to be used.">
    </member>
    <member
      name="default_first_step_deriv"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Default value of the Trick::Integrator first_step_deriv flag.">
    </member>
  </class>

  <class name="er7_utils__RKFehlberg78IntegratorConstructor">
  </class>

  <class name="er7_utils__RKFehlberg78FirstOrderODEIntegrator">
    <member
      name="state_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The size of the state.">
    </member>
    <member
      name="init_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n State at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n State derivatives at each step in the integration cycle.">
      <dimension>13</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RKFehlberg78SecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Product of delta t and weighted sum of generalized velocities.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives at each step in the integration cycle.">
      <dimension>13</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity derivatives at each step in the integration cycle.">
      <dimension>13</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RKFehlberg78SimpleSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Product of delta t and weighted sum of generalized velocities.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives at each step in the integration cycle.">
      <dimension>13</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity derivatives at each step in the integration cycle.">
      <dimension>13</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RKFehlberg78GeneralizedDerivSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Product of delta t and weighted sum of generalized velocities.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives at each step in the integration cycle.">
      <dimension>13</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity derivatives at each step in the integration cycle.">
      <dimension>13</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RKFehlberg78GeneralizedStepSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Product of delta t and weighted sum of generalized velocities.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives at each step in the integration cycle.">
      <dimension>13</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity derivatives at each step in the integration cycle.">
      <dimension>13</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="Trick__RKF78_IntegratorHelper">
    <member
      name="helper_integ_constructor"
      type="er7_utils__RKFehlberg78IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with RKF78 integration.">
    </member>
  </class>

  <class name="Trick__RKF78_Integrator">
    <member
      name="helper_integ_constructor"
      type="er7_utils__RKFehlberg78IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with RKF78 integration.">
    </member>
    <member
      name="num_state"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="intermediate_step"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="first_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="last_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="is_2nd_order_ODE_technique"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="use_deriv2"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="dt"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopSimObject.cpp">
    </member>
    <member
      name="target_integ_time"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopScheduler.cpp. Final integration time regardless of">
    </member>
    <member
      name="state"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="deriv2"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="state_ws"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="time"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_0"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="verbosity"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor that is used to generate the integration controls for this object and is used to generate the state integrators for each integrated object whose state is integrated by this group.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_interface"
      type="er7_utils__IntegratorInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the simulation engine's integration structure.">
      <dimension>0</dimension>
    </member>
    <member
      name="time_interface"
      type="er7_utils__TimeInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the object that represents time.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that guides the integration process. This object is created at construction time by calling the integrator constructor's create_integration_controls method.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_derivs"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of derivatives used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n State vector used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_accel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of accelerations used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_velocity"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of velocities used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_position"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of positions used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv2"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv2.">
      <dimension>0</dimension>
    </member>
    <member
      name="trick_integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor used to generate the state integrators this object.">
      <dimension>0</dimension>
    </member>
    <member
      name="first_order_integrator"
      type="er7_utils__FirstOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a first order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="second_order_integrator"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a second order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="buf_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="half_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="integ_mode"
      type="er7_utils__TrickIntegrator__IntegrationMode"
      io_attributes="15"
      units="--"
      description="n Indicates which of the first or second order integrator is to be used.">
    </member>
    <member
      name="default_first_step_deriv"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Default value of the Trick::Integrator first_step_deriv flag.">
    </member>
  </class>

  <class name="er7_utils__RKGill4IntegratorConstructor">
  </class>

  <class name="er7_utils__RKGill4FirstOrderODEIntegrator">
    <member
      name="state_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n The size of the state.">
    </member>
    <member
      name="init_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n State at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n State derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RKGill4SimpleSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="saved_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position after stage 1.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Product of delta t and weighted sum of generalized velocities.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RKGill4GeneralizedDerivSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="saved_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position after stage 1.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Product of delta t and weighted sum of generalized velocities.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RKGill4GeneralizedStepSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="saved_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position after stage 1.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Product of delta t and weighted sum of generalized velocities.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="veldot_hist"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity derivatives at each step in the integration cycle.">
      <dimension>4</dimension>
      <dimension>0</dimension>
    </member>
  </class>

  <class name="Trick__RKG4_IntegratorHelper">
    <member
      name="helper_integ_constructor"
      type="er7_utils__RKGill4IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with RKG4 integration.">
    </member>
  </class>

  <class name="Trick__RKG4_Integrator">
    <member
      name="helper_integ_constructor"
      type="er7_utils__RKGill4IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="The integrator constructor associated with RKG4 integration.">
    </member>
    <member
      name="num_state"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="intermediate_step"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="first_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="last_step_deriv"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="is_2nd_order_ODE_technique"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="use_deriv2"
      type="bool"
      io_attributes="15"
      units="--"
      description="set by integration technique">
    </member>
    <member
      name="dt"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopSimObject.cpp">
    </member>
    <member
      name="target_integ_time"
      type="double"
      io_attributes="15"
      units="--"
      description="set by IntegLoopScheduler.cpp. Final integration time regardless of">
    </member>
    <member
      name="state"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
    <member
      name="deriv"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="deriv2"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="state_ws"
      type="double"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="time"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="time_0"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="verbosity"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor that is used to generate the integration controls for this object and is used to generate the state integrators for each integrated object whose state is integrated by this group.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_interface"
      type="er7_utils__IntegratorInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the simulation engine's integration structure.">
      <dimension>0</dimension>
    </member>
    <member
      name="time_interface"
      type="er7_utils__TimeInterface"
      io_attributes="15"
      units="--"
      description="n The interface between the integration module and the object that represents time.">
      <dimension>0</dimension>
    </member>
    <member
      name="integ_controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that guides the integration process. This object is created at construction time by calling the integrator constructor's create_integration_controls method.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_derivs"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of derivatives used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_state"
      type="double"
      io_attributes="15"
      units="--"
      description="n State vector used to communicate between integrate_1st_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_accel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of accelerations used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_velocity"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of velocities used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="cached_position"
      type="double"
      io_attributes="15"
      units="--"
      description="n Vector of positions used to communicate between integrate_2nd_order_ode and integrate_bodies.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv.">
      <dimension>0</dimension>
    </member>
    <member
      name="er7_deriv2"
      type="double"
      io_attributes="15"
      units="--"
      description="n Allocated array of size buf_size used to trick out Trick's load_deriv2.">
      <dimension>0</dimension>
    </member>
    <member
      name="trick_integ_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n The integrator constructor used to generate the state integrators this object.">
      <dimension>0</dimension>
    </member>
    <member
      name="first_order_integrator"
      type="er7_utils__FirstOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a first order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="second_order_integrator"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The integrator that propagates state as a second order ODE.">
      <dimension>0</dimension>
    </member>
    <member
      name="buf_size"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="half_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n Number of elements in the Trick::Integration group arrays.">
    </member>
    <member
      name="integ_mode"
      type="er7_utils__TrickIntegrator__IntegrationMode"
      io_attributes="15"
      units="--"
      description="n Indicates which of the first or second order integrator is to be used.">
    </member>
    <member
      name="default_first_step_deriv"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Default value of the Trick::Integrator first_step_deriv flag.">
    </member>
  </class>

  <class name="Trick__IntegrationManager">
  </class>

  <class name="Trick__IntegLoopScheduler">
    <member
      name="verbosity"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="last_step_deriv"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="first_step_deriv"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="integ_ptr"
      type="Trick__Integrator"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="sim_objects"
      type="SimObjectVector"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="nominal_cycle"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="next_cycle"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="parent_sim_object"
      type="Trick__SimObject"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="pre_integ_jobs"
      type="Trick__ScheduledJobQueue"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="deriv_jobs"
      type="Trick__ScheduledJobQueue"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="integ_jobs"
      type="Trick__ScheduledJobQueue"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dynamic_event_jobs"
      type="Trick__ScheduledJobQueue"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="post_integ_jobs"
      type="Trick__ScheduledJobQueue"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="IntegLoopSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="integ_sched"
      type="Trick__IntegLoopScheduler"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__MultiDtIntegLoopScheduler">
    <member
      name="verbosity"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="last_step_deriv"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="first_step_deriv"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="integ_ptr"
      type="Trick__Integrator"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="sim_objects"
      type="SimObjectVector"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="nominal_cycle"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="next_cycle"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="parent_sim_object"
      type="Trick__SimObject"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="pre_integ_jobs"
      type="Trick__ScheduledJobQueue"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="deriv_jobs"
      type="Trick__ScheduledJobQueue"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="integ_jobs"
      type="Trick__ScheduledJobQueue"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="dynamic_event_jobs"
      type="Trick__ScheduledJobQueue"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="post_integ_jobs"
      type="Trick__ScheduledJobQueue"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="next_tic"
      type="long long"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="integ_rates"
      type="std__vector&lt;double>"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="integ_next_tics"
      type="std__vector&lt;long long>"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="integ_cycle_tics"
      type="std__vector&lt;long long>"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="indices_to_process"
      type="std__vector&lt;size_t>"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="MultiDtIntegLoopSimObject">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="integ_sched"
      type="Trick__MultiDtIntegLoopScheduler"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="TIME_OFFSET">
    <member
      name="day"
      type="int"
      io_attributes="15"
      units="--"
      description="Day of the year, 0 .. 364">
    </member>
    <member
      name="hour"
      type="int"
      io_attributes="15"
      units="--"
      description="Hour of the day, 0 .. 23">
    </member>
    <member
      name="min"
      type="int"
      io_attributes="15"
      units="--"
      description="Minute of the hour, 0 .. 59">
    </member>
    <member
      name="sec"
      type="double"
      io_attributes="15"
      units="--"
      description="Seconds of the hour 0.0 .. 59.99999999">
    </member>
  </class>

  <class name="Trick__SimTime">
    <member
      name="ret_time"
      type="TIME_OFFSET"
      io_attributes="15"
      units="--"
      description="current run elapsed time">
    </member>
    <member
      name="gmt_ref"
      type="TIME_OFFSET"
      io_attributes="15"
      units="--"
      description="gmt ref time">
    </member>
    <member
      name="gmt_sec_ref"
      type="double"
      io_attributes="15"
      units="--"
      description="gmt ref in seconds">
    </member>
    <member
      name="gmt_time"
      type="TIME_OFFSET"
      io_attributes="15"
      units="--"
      description="current gmt time">
    </member>
    <member
      name="met_ref"
      type="TIME_OFFSET"
      io_attributes="15"
      units="--"
      description="met ref time">
    </member>
    <member
      name="met_sec_ref"
      type="double"
      io_attributes="15"
      units="--"
      description="met ref in seconds">
    </member>
    <member
      name="met_time"
      type="TIME_OFFSET"
      io_attributes="15"
      units="--"
      description="current met time">
    </member>
  </class>

  <class name="er7_utils__IntegratorConstructorFactory">
  </class>

  <class name="er7_utils__BeemanIntegratorConstructor">
    <member
      name="primer_constructor"
      type="er7_utils__IntegratorConstructor"
      io_attributes="15"
      units="--"
      description="n Constructor used to create the primers.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__BeemanSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that controls this state integrator.">
      <dimension>0</dimension>
    </member>
    <member
      name="primer"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The state integrator used to prime this integrator.">
      <dimension>0</dimension>
    </member>
    <member
      name="priming_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The number of start of cycle derivatives needed by the technique.">
    </member>
    <member
      name="prime_counter"
      type="int"
      io_attributes="15"
      units="--"
      description="n Priming phase countdown. This is set to priming_state_size initially and upon reset. Priming is complete when the counter reaches zero.">
    </member>
    <member
      name="primed"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Indicates whether the object has been primed. This is false initially and upon reset; it is set to true when priming is complete.">
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="mean_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity used to update position.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_acc"
      type="double"
      io_attributes="15"
      units="--"
      description="n Acceleration at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="prev_acc"
      type="double"
      io_attributes="15"
      units="--"
      description="n Acceleration at the start of the previous integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative at the current time step.">
      <dimension>0</dimension>
    </member>
    <member
      name="posddot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position 2nd derivative at the current time step.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_posddot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position 2nd derivative at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="prev_posddot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position 2nd derivative at the start of the previous integration cycle.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__BeemanSimpleSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that controls this state integrator.">
      <dimension>0</dimension>
    </member>
    <member
      name="primer"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The state integrator used to prime this integrator.">
      <dimension>0</dimension>
    </member>
    <member
      name="priming_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The number of start of cycle derivatives needed by the technique.">
    </member>
    <member
      name="prime_counter"
      type="int"
      io_attributes="15"
      units="--"
      description="n Priming phase countdown. This is set to priming_state_size initially and upon reset. Priming is complete when the counter reaches zero.">
    </member>
    <member
      name="primed"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Indicates whether the object has been primed. This is false initially and upon reset; it is set to true when priming is complete.">
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="mean_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity used to update position.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_acc"
      type="double"
      io_attributes="15"
      units="--"
      description="n Acceleration at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="prev_acc"
      type="double"
      io_attributes="15"
      units="--"
      description="n Acceleration at the start of the previous integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative at the current time step.">
      <dimension>0</dimension>
    </member>
    <member
      name="posddot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position 2nd derivative at the current time step.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_posddot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position 2nd derivative at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="prev_posddot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position 2nd derivative at the start of the previous integration cycle.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__BeemanGeneralizedDerivSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="controls"
      type="er7_utils__IntegrationControls"
      io_attributes="15"
      units="--"
      description="n The integration controls object that controls this state integrator.">
      <dimension>0</dimension>
    </member>
    <member
      name="primer"
      type="er7_utils__SecondOrderODEIntegrator"
      io_attributes="15"
      units="--"
      description="n The state integrator used to prime this integrator.">
      <dimension>0</dimension>
    </member>
    <member
      name="priming_state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The number of start of cycle derivatives needed by the technique.">
    </member>
    <member
      name="prime_counter"
      type="int"
      io_attributes="15"
      units="--"
      description="n Priming phase countdown. This is set to priming_state_size initially and upon reset. Priming is complete when the counter reaches zero.">
    </member>
    <member
      name="primed"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Indicates whether the object has been primed. This is false initially and upon reset; it is set to true when priming is complete.">
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="mean_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity used to update position.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_acc"
      type="double"
      io_attributes="15"
      units="--"
      description="n Acceleration at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="prev_acc"
      type="double"
      io_attributes="15"
      units="--"
      description="n Acceleration at the start of the previous integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative at the current time step.">
      <dimension>0</dimension>
    </member>
    <member
      name="posddot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position 2nd derivative at the current time step.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_posddot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position 2nd derivative at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="prev_posddot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position 2nd derivative at the start of the previous integration cycle.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__PositionVerletIntegratorConstructor">
  </class>

  <class name="er7_utils__PositionVerletSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Derivative of generalized position.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Generalized position step.">
      <dimension>0</dimension>
    </member>
    <member
      name="h_dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Half of the generalized position step.">
      <dimension>0</dimension>
    </member>
    <member
      name="midpoint"
      type="double"
      io_attributes="15"
      units="--"
      description="n Leapfrog position.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of the current integration interval.">
      <dimension>0</dimension>
    </member>
    <member
      name="prev_accel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Acceleration at the end of the previous integration interval.">
      <dimension>0</dimension>
    </member>
    <member
      name="restart"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Make an initial half step when set. This flag is set initially and after a call to reset. The flag is cleared upon making that half step.">
    </member>
  </class>

  <class name="er7_utils__PositionVerletSimpleSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Derivative of generalized position.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Generalized position step.">
      <dimension>0</dimension>
    </member>
    <member
      name="h_dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Half of the generalized position step.">
      <dimension>0</dimension>
    </member>
    <member
      name="midpoint"
      type="double"
      io_attributes="15"
      units="--"
      description="n Leapfrog position.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of the current integration interval.">
      <dimension>0</dimension>
    </member>
    <member
      name="prev_accel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Acceleration at the end of the previous integration interval.">
      <dimension>0</dimension>
    </member>
    <member
      name="restart"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Make an initial half step when set. This flag is set initially and after a call to reset. The flag is cleared upon making that half step.">
    </member>
  </class>

  <class name="er7_utils__PositionVerletGeneralizedDerivSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Derivative of generalized position.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Generalized position step.">
      <dimension>0</dimension>
    </member>
    <member
      name="h_dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Half of the generalized position step.">
      <dimension>0</dimension>
    </member>
    <member
      name="midpoint"
      type="double"
      io_attributes="15"
      units="--"
      description="n Leapfrog position.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of the current integration interval.">
      <dimension>0</dimension>
    </member>
    <member
      name="prev_accel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Acceleration at the end of the previous integration interval.">
      <dimension>0</dimension>
    </member>
    <member
      name="restart"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Make an initial half step when set. This flag is set initially and after a call to reset. The flag is cleared upon making that half step.">
    </member>
  </class>

  <class name="er7_utils__PositionVerletGeneralizedStepSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Derivative of generalized position.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Generalized position step.">
      <dimension>0</dimension>
    </member>
    <member
      name="h_dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Half of the generalized position step.">
      <dimension>0</dimension>
    </member>
    <member
      name="midpoint"
      type="double"
      io_attributes="15"
      units="--"
      description="n Leapfrog position.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of the current integration interval.">
      <dimension>0</dimension>
    </member>
    <member
      name="prev_accel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Acceleration at the end of the previous integration interval.">
      <dimension>0</dimension>
    </member>
    <member
      name="restart"
      type="bool"
      io_attributes="15"
      units="--"
      description="n Make an initial half step when set. This flag is set initially and after a call to reset. The flag is cleared upon making that half step.">
    </member>
  </class>

  <class name="er7_utils__RK2MidpointIntegratorConstructor">
  </class>

  <class name="er7_utils__RK2MidpointSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position step.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RK2MidpointSimpleSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position step.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RK2MidpointGeneralizedDerivSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position step.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__RK2MidpointGeneralizedStepSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_pos"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of an integration cycle.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivatives.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position step.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__VelocityVerletIntegratorConstructor">
  </class>

  <class name="er7_utils__VelocityVerletSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of the integration interval.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_acc"
      type="double"
      io_attributes="15"
      units="--"
      description="n Acceleration at the start of the integration interval.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Generalized position step.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative at the first step of the integration cycle.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__VelocityVerletSimpleSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of the integration interval.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_acc"
      type="double"
      io_attributes="15"
      units="--"
      description="n Acceleration at the start of the integration interval.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Generalized position step.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative at the first step of the integration cycle.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__VelocityVerletGeneralizedDerivSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of the integration interval.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_acc"
      type="double"
      io_attributes="15"
      units="--"
      description="n Acceleration at the start of the integration interval.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Generalized position step.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative at the first step of the integration cycle.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__VelocityVerletGeneralizedStepSecondOrderODEIntegrator">
    <member
      name="state_size"
      type="int"
      io_attributes="15"
      units="--"
      description="n The sizes of the generalized position and generalized velocity vectors.">
      <dimension>2</dimension>
    </member>
    <member
      name="problem_type"
      type="er7_utils__Integration__ODEProblemType"
      io_attributes="15"
      units="--"
      description="n The type of problem to be solved.">
    </member>
    <member
      name="init_vel"
      type="double"
      io_attributes="15"
      units="--"
      description="n Velocity at the start of the integration interval.">
      <dimension>0</dimension>
    </member>
    <member
      name="init_acc"
      type="double"
      io_attributes="15"
      units="--"
      description="n Acceleration at the start of the integration interval.">
      <dimension>0</dimension>
    </member>
    <member
      name="dtheta"
      type="double"
      io_attributes="15"
      units="--"
      description="n Generalized position step.">
      <dimension>0</dimension>
    </member>
    <member
      name="posdot"
      type="double"
      io_attributes="15"
      units="--"
      description="n Position derivative at the first step of the integration cycle.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__IntegrableObject">
    <member
      name="integ_group"
      type="er7_utils__BaseIntegrationGroup"
      io_attributes="15"
      units="--"
      description="n The integration group that integrates this body, and possibly others.">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__IntegratorResultMerger">
  </class>

  <class name="er7_utils__BogusIntegratorResultMerger">
  </class>

  <class name="er7_utils__IntegratorResultMergerContainer">
    <member
      name="integ_merger"
      type="er7_utils__IntegratorResultMerger"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="er7_utils__LeftQuaternionGeneralizedPositionDerivativeFunctions">
  </class>

  <class name="er7_utils__LeftQuaternionGeneralizedPositionStepFunctions">
  </class>

  <class name="er7_utils__LeftQuaternionGeneralizedPositionFunctions">
  </class>

  <class name="er7_utils__NChooseM">
    <member
      name="triangle"
      type="unsigned long long"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="triangle_nrows"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="er7_utils__UInt128">
    <member
      name="low"
      type="unsigned long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="high"
      type="unsigned long long"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="er7_utils__Ratio128">
    <member
      name="sign"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="num"
      type="er7_utils__UInt128"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="den"
      type="er7_utils__UInt128"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__DataRecordBuffer">
  </class>

  <class name="Trick__LoggingCycle">
    <member
      name="rate_in_seconds"
      type="double"
      io_attributes="15"
      units="s"
      description="Logging rate in seconds">
    </member>
    <member
      name="rate_in_tics"
      type="long long"
      io_attributes="15"
      units="--"
      description="Logging rate in sim tics">
    </member>
    <member
      name="next_cycle_in_tics"
      type="long long"
      io_attributes="15"
      units="--"
      description="Next cycle in tics for logging">
    </member>
  </class>

  <class name="Trick__DataRecordGroup">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="record"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="inited"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="group_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="output_dir"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="file_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="freq"
      type="Trick__DR_Freq"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="start"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="cycle"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="num_variable_names"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="variable_names"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="variable_alias"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="num_change_variable_names"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="change_variable_names"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="change_variable_alias"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="max_num"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="max_size_warning"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="writer_buff_size"
      type="unsigned long"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="byte_order"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="single_prec_only"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="buffer_type"
      type="Trick__DR_Buffering"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="job_class"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="curr_time"
      type="double"
      io_attributes="10"
      units="--">
    </member>
    <member
      name="logging_rates"
      type="std__vector&lt;LoggingCycle>"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__DRDMutexes">
    <member
      name="cancelled"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__DRDWriterThread">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="rt_priority"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__DataRecordDispatcher">
    <member
      name="drd_writer_thread"
      type="Trick__DRDWriterThread"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="warning_level"
      type="int"
      io_attributes="15"
      units="--"
      description="Level 0: disabled Level 1: printed warning Level 2+: exec_terminate">
    </member>
  </class>

  <class name="Trick__DRAscii">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="record"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="inited"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="group_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="output_dir"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="file_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="freq"
      type="Trick__DR_Freq"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="start"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="cycle"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="num_variable_names"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="variable_names"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="variable_alias"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="num_change_variable_names"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="change_variable_names"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="change_variable_alias"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="max_num"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="max_size_warning"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="writer_buff_size"
      type="unsigned long"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="byte_order"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="single_prec_only"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="buffer_type"
      type="Trick__DR_Buffering"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="job_class"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="curr_time"
      type="double"
      io_attributes="10"
      units="--">
    </member>
    <member
      name="logging_rates"
      type="std__vector&lt;LoggingCycle>"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="ascii_float_format"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="ascii_double_format"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="delimiter"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__DRBinary">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="record"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="inited"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="group_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="output_dir"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="file_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="freq"
      type="Trick__DR_Freq"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="start"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="cycle"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="num_variable_names"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="variable_names"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="variable_alias"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="num_change_variable_names"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="change_variable_names"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="change_variable_alias"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="max_num"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="max_size_warning"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="writer_buff_size"
      type="unsigned long"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="byte_order"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="single_prec_only"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="buffer_type"
      type="Trick__DR_Buffering"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="job_class"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="curr_time"
      type="double"
      io_attributes="10"
      units="--">
    </member>
    <member
      name="logging_rates"
      type="std__vector&lt;LoggingCycle>"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__DRHDF5">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="record"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="inited"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="group_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="output_dir"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="file_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="freq"
      type="Trick__DR_Freq"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="start"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="cycle"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="num_variable_names"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="variable_names"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="variable_alias"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="num_change_variable_names"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="change_variable_names"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="change_variable_alias"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="max_num"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="max_size_warning"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="writer_buff_size"
      type="unsigned long"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="byte_order"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="single_prec_only"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="buffer_type"
      type="Trick__DR_Buffering"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="job_class"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="curr_time"
      type="double"
      io_attributes="10"
      units="--">
    </member>
    <member
      name="logging_rates"
      type="std__vector&lt;LoggingCycle>"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__DebugPause">
    <member
      name="debug_pause_flag"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__EchoJobs">
    <member
      name="echo_job_flag"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__FrameDataRecordGroup">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="id"
      type="int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="object_disabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="record"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="inited"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="group_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="output_dir"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="file_name"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="freq"
      type="Trick__DR_Freq"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="start"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="cycle"
      type="double"
      io_attributes="15"
      units="s">
    </member>
    <member
      name="num_variable_names"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="variable_names"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="variable_alias"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="num_change_variable_names"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="change_variable_names"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="change_variable_alias"
      type="char"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
      <dimension>0</dimension>
    </member>
    <member
      name="max_num"
      type="unsigned int"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="max_size_warning"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="writer_buff_size"
      type="unsigned long"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="byte_order"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="single_prec_only"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="buffer_type"
      type="Trick__DR_Buffering"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="job_class"
      type="std__string"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="curr_time"
      type="double"
      io_attributes="10"
      units="--">
    </member>
    <member
      name="logging_rates"
      type="std__vector&lt;LoggingCycle>"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="thread_id"
      type="unsigned int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="thread_record_time"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="start_time"
      type="long long"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="frame_sched_time"
      type="long long"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="frame_time"
      type="double"
      io_attributes="15"
      units="s">
    </member>
  </class>

  <class name="Trick__timeline_t">
    <member
      name="trick_job"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="isEndOfFrame"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="isTopOfFrame"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="id"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="start"
      type="long long"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="stop"
      type="long long"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__FrameLog">
    <member
      name="frame_log_flag"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="drg_trick"
      type="Trick__FrameDataRecordGroup"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="drg_frame"
      type="Trick__FrameDataRecordGroup"
      io_attributes="15"
      units="--">
      <dimension>0</dimension>
    </member>
    <member
      name="plots_per_page"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="number of plots per page">
    </member>
  </class>

  <class name="Trick__TestCase">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="status"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="parent"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="elapsed_time"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="failure_string"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__TestSuite">
    <member
      name="num_failures"
      type="unsigned int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="test_results"
      type="std__vector&lt;Trick__TestCase *>"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__UnitTest">
    <member
      name="enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="exit_code_enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="file_name"
      type="std__string"
      io_attributes="10"
      units="--">
    </member>
  </class>

  <class name="Trick__CheckPointRestart">
    <member
      name="checkpoint_times"
      type="std__priority_queue&lt;long long, std__vector&lt;long long>, std__greater&lt;long long> >"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="safestore_period"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="safestore_time"
      type="long long"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="pre_init_checkpoint"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="post_init_checkpoint"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="end_checkpoint"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="safestore_enabled"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
    <member
      name="cpu_num"
      type="int"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__AttributesMap">
    <member
      name="name_to_attr_map"
      type="std__map&lt;std__string, ATTRIBUTES *>"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__EnumAttributesMap">
    <member
      name="name_to_attr_map"
      type="std__map&lt;std__string, ENUM_ATTR *>"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__Sie">
    <member
      name="move_runtime_generation"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__STLInterface">
    <member
      name="stl_id"
      type="unsigned int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="restore"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__ExternalApplication">
    <member
      name="host"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="port"
      type="unsigned short"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="auto_reconnect"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="auto_reconnect_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="cycle_period"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="cycle_period_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="minimum_cycle_period"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="minimum_cycle_period_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="disconnect_behavior"
      type="Trick__ExternalApplication__DisconnectBehavior"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="disconnect_behavior_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="height"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="height_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="width"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="width_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="x"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="x_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="y"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="y_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="command"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__SimControlPanel">
    <member
      name="host"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="port"
      type="unsigned short"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="auto_reconnect"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="auto_reconnect_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="cycle_period"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="cycle_period_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="minimum_cycle_period"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="minimum_cycle_period_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="disconnect_behavior"
      type="Trick__ExternalApplication__DisconnectBehavior"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="disconnect_behavior_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="height"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="height_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="width"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="width_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="x"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="x_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="y"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="y_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="command"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="auto_exit"
      type="bool"
      io_attributes="15"
      units="--">
    </member>
  </class>

  <class name="Trick__TrickView">
    <member
      name="host"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="port"
      type="unsigned short"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="auto_reconnect"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="auto_reconnect_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="cycle_period"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="cycle_period_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="minimum_cycle_period"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="minimum_cycle_period_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="disconnect_behavior"
      type="Trick__ExternalApplication__DisconnectBehavior"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="disconnect_behavior_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="height"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="height_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="width"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="width_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="x"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="x_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="y"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="y_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="command"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="strip_charts_only"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="strip_charts_only_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="open_file"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="open_file_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="open_set_file"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="open_set_file_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="set_file"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="set_file_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__MalfunctionsTrickView">
    <member
      name="host"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="port"
      type="unsigned short"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="auto_reconnect"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="auto_reconnect_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="cycle_period"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="cycle_period_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="minimum_cycle_period"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="minimum_cycle_period_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="disconnect_behavior"
      type="Trick__ExternalApplication__DisconnectBehavior"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="disconnect_behavior_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="height"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="height_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="width"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="width_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="x"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="x_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="y"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="y_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="command"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__MonteMonitor">
    <member
      name="host"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="port"
      type="unsigned short"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="auto_reconnect"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="auto_reconnect_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="cycle_period"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="cycle_period_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="minimum_cycle_period"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="minimum_cycle_period_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="disconnect_behavior"
      type="Trick__ExternalApplication__DisconnectBehavior"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="disconnect_behavior_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="height"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="height_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="width"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="width_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="x"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="x_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="y"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="y_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="command"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__StripChart">
    <member
      name="host"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="port"
      type="unsigned short"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="auto_reconnect"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="auto_reconnect_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="cycle_period"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="cycle_period_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="minimum_cycle_period"
      type="double"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="minimum_cycle_period_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="disconnect_behavior"
      type="Trick__ExternalApplication__DisconnectBehavior"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="disconnect_behavior_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="height"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="height_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="width"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="width_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="x"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="x_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="y"
      type="int"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="y_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="command"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="input_file"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="file_set"
      type="bool"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__RtiEventBase">
    <member
      name="ref"
      type="REF2"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="Trick__RtiList">
    <member
      name="event_list"
      type="std__vector&lt;RtiEventBase *>"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__RtiExec">
    <member
      name="frame_multiple"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="multiple of software_frame cycles to execute">
    </member>
    <member
      name="frame_offset"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="offset number of frames to execute">
    </member>
  </class>

  <class name="Trick__RtiStager">
  </class>

  <class name="Trick__UdUnits">
  </class>

  <class name="triad_t">
    <member
      name="op"
      type="int"
      io_attributes="15"
      units="--"
      description="operator">
    </member>
    <member
      name="a1"
      type="int"
      io_attributes="15"
      units="--"
      description="arg1">
    </member>
    <member
      name="a2"
      type="int"
      io_attributes="15"
      units="--"
      description="arg2">
    </member>
  </class>

  <class name="Units_t">
    <member
      name="nt"
      type="int"
      io_attributes="15"
      units="--"
      description="Number of Triads">
    </member>
    <member
      name="t"
      type="triad_t"
      io_attributes="15"
      units="--"
      description="triad array">
      <dimension>24</dimension>
    </member>
  </class>

  <class name="UnitsConvFn_t">
    <member
      name="C"
      type="double"
      io_attributes="15"
      units="--"
      description="Conversion Function Coefficients">
      <dimension>2</dimension>
    </member>
  </class>

  <class name="UCFn">
  </class>

  <class name="Unit__CONVERSION_ERROR">
  </class>

  <class name="Unit">
    <member
      name="units_name"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="units"
      type="Units_t"
      io_attributes="15"
      units="1">
      <dimension>0</dimension>
    </member>
  </class>

  <class name="Trick__UnitsMap">
    <member
      name="param_units"
      type="std__map&lt;std__string, char *>"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="Trick__Zeroconf">
    <member
      name="name"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
    <member
      name="type"
      type="std__string"
      io_attributes="15"
      units="1">
    </member>
  </class>

  <class name="WAVE_FORM">
    <member
      name="type"
      type="Wave_Form"
      io_attributes="15"
      units="--"
      description="Type of wave form">
    </member>
    <member
      name="start"
      type="double"
      io_attributes="15"
      units="s"
      description="Start time for wave">
    </member>
    <member
      name="stop"
      type="double"
      io_attributes="15"
      units="s"
      description="Stop time for wave">
    </member>
    <member
      name="ramp"
      type="double"
      io_attributes="15"
      units="s"
      description="Time to ramp wave output from 0 to 1 and 1 to 0">
    </member>
    <member
      name="pause"
      type="double"
      io_attributes="15"
      units="s"
      description="Pause time between end of first doublet pulse and start of second doublet pulse">
    </member>
    <member
      name="frequency"
      type="double"
      io_attributes="15"
      units="1/s"
      description="Frequency of oscillating waves">
    </member>
    <member
      name="phase"
      type="double"
      io_attributes="15"
      units="rad"
      description="Phase offset for start of oscillating waves">
    </member>
    <member
      name="init_random"
      type="int"
      io_attributes="15"
      units="--"
      description="Yes = Initialize random number generator">
    </member>
    <member
      name="random_seed"
      type="unsigned long"
      io_attributes="15"
      units="--"
      description="Seed for random noise generator">
    </member>
    <member
      name="sigma_range"
      type="int"
      io_attributes="15"
      units="--"
      description="Range of output in standard deviations, 3 = 3sigma, 6 = 6sigma, etc.">
    </member>
    <member
      name="init_user_data"
      type="int"
      io_attributes="15"
      units="--"
      description="Yes = Open user defined wave form data file">
    </member>
    <member
      name="user_data"
      type="char"
      io_attributes="15"
      units="--"
      description="File name for user defined wave form">
      <dimension>0</dimension>
    </member>
    <member
      name="next_time"
      type="double"
      io_attributes="15"
      units="s"
      description="Next user time from user_data">
    </member>
    <member
      name="next_val"
      type="double"
      io_attributes="15"
      units="--"
      description="Next user wave value from user_data">
    </member>
    <member
      name="user_time"
      type="double"
      io_attributes="15"
      units="s"
      description="Current user time from user_data">
    </member>
    <member
      name="user_val"
      type="double"
      io_attributes="15"
      units="--"
      description="Current user wave value from user_data">
    </member>
  </class>

  <class name="RAND_GENERATOR">
    <member
      name="option"
      type="rand_generator"
      io_attributes="15"
      units="--"
      description="Random number generator option">
    </member>
    <member
      name="uniform"
      type="uniform_generator"
      io_attributes="15"
      units="--"
      description="Uniform Random number generator option">
    </member>
    <member
      name="seed_1"
      type="unsigned long"
      io_attributes="15"
      units="--"
      description="Seed for uniform RNG single LCG">
    </member>
    <member
      name="seed_trpl"
      type="long"
      io_attributes="15"
      units="--"
      description="Seed for uniform RNG triple LCG make this seed negative for initializing the RNG table">
    </member>
    <member
      name="iff"
      type="int"
      io_attributes="15"
      units="--"
      description="Initialization flag for triple LCG">
    </member>
    <member
      name="table"
      type="double"
      io_attributes="15"
      units="--"
      description="Table for RNG triple LCG">
      <dimension>98</dimension>
    </member>
    <member
      name="sigma_range"
      type="int"
      io_attributes="15"
      units="--"
      description="Sigma range for output random num Must be > 0 for triangular gauss. Must be >= 0 for bell gauss, 0 gives infinite sigma.">
    </member>
    <member
      name="ix1"
      type="long"
      io_attributes="15"
      units="--"
      description="Intermidiate Radom Number">
    </member>
    <member
      name="ix2"
      type="long"
      io_attributes="15"
      units="--"
      description="Intermidiate Radom Number">
    </member>
    <member
      name="ix3"
      type="long"
      io_attributes="15"
      units="--"
      description="Intermidiate Radom Number">
    </member>
  </class>

  <class name="TRICK_GSL_RANDIST">
    <member
      name="type"
      type="TRICK_GSL_TYPE"
      io_attributes="15"
      units="--"
      description="Type of distribution desired">
    </member>
    <member
      name="seed"
      type="unsigned long"
      io_attributes="15"
      units="--"
      description="Seed">
    </member>
    <member
      name="sigma"
      type="double"
      io_attributes="15"
      units="--"
      description="Std. dev for gauss/poisson distrib">
    </member>
    <member
      name="mu"
      type="double"
      io_attributes="15"
      units="--"
      description="mean for gauss/poisson distribution">
    </member>
    <member
      name="min"
      type="double"
      io_attributes="15"
      units="--"
      description="Minimum value in range">
    </member>
    <member
      name="max"
      type="double"
      io_attributes="15"
      units="--"
      description="Maximum value in range">
    </member>
    <member
      name="rel_min"
      type="int"
      io_attributes="15"
      units="--"
      description="Minimun is a relative minimum">
    </member>
    <member
      name="rel_max"
      type="int"
      io_attributes="15"
      units="--"
      description="Maximum is a relative maximum">
    </member>
    <member
      name="sigma_range"
      type="int"
      io_attributes="15"
      units="--"
      description="Sigma range for output random num Must be > 0 for triangular gauss. Must be >= 0 for bell gauss, 0 gives infinite sigma.">
    </member>
    <member
      name="uniform"
      type="uniform_generator"
      io_attributes="15"
      units="--"
      description="Uniform Random number generator option">
    </member>
  </class>

  <class name="TRICK_GSL_RETURN_TYPE">
    <member
      name="ui"
      type="unsigned int"
      io_attributes="15"
      units="--"
      description="unsigned integer return">
    </member>
    <member
      name="d"
      type="double"
      io_attributes="15"
      units="--"
      description="double return">
    </member>
    <member
      name="ll"
      type="unsigned long long"
      io_attributes="15"
      units="--"
      description="long long field used for printing">
    </member>
    <member
      name="ii"
      type="int"
      io_attributes="15"
      units="--"
      description="signed int return">
    </member>
  </class>

  <class name="_LQUEUE">
    <member
      name="list"
      type="_DLLIST"
      io_attributes="15"
      units="--"
      description="implementing queue using a linked-list">
    </member>
  </class>

  <class name="LQUEUE">
    <member
      name="list"
      type="_DLLIST"
      io_attributes="15"
      units="--"
      description="implementing queue using a linked-list">
    </member>
  </class>

  <class name="_LSTACK">
    <member
      name="list"
      type="_DLLIST"
      io_attributes="15"
      units="--"
      description="implementing the stack using a list">
    </member>
  </class>

  <class name="LSTACK">
    <member
      name="list"
      type="_DLLIST"
      io_attributes="15"
      units="--"
      description="implementing the stack using a list">
    </member>
  </class>

<!--
Runtime Allocations
Do not edit this comment or file content past this point
-->
</sie>