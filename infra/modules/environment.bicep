param location string = resourceGroup().location
param environmentName string
param logAnalyticsWorkspaceName string = '${environmentName}-logs'

resource logAnalyticsWorkspace 'Microsoft.OperationalInsights/workspaces@2023-09-01' = {
  name: logAnalyticsWorkspaceName
  location: location
}

resource environment 'Microsoft.App/managedEnvironments@2024-03-01' ={
  name: environmentName
  location: location
  properties:{
    workloadProfiles:[
      {
        workloadProfileType: 'Consumption'
        name: 'Consumption'
      }
    ]
    appLogsConfiguration:{
      destination:'log-analytics'
      logAnalyticsConfiguration:{
        customerId:logAnalyticsWorkspace.properties.customerId
        sharedKey: logAnalyticsWorkspace.listKeys().primarySharedKey
      }
    }
    vnetConfiguration: null
  }
}

output environmentId string = environment.id
