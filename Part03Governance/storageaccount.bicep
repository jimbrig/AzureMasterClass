param location string = 'eastus'
param name string = 'sascus007' // must be globally unique

var storageSku = 'Standard_LRS' // declare variable and assign value

resource stg 'Microsoft.Storage/storageAccounts@2023-05-01' = {
    name: name
    location: location
    kind:'StorageV2'
    sku: {
        name: storageSku // reference variable
    }
}

output storageId string = stg.id // output resourceId of storage account
