# 105-azure-ocp-ipi

Azure OpenShift Installer Provided Infrastructure

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
| [azure-ocp-ipi](https://github.com/cloud-native-toolkit/terraform-azure-ocp-ipi) | Module to provision an OpenShift Installer-Provisioned Infrastructure on Azure | v1.2.2 |

### Variables

| Name | Description | Sensitive | Default value |
|------|-------------|-----------|---------------|
| name_prefix | OpenShift Cluster Prefix |  |  |
| azure-ocp-ipi_domain_resource_group_name | Resource group name containing the base domain name |  |  |
| base_domain | Base domain name (e.g. myclusters.mydomain.com) |  |  |
| region | Azure region into which to deploy |  |  |
| subscription_id | Subscription into which to deploy OpenShift and containing the existing resource group |  |  |
| client_id | The client id (service principal appID) to be used for OpenShift |  |  |
| client_secret | The client secret (e.g. service principal password) to be used for OpenShift |  |  |
| tenant_id | Tenant id containing the subscription |  |  |

## Troubleshooting

