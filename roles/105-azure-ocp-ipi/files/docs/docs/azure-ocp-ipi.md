# Azure OpenShift IPI module

Module to provision an OpenShift Installer-Provisioned Infrastructure on Azure


## Software dependencies

The module depends on the following software components:

### Terraform version

- \>= v0.15

### Terraform providers


- azurerm (hashicorp/azurerm)

### Module dependencies


- network-resource-group - [github.com/cloud-native-toolkit/terraform-azure-resource-group](https://github.com/cloud-native-toolkit/terraform-azure-resource-group) (>= 1.0.3)
- vnet - [github.com/cloud-native-toolkit/terraform-azure-vpc](https://github.com/cloud-native-toolkit/terraform-azure-vpc) (>= 1.0.2)
- master-subnet - [github.com/cloud-native-toolkit/terraform-azure-subnets](https://github.com/cloud-native-toolkit/terraform-azure-subnets) (>= 1.3.0)
- worker-subnet - [github.com/cloud-native-toolkit/terraform-azure-subnets](https://github.com/cloud-native-toolkit/terraform-azure-subnets) (>= 1.3.0)
- ssh-key - [github.com/cloud-native-toolkit/terraform-azure-ssh-key](https://github.com/cloud-native-toolkit/terraform-azure-ssh-key) (>= 1.0.2)

## Example usage

```hcl
module "azure-ocp-ipi" {
  source = "github.com/cloud-native-toolkit/terraform-azure-ocp-ipi"

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

```

## Module details

### Inputs

| Name | Description | Required | Default | Source |
|------|-------------|---------|----------|--------|
| name_prefix | OpenShift Cluster Prefix | true |  |  |
| domain_resource_group_name | Resource group name containing the base domain name | true |  |  |
| base_domain | Base domain name (e.g. myclusters.mydomain.com) | true |  |  |
| region | Azure region into which to deploy | true |  |  |
| subscription_id | Subscription into which to deploy OpenShift and containing the existing resource group | true |  |  |
| client_id | The client id (service principal appID) to be used for OpenShift | true |  |  |
| client_secret | The client secret (e.g. service principal password) to be used for OpenShift | true |  |  |
| tenant_id | Tenant id containing the subscription | true |  |  |
| pull_secret | Pull secret for OpenShift image repository access and to register the cluster | true |  |  |
| pull_secret_file | File with the pull secret for OpenShift image repository access and to register the cluster | true |  |  |
| binary_offset | Path offset from current working directory to install binaries (default = binaries) | false | binaries |  |
| install_offset | Path offset from current working directory for install metadata (default = install) | false | install |  |
| openshift_ssh_key | The SSH Public Key to use for OpenShift Installation | true |  | ssh-key.pub_key |
| vnet_name | VNet name to deploy into if using existing VNet | true |  | vnet.name |
| master_subnet_name | Name of the master subnet | true |  | master-subnet.name |
| worker_subnet_name | Name of the worker subnet | true |  | worker-subnet.name |
| openshift_version | OpenShift version to install | false | 4.10.11 |  |
| binary_url_base | Base URL for OpenShift installer and CLI binaries | false | https://mirror.openshift.com/pub/openshift-v4 |  |
| network_resource_group_name | Name of the resource group for the network components (must be different to the overall resource group) | true |  | network-resource-group.name |
| master_hyperthreading | Enable hyperthreading for master nodes (default = enabled) | false | Enabled |  |
| master_architecture | CPU Architecture for the master nodes (default = amd64) | false | amd64 |  |
| master_node_disk_size | Size of master node disk in GB (default = 120) | false | 120 |  |
| master_node_disk_type | Type of disk for the master nodes (default = Premium_LRS) | false | Premium_LRS |  |
| master_node_type | Master node type (defualt = Standard_D2s_v3) | false | Standard_D8s_v3 |  |
| master_node_qty | Number of master nodes to create (default = 3) | false | 3 |  |
| worker_hyperthreading | Enable hyperthreading for compute/worker nodes (default = enabled) | false | Enabled |  |
| worker_architecture | CPU Architecture for the worker nodes (default = amd64) | false | amd64 |  |
| worker_node_type | Compute/worker node type (default = Standard_D2s_v3) | false | Standard_D4s_v3 |  |
| worker_node_disk_size | Compute/worker node disk size in GB (default = 120) | false | 120 |  |
| worker_node_disk_type | Type of disk for the worker nodes (default = Premium_LRS) | false | Premium_LRS |  |
| worker_node_qty | Number of compute/worker nodes to create (default = 3) | false | 3 |  |
| cluster_cidr | CIDR for the internal OpenShift network (default = 10.128.0.0/14) | false | 10.128.0.0/14 |  |
| cluster_host_prefix | Host prefix for internal OpenShift network (default = 23) | false | 23 |  |
| machine_cidr | CIDR for master and compute nodes (default = 10.0.0.0/16) | false | 10.0.0.0/16 |  |
| network_type | Network plugin to use (default = OpenShiftSDN) | false | OpenShiftSDN |  |
| service_network_cidr | CIDR for the internal OpenShift service network (default = 172.30.0.0/16) | false | 172.30.0.0/16 |  |
| outbound_type | The type of outbound routing to use. Loadbalancer (default) or UserDefinedRouting | false | Loadbalancer |  |
| enable_fips | Enable FIPS in the cluster (default = false) | false | false |  |

### Outputs

| Name | Description |
|------|-------------|
| id | ID of the created cluster |
| name | Name of the cluster |
| resource_group_name | Name of the resource group containing the cluster |
| region | Azure location containing the cluster |
| config_file_path | Path to the config file for the cluster |
| consoleURL | URL for the cluster console |
| server_url | The url used to connect to the api of the cluster |
| username | Username for the cluster |
| password | Password for the cluster |
| token | The admin user token used to generate the cluster |
| bin_dir | Path to the client binaries |
| platform | Configuration values for the created cluster platform |

## Resources

- [Documentation](https://operate.cloudnativetoolkit.dev)
- [Module catalog](https://modules.cloudnativetoolkit.dev)

> License: Apache License 2.0 | Generated by iascable (0.1.8)
