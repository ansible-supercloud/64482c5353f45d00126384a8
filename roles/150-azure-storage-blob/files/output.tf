output "blob_resource_group_name" {
  description = "The name of the resource group"
  value = module.blob_resource_group.name
}
output "blob_resource_group_id" {
  description = "The id of the resource group"
  value = module.blob_resource_group.id
}
output "blob_resource_group_group" {
  description = "The resource group object"
  value = module.blob_resource_group.group
}
output "blob_resource_group_provision" {
  description = "Flag indicating whether the resource group was provisioned"
  value = module.blob_resource_group.provision
}
output "blob_resource_group_sync" {
  description = "Value used to order the provisioning of the resource group"
  value = module.blob_resource_group.sync
}
output "blob_resource_group_region" {
  description = "the value of blob_resource_group_region"
  value = module.blob_resource_group.region
}
output "azure-storage-blob_storage_blob_id" {
  description = "The id of the Azure Storage Blob File"
  value = module.azure-storage-blob.storage_blob_id
}
output "azure-storage-blob_storage_blob_url" {
  description = "The URL of the Azure Storage Blob File"
  value = module.azure-storage-blob.storage_blob_url
}
