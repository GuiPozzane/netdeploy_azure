param location string = resourceGroup().location

@description('Application Insights name')
param applicationInsightsName string

@description('Log Analytics name')
param logAnalyticsName string

resource logAnalyticsWorkspace 'Microsoft.OperationalInsights/workspaces@2023-09-01' = {
  name: logAnalyticsName
  location: location
  tags : resourceGroup().tags
  properties:{
    retentionInDays:30
    sku: {
      name:'PerGB2018'
    }
  }
}

resource applicationInsights 'Microsoft.Insights/components@2020-02-02' = {
  name: applicationInsightsName
  location: location
  kind: 'web'
  properties:{
    Application_Type: 'web'
    Request_Source: 'rest'
    WorkspaceResourceId: logAnalyticsWorkspace.id
  }
}


output connectionString string = applicationInsights.properties.ConnectionString
