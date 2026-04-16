resource "azurerm_resource_group" "rg-block" {
  name = "storage-rg"
  location = "eastus"
}

module "storage1" {
  source = "./modules/StorageAcct"
  rg-name = azurerm_resource_group.rg-block.name
  rg-location = azurerm_resource_group.rg-block.location
  storage-name = var.storage-name
  replication-type = var.replication-type
  tags = var.tags 
}

module "container1" {
  source = "./modules/StorageContainer"
  container-name = var.container-name
  storageaccount-id = module.storage1.storageacct-ID
}

module "blob1" {
  source = "./modules/StorageBlob"
  blob-name = var.blob-name
  storageacct-name = module.storage1.storageacct-name
  container-name = module.container1.container-name
  blob-source = var.blob-source 
}

module "container2" {
  source = "./modules/StorageContainer"
  container-name = var.container-name2
  storageaccount-id = module.storage1.storageacct-ID
}

module "blob2" {
  source = "./modules/StorageBlob"
  blob-name = var.blob-name2
  storageacct-name = module.storage1.storageacct-name
  container-name = module.container2.container-name
  blob-source = var.blob-source2
}

module "storage2" {
  source = "./modules/StorageAcct"
  rg-name = azurerm_resource_group.rg-block.name
  rg-location = azurerm_resource_group.rg-block.location
  storage-name = var.storage-name2
  replication-type = var.replication-type2
  tags = var.tags2
}
module "storage2-container" {
  source = "./modules/StorageContainer"
  container-name = var.container-name3
  storageaccount-id = module.storage2.storageacct-ID
}

module "storage2-container-blob" {
  source = "./modules/StorageBlob"
  blob-name = var.blob-name3
  storageacct-name = module.storage2.storageacct-name
  container-name = module.storage2-container.container-name
  blob-source = var.blob-source3
}
module "storage2-container-blob2" {
  source = "./modules/StorageBlob"
  blob-name = var.blob-name4
  storageacct-name = module.storage2.storageacct-name
  container-name = module.storage2-container.container-name
  blob-source = var.blob-source4
}