param storageName string = 'stg${uniqueString(resourceGroup().id)}'
param location string = resourceGroup().location

resource demostorage 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
}

