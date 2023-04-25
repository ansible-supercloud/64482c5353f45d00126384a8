module "azure-storage-blob" {
  source = "github.com/cloud-native-toolkit/terraform-azure-storage-blob?ref=v1.1.1"

  blob_file_name = var.azure-storage-blob_blob_file_name
  blob_file_sourcefile_name = var.azure-storage-blob_blob_file_sourcefile_name
  blob_file_type = var.azure-storage-blob_blob_file_type
  container_access_type = var.azure-storage-blob_container_access_type
  container_name = var.azure-storage-blob_container_name
  region = var.region
  replication_type = var.azure-storage-blob_replication_type
  resource_group_name = module.blob_resource_group.name
  storage_account_name = var.azure-storage-blob_storage_account_name
  storage_account_tier = var.azure-storage-blob_storage_account_tier
}
module "blob_resource_group" {
  source = "github.com/cloud-native-toolkit/terraform-azure-resource-group?ref=v1.1.1"

  provision = var.blob_resource_group_provision
  region = var.region
  resource_group_name = var.blob_resource_group_name
  sync = var.blob_resource_group_sync
}
