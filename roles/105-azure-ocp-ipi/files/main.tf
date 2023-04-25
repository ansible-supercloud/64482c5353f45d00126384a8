module "azure-ocp-ipi" {
  source = "github.com/cloud-native-toolkit/terraform-azure-ocp-ipi?ref=v1.2.2"

  base_domain = var.base_domain
  binary_offset = var.azure-ocp-ipi_binary_offset
  binary_url_base = var.azure-ocp-ipi_binary_url_base
  client_id = var.client_id
  client_secret = var.client_secret
  cluster_cidr = var.azure-ocp-ipi_cluster_cidr
  cluster_host_prefix = var.azure-ocp-ipi_cluster_host_prefix
  domain_resource_group_name = var.azure-ocp-ipi_domain_resource_group_name
  enable_fips = var.azure-ocp-ipi_enable_fips
  install_offset = var.azure-ocp-ipi_install_offset
  machine_cidr = var.azure-ocp-ipi_machine_cidr
  master_architecture = var.azure-ocp-ipi_master_architecture
  master_hyperthreading = var.azure-ocp-ipi_master_hyperthreading
  master_node_disk_size = var.azure-ocp-ipi_master_node_disk_size
  master_node_disk_type = var.azure-ocp-ipi_master_node_disk_type
  master_node_qty = var.azure-ocp-ipi_master_node_qty
  master_node_type = var.azure-ocp-ipi_master_node_type
  master_subnet_name = var.azure-ocp-ipi_master_subnet_name
  name_prefix = var.name_prefix
  network_resource_group_name = var.azure-ocp-ipi_network_resource_group_name
  network_type = var.azure-ocp-ipi_network_type
  openshift_ssh_key = var.azure-ocp-ipi_openshift_ssh_key
  openshift_version = var.azure-ocp-ipi_openshift_version
  outbound_type = var.azure-ocp-ipi_outbound_type
  pull_secret = var.pull_secret
  pull_secret_file = var.azure-ocp-ipi_pull_secret_file
  region = var.region
  service_network_cidr = var.azure-ocp-ipi_service_network_cidr
  subscription_id = var.subscription_id
  tenant_id = var.tenant_id
  vnet_name = var.azure-ocp-ipi_vnet_name
  worker_architecture = var.azure-ocp-ipi_worker_architecture
  worker_hyperthreading = var.azure-ocp-ipi_worker_hyperthreading
  worker_node_disk_size = var.azure-ocp-ipi_worker_node_disk_size
  worker_node_disk_type = var.azure-ocp-ipi_worker_node_disk_type
  worker_node_qty = var.azure-ocp-ipi_worker_node_qty
  worker_node_type = var.azure-ocp-ipi_worker_node_type
  worker_subnet_name = var.azure-ocp-ipi_worker_subnet_name
}