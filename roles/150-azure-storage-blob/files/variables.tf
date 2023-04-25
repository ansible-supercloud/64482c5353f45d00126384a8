variable "blob_resource_group_name" {
  type = string
  description = "The name of the resource group"
}
variable "blob_resource_group_provision" {
  type = bool
  description = "Flag indicating that the resource group should be created"
  default = true
}
variable "blob_resource_group_sync" {
  type = string
  description = "Value used to order the provisioning of the resource group"
  default = ""
}
variable "region" {
  type = string
  description = "The Azure location where the resource group will be provisioned"
}
variable "subscription_id" {
  type = string
  description = "the value of subscription_id"
}
variable "client_id" {
  type = string
  description = "the value of client_id"
}
variable "client_secret" {
  type = string
  description = "the value of client_secret"
}
variable "tenant_id" {
  type = string
  description = "the value of tenant_id"
}
variable "azure-storage-blob_storage_account_name" {
  type = string
  description = "The name of the Azure Storage Account"
}
variable "azure-storage-blob_storage_account_tier" {
  type = string
  description = "The Tier of the Azure Storage Account"
  default = "Standard"
}
variable "azure-storage-blob_replication_type" {
  type = string
  description = "The type of the Replication for Azure Storage Account"
  default = "LRS"
}
variable "azure-storage-blob_container_name" {
  type = string
  description = "The name of the Azure Blob Storage Container"
  default = ""
}
variable "azure-storage-blob_container_access_type" {
  type = string
  description = "The type of access for Azure Storage Container"
  default = "private"
}
variable "azure-storage-blob_blob_file_name" {
  type = string
  description = "The name of the Blob File"
  default = ""
}
variable "azure-storage-blob_blob_file_type" {
  type = string
  description = "The type of Blob for File"
  default = "Block"
}
variable "azure-storage-blob_blob_file_sourcefile_name" {
  type = string
  description = "The name of the Source file"
  default = ""
}
