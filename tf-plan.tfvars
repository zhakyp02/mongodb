replication_specs = [
  {
    num_shards = 1
    zone_name  = "ZoneName managed by Terraform"

    region_configs = [
      {
        priority      = 7
        provider_name = "GCP"
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

        analytics_specs = [
          {
            instance_size = "M30"
            node_count    = 1
          }
        ]

        auto_scaling = [
          {
            compute_enabled            = true
            compute_max_instance_size  = "M50"
            compute_min_instance_size  = "M30"
            compute_scale_down_enabled = true
            disk_gb_enabled            = true
          }
        ]

        analytics_auto_scaling = [
          {
            compute_enabled            = true
            compute_max_instance_size  = "M50"
            compute_min_instance_size  = "M30"
            compute_scale_down_enabled = true
            disk_gb_enabled            = true
          }
        ]
      },
      {
        priority      = 6
        provider_name = "GCP"
        region_name   = "US_EAST_4"

        electable_specs = [
          {
            instance_size = "M30"
            node_count    = 2
          }
        ]

        read_only_specs = [
          {
            instance_size = "M30"
            node_count    = 1
          }
        ]

        analytics_specs = [
          {
            instance_size = "M30"
            node_count    = 1
          }
        ]

        auto_scaling = [
          {
            compute_enabled            = true
            compute_max_instance_size  = "M50"
            compute_min_instance_size  = "M30"
            compute_scale_down_enabled = true
            disk_gb_enabled            = true
          }
        ]

        analytics_auto_scaling = [
          {
            compute_enabled            = true
            compute_max_instance_size  = "M50"
            compute_min_instance_size  = "M30"
            compute_scale_down_enabled = true
            disk_gb_enabled            = true
          }
        ]
      }
    ]
  }
]
