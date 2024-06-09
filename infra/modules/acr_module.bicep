param acrName string
param location string = resourceGroup().location
param acrSku string = 'Basic'

param additionalTags object = {PURPOSE: '${acrName} - Azure Container Registry' }

resource acrResource 'Microsoft.ContainerRegistry/registries@2023-07-01' = {
  name: acrName
  location: location
  tags: union(resourceGroup().tags, additionalTags)
  sku:{
    name: acrSku
  }
  properties:{
    adminUserEnabled:true
  }
}
