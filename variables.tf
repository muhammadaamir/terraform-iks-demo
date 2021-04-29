variable "cluster_definition" {
  description = "Cluster Definition"
  type = map(any)
}

variable "api_key" {
  type        = string
  description = "Intersight API Key"
}
variable "secret_key" {
  type        = string
  description = "Secret Key or file location"
}
variable "endpoint" {
  type        = string
  description = "API Endpoint URL"
  default     = "https://www.intersight.com"
}

variable "vc_target_name" {
  type        = string
  description = "vCenter Name"
}

variable "vc_portgroup" {
  type = string
  description = "vCenter Port-Group"
}

variable "vc_datastore" {
  type = string
  description = "vCenter Datastore"
}

variable "vc_cluster" {
  type = string
  description = "vCenter Cluster"
  
}

variable "vc_resource_pool" {
  type = string
  description = "vCenter Resource Pool"
  default = ""
}

variable "vc_password" {
  type = string
  description = "vCenter Password"
  sensitive = true
}

variable "ip_primary_dns" {
  type = string
  description = "Primary DNS Server"
}

variable "ip_secondary_dns" {
  type = string
  description = "Seconday DNS Server"
  default = ""
}

variable "domain_name" {
  type = string
  description = "DNS Search Domain"
}

variable "timezone" {
  type = string
  description = "Timezone Name"
}

variable "ssh_user" {
  type = string
  description = "IKS User"
  default = "iksadmin"
}

variable "ssh_key" {
  type = string
  description = "IKS User SSH Key"
}

variable "organization" {
  type        = string
  description = "Intersight Organization Name"
  default     = "default"
}

variable "tags" {
  type    = list(map(string))
  description = "Intersight Tags"
  default = []
}

variable "wait_for_completion" {
  type        = bool
  default     = false
  description = "Wait for cluster completion true/false"
}
