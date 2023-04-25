output "azure-ocp-ipi_id" {
  description = "ID of the created cluster"
  value = module.azure-ocp-ipi.id
}
output "azure-ocp-ipi_name" {
  description = "Name of the cluster"
  value = module.azure-ocp-ipi.name
}
output "azure-ocp-ipi_resource_group_name" {
  description = "Name of the resource group containing the cluster"
  value = module.azure-ocp-ipi.resource_group_name
}
output "azure-ocp-ipi_region" {
  description = "Azure location containing the cluster"
  value = module.azure-ocp-ipi.region
}
output "azure-ocp-ipi_config_file_path" {
  description = "Path to the config file for the cluster"
  value = module.azure-ocp-ipi.config_file_path
}
output "azure-ocp-ipi_consoleURL" {
  description = "URL for the cluster console"
  value = module.azure-ocp-ipi.consoleURL
}
output "azure-ocp-ipi_server_url" {
  description = "The url used to connect to the api of the cluster"
  value = module.azure-ocp-ipi.server_url
}
output "azure-ocp-ipi_username" {
  description = "Username for the cluster"
  value = module.azure-ocp-ipi.username
}
output "azure-ocp-ipi_password" {
  description = "Password for the cluster"
  value = module.azure-ocp-ipi.password
  sensitive = true
}
output "azure-ocp-ipi_token" {
  description = "The admin user token used to generate the cluster"
  value = module.azure-ocp-ipi.token
  sensitive = true
}
output "azure-ocp-ipi_bin_dir" {
  description = "Path to the client binaries"
  value = module.azure-ocp-ipi.bin_dir
}
output "azure-ocp-ipi_platform" {
  description = "Configuration values for the created cluster platform"
  value = module.azure-ocp-ipi.platform
  sensitive = true
}
