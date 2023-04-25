# Azure Network Security Group module

Module to provision a Network Security Group on azure


## Software dependencies

The module depends on the following software components:

### Terraform version

- \>= v0.15

### Terraform providers


None

### Module dependencies


- resource_group - [github.com/cloud-native-toolkit/terraform-azure-resource-group](https://github.com/cloud-native-toolkit/terraform-azure-resource-group) (>= 1.1.1)
- vnet - [github.com/cloud-native-toolkit/terraform-azure-vnet](https://github.com/cloud-native-toolkit/terraform-azure-vnet) (>= 1.1.3)
- subnets - [github.com/cloud-native-toolkit/terraform-azure-subnets](https://github.com/cloud-native-toolkit/terraform-azure-subnets) (>= 1.3.7)

## Example usage

```hcl
module "nsg" {
  source = "github.com/cloud-native-toolkit/terraform-azure-nsg"

  acl_rules = var.nsg_acl_rules == null ? null : jsondecode(var.nsg_acl_rules)
  name = var.nsg_name
  name_prefix = var.name_prefix
  region = var.region
  resource_group_name = module.resource_group.name
  subnet_ids = module.ingress_subnet.ids
  virtual_network_name = module.vnet.name
}

```

## Module details

### Inputs

| Name | Description | Required | Default | Source |
|------|-------------|---------|----------|--------|
| name_prefix | Prefix for the NSG name (\"<prefix>-nsg\") | true |  |  |
| name | Name for network security group - replaces name_prefix (default = \"\") | true |  |  |
| resource_group_name | Name of the resource group into which to deploy the NSG | true |  | resource_group.name |
| region | Azure region containing the virtual network | true |  |  |
| virtual_network_name | VNet into which to deploy the NSG | true |  | vnet.name |
| subnet_ids | List of subnet ids to associate with NSG | false |  | subnets.ids |
| acl_rules | List of rules to set on the subnet access control list | false | [] |  |

### Outputs

| Name | Description |
|------|-------------|
| id | ID of the created network security group |
| name | Name of the created network security group |

## Resources

- [Documentation](https://operate.cloudnativetoolkit.dev)
- [Module catalog](https://modules.cloudnativetoolkit.dev)

> License: Apache License 2.0 | Generated by iascable (0.1.8)