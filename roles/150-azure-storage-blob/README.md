# 150-azure-storage-blob

Provision a storage blob on Azure

## Running the automation

This terraform template is part of collection of layers that should be executed together. Before this layer
can be applied, several steps must first be taken:

1. Run `apply.sh` in the parent directory to generate the input variable configuration for the run. If you'd like to apply one layer at a time, select `n` when prompted to continue.
2. Run `apply.sh` for each of the layer dependencies listed below.
3. Run `apply.sh` for this layer.

## Contents

### Layer dependencies


No dependencies

### Modules

| Name | Description | Version |
|------|-------------|---------|
| [azure-resource-group](https://github.com/cloud-native-toolkit/terraform-azure-resource-group) | Module to provision a resource group on Azure | v1.1.1 |
| [azure-storage-blob](https://github.com/cloud-native-toolkit/terraform-azure-storage-blob) | Module to provision storage-blob on azure | v1.1.1 |

### Variables

| Name | Description | Sensitive | Default value |
|------|-------------|-----------|---------------|
| blob_resource_group_name | The name of the resource group |  |  |
| region | The Azure location where the resource group will be provisioned |  |  |
| subscription_id |  |  |  |
| client_id |  |  |  |
| client_secret |  | true |  |
| tenant_id |  |  |  |
| azure-storage-blob_storage_account_name | The name of the Azure Storage Account |  |  |

## Troubleshooting

