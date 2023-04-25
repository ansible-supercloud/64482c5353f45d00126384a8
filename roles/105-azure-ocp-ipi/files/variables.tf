variable "name_prefix" {
  type = string
  description = "OpenShift Cluster Prefix"
}
variable "azure-ocp-ipi_domain_resource_group_name" {
  type = string
  description = "Resource group name containing the base domain name"
}
variable "base_domain" {
  type = string
  description = "Base domain name (e.g. myclusters.mydomain.com)"
}
variable "region" {
  type = string
  description = "Azure region into which to deploy"
}
variable "subscription_id" {
  type = string
  description = "Subscription into which to deploy OpenShift and containing the existing resource group"
}
variable "client_id" {
  type = string
  description = "The client id (service principal appID) to be used for OpenShift"
}
variable "client_secret" {
  type = string
  description = "The client secret (e.g. service principal password) to be used for OpenShift"
}
variable "tenant_id" {
  type = string
  description = "Tenant id containing the subscription"
}
variable "pull_secret" {
  type = string
  description = "Pull secret for OpenShift image repository access and to register the cluster"
  default = ""
}
variable "azure-ocp-ipi_pull_secret_file" {
  type = string
  description = "File with the pull secret for OpenShift image repository access and to register the cluster"
  default = ""
}
variable "azure-ocp-ipi_binary_offset" {
  type = string
  description = "Path offset from current working directory to install binaries (default = binaries)"
  default = "binaries"
}
variable "azure-ocp-ipi_install_offset" {
  type = string
  description = "Path offset from current working directory for install metadata (default = install)"
  default = "install"
}
variable "azure-ocp-ipi_openshift_ssh_key" {
  type = string
  description = "The SSH Public Key to use for OpenShift Installation"
  default = ""
}
variable "azure-ocp-ipi_vnet_name" {
  type = string
  description = "VNet name to deploy into if using existing VNet"
  default = ""
}
variable "azure-ocp-ipi_master_subnet_name" {
  type = string
  description = "Name of the master subnet"
  default = ""
}
variable "azure-ocp-ipi_worker_subnet_name" {
  type = string
  description = "Name of the worker subnet"
  default = ""
}
variable "azure-ocp-ipi_openshift_version" {
  type = string
  description = "OpenShift version to install"
  default = "4.10.11"
}
variable "azure-ocp-ipi_binary_url_base" {
  type = string
  description = "Base URL for OpenShift installer and CLI binaries"
  default = "https://mirror.openshift.com/pub/openshift-v4"
}
variable "azure-ocp-ipi_network_resource_group_name" {
  type = string
  description = "Name of the resource group for the network components (must be different to the overall resource group)"
  default = ""
}
variable "azure-ocp-ipi_master_hyperthreading" {
  type = string
  description = "Enable hyperthreading for master nodes (default = enabled)"
  default = "Enabled"
}
variable "azure-ocp-ipi_master_architecture" {
  type = string
  description = "CPU Architecture for the master nodes (default = amd64)"
  default = "amd64"
}
variable "azure-ocp-ipi_master_node_disk_size" {
  type = string
  description = "Size of master node disk in GB (default = 120)"
  default = "120"
}
variable "azure-ocp-ipi_master_node_disk_type" {
  type = string
  description = "Type of disk for the master nodes (default = Premium_LRS)"
  default = "Premium_LRS"
}
variable "azure-ocp-ipi_master_node_type" {
  type = string
  description = "Master node type (defualt = Standard_D2s_v3)"
  default = "Standard_D8s_v3"
}
variable "azure-ocp-ipi_master_node_qty" {
  type = string
  description = "Number of master nodes to create (default = 3)"
  default = "3"
}
variable "azure-ocp-ipi_worker_hyperthreading" {
  type = string
  description = "Enable hyperthreading for compute/worker nodes (default = enabled)"
  default = "Enabled"
}
variable "azure-ocp-ipi_worker_architecture" {
  type = string
  description = "CPU Architecture for the worker nodes (default = amd64)"
  default = "amd64"
}
variable "azure-ocp-ipi_worker_node_type" {
  type = string
  description = "Compute/worker node type (default = Standard_D2s_v3)"
  default = "Standard_D4s_v3"
}
variable "azure-ocp-ipi_worker_node_disk_size" {
  type = string
  description = "Compute/worker node disk size in GB (default = 120)"
  default = "120"
}
variable "azure-ocp-ipi_worker_node_disk_type" {
  type = string
  description = "Type of disk for the worker nodes (default = Premium_LRS)"
  default = "Premium_LRS"
}
variable "azure-ocp-ipi_worker_node_qty" {
  type = string
  description = "Number of compute/worker nodes to create (default = 3)"
  default = "3"
}
variable "azure-ocp-ipi_cluster_cidr" {
  type = string
  description = "CIDR for the internal OpenShift network (default = 10.128.0.0/14)"
  default = "10.128.0.0/14"
}
variable "azure-ocp-ipi_cluster_host_prefix" {
  type = string
  description = "Host prefix for internal OpenShift network (default = 23)"
  default = "23"
}
variable "azure-ocp-ipi_machine_cidr" {
  type = string
  description = "CIDR for master and compute nodes (default = 10.0.0.0/16)"
  default = "10.0.0.0/16"
}
variable "azure-ocp-ipi_network_type" {
  type = string
  description = "Network plugin to use (default = OpenShiftSDN)"
  default = "OpenShiftSDN"
}
variable "azure-ocp-ipi_service_network_cidr" {
  type = string
  description = "CIDR for the internal OpenShift service network (default = 172.30.0.0/16)"
  default = "172.30.0.0/16"
}
variable "azure-ocp-ipi_outbound_type" {
  type = string
  description = "The type of outbound routing to use. Loadbalancer (default) or UserDefinedRouting"
  default = "Loadbalancer"
}
variable "azure-ocp-ipi_enable_fips" {
  type = string
  description = "Enable FIPS in the cluster (default = false)"
  default = "false"
}
