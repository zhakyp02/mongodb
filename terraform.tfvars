replication_specs = [
  {
    num_shards = 1                # Set to your desired value if applicable, otherwise, keep it as null.
    zone_name  = "your_zone_name" # Fill in your actual value or keep it as null if not needed.
    region_configs = [
      {
        provider_name = "GCP"
        priority      = 7
        region_name   = "CENTRAL_US"
        electable_specs = [
          {
            instance_size = "M30"
            node_count    = 3
          }
        ]
        read_only_specs = [
          {
            instance_size = "M30"
            node_count    = 1
          }
        ]
        analytics_specs = [{
          instance_size = "M30"
          node_count    = 1
        }]
        auto_scaling = [{
          compute_enabled            = true
          compute_max_instance_size  = "M50"
          compute_min_instance_size  = "M30"
          compute_scale_down_enabled = true
          disk_gb_enabled            = true
        }]
        analytics_auto_scaling = [{
          compute_enabled            = true
          compute_max_instance_size  = "M50"
          compute_min_instance_size  = "M30"
          compute_scale_down_enabled = true
          disk_gb_enabled            = true
        }]
      },
      {
        provider_name = "GCP"
        priority      = 6
        region_name   = "US_EAST_4"
        electable_specs = [
          {
            instance_size = "M30"
            node_count    = 2
          }
        ]
        read_only_specs = [{
          instance_size = "M30"
          node_count    = 1
        }]
        analytics_specs = [{
          instance_size = "M30"
          node_count    = 1
        }]
        auto_scaling = [{
          compute_enabled            = true
          compute_max_instance_size  = "M50"
          compute_min_instance_size  = "M30"
          compute_scale_down_enabled = true
          disk_gb_enabled            = true
        }]
        analytics_auto_scaling = [{
          compute_enabled            = true
          compute_max_instance_size  = "M50"
          compute_min_instance_size  = "M30"
          compute_scale_down_enabled = true
          disk_gb_enabled            = true
        }]
      }
    ]
  }
]
