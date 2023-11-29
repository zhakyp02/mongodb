############## cluster.tf ##########################333
resource "mongodbatlas_cluster_outage_simulation" "outage_simulation" {
  count        = var.enable_outage_simulation ? 1 : 0
  project_id   = var.mongo_atlas_project_id
  cluster_name = var.cluster_name

  outage_filters {
    cloud_provider = "GCP"
    region_name    = "CENTRAL_US"
  }

  depends_on = [module.mpo_dev_002_cluster]
}


############### variables.tf ##########################


variable "enable_outage_simulation" {
  type = bool
}


############### tfvars #################################
enable_outage_simulation = false
