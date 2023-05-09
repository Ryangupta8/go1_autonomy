function deg2rad(deg)
  return deg * (math.pi / 180)
end

NavigationParameters = {
  laser_topic = "/scan";
  odom_topic = "/robot/odom";
  localization_topic = "/localization";
  -- image_topic = "/camera/color/image_raw/compressed";
  init_topic = "/initialpose";
  enable_topic = "autonomy_arbiter/enabled";
  laser_loc = {
    x = 0.065;
    y = 0;
  };
  dt = 0.01;
  max_linear_accel = 0.1;
  max_linear_decel = 0.2;
  max_linear_speed = 0.175;
  max_angular_accel = 0.1;
  max_angular_decel = 0.2;
  max_angular_speed = 0.2;
  carrot_dist = 1.5;
  system_latency = 0.24;
  obstacle_margin = 0.2;
  num_options = 20; -- 31; -- number of path options
  robot_width = 0.275;
  robot_length = 0.4;
  base_link_offset = 0;
  max_free_path_length = 6.0;
  max_clearance = 1.0;
  can_traverse_stairs = false;
  use_map_speed = true;
  target_dist_tolerance = 0.5;
  target_vel_tolerance = 0.1;
  target_angle_tolerance = 0.1;
  local_fov = deg2rad(360);
  use_kinect = false;
  camera_calibration_path = "config/camera_calibration.yaml";
  model_path = "../preference_learning_models/jit_cost_model_outdoor_6dim.pt";
  evaluator_type = "linear";
};

AckermannSampler = {
  max_curvature = 4; -- 1 / radius
  clearance_path_clip_fraction = 0.8;
};
