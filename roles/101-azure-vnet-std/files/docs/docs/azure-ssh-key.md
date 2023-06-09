# Azure SSH Key module

Module to provision an ssh key on azure


## Software dependencies

The module depends on the following software components:

### Terraform version

- \>= v0.15

### Terraform providers


- azurerm (hashicorp/azurerm)

### Module dependencies


- resource_group - [github.com/cloud-native-toolkit/terraform-azure-resource-group](https://github.com/cloud-native-toolkit/terraform-azure-resource-group) (>=1.0.0)

## Example usage

```hcl
module "ssh-keys" {
  source = "github.com/cloud-native-toolkit/terraform-azure-ssh-key"

  algorithm = var.ssh-keys_algorithm
  ecdsa_curve = var.ssh-keys_ecdsa_curve
  key_name = var.ssh-keys_key_name
  name_prefix = var.name_prefix
  private_file_permissions = var.ssh-keys_private_file_permissions
  public_file_permissions = var.ssh-keys_public_file_permissions
  region = var.region
  resource_group_name = module.resource_group.name
  rsa_bits = var.ssh-keys_rsa_bits
  ssh_key = var.ssh-keys_ssh_key
  store_key_in_vault = var.ssh-keys_store_key_in_vault
  store_path = var.ssh-keys_store_path
  tags = var.ssh-keys_tags
}

```

## Module details

### Inputs

| Name | Description | Required | Default | Source |
|------|-------------|---------|----------|--------|
| key_name | Name to give to SSH key | true |  |  |
| name_prefix | Prefix for SSH key name (if blank, needs key_name variable defined) | true |  |  |
| resource_group_name | Resource group name if storing the SSH keys in Azure vault. | false | "" | resource_group.name |
| region | Location to store key | false | "" |  |
| store_path | Path to directory in which to store keys (will default to current working directory) | true |  |  |
| public_file_permissions | Permissions to be set on public key files (default = 0600) | false | 0600 |  |
| private_file_permissions | Permissions to be set on public key files (default = 0400) | false | 0400 |  |
| store_key_in_vault | Flag to storage the generated or supplied key in the Azure vault | false | true |  |
| ssh_key | Path to existing public key to be used. Will be created if empty. (Default empty string) | true |  |  |
| algorithm | Algorithim to be utilized if creating a new key (RSA, ECDSA or ED25519, default = RSA) | false | RSA |  |
| rsa_bits | Number of bits to use for RSA key (default = 4096) | false | 4096 |  |
| ecdsa_curve | ECDSA Curve value to be utilized for ECDSA key (P224, P256, P521, default = P224) | false | P224 |  |
| tags | Extra tags to be added to the Azure Vault entry (default = none) | false | {} |  |

### Outputs

| Name | Description |
|------|-------------|
| id | Azure vault identification of the stored key |
| pub_key | Public key |
| pub_key_file | File path of public key |
| private_key | Private key |
| private_key_file | File path of the private key |
| path | Path to where keys are stored in filesystem |
| name | Name of the key |

## Resources

- [Documentation](https://operate.cloudnativetoolkit.dev)
- [Module catalog](https://modules.cloudnativetoolkit.dev)

> License: Apache License 2.0 | Generated by iascable (0.1.8)
