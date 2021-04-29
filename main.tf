
provider "intersight" {
  apikey    = var.api_key
  secretkey = var.secret_key
  endpoint  = var.endpoint
}

module "terraform-intersight-iks" {
  source = "terraform-cisco-modules/iks/intersight//"

  # Infra Config Policy Information
  for_each = var.cluster_definition
  cluster_name = each.key
  cluster_action = each.value.cluster_action
  vc_target_name   = var.vc_target_name
  vc_portgroup     = [var.vc_portgroup]
  vc_datastore     = var.vc_datastore
  vc_cluster       = var.vc_cluster
  vc_resource_pool = var.vc_resource_pool
  vc_password      = var.vc_password

  # IP Pool Information
  ip_starting_address = each.value.ip_starting_address
  ip_pool_size        = each.value.ip_pool_size
  ip_netmask          = each.value.ip_netmask
  ip_gateway          = each.value.ip_gateway
  ip_primary_dns      = var.ip_primary_dns
  ip_secondary_dns    = var.ip_secondary_dns

  # Network Configuration Settings
  # pod_cidr = "100.65.0.0/16"
  # service_cidr = "100.64.0.0/24"
  # cni = "Calico"
  domain_name         = var.domain_name
  timezone            = var.timezone
  # unsigned_registries = ["10.101.128.128"]
  # root_ca_registries  = [""]

  # Cluster information
  ssh_user     = var.ssh_user
  ssh_key      = var.ssh_key
  worker_size  = each.value.worker_size
  worker_count = each.value.worker_count
  master_count = each.value.master_count
  load_balancers = each.value.load_balancers

  # Organization and Tag
  organization = var.organization
  tags         = var.tags
}