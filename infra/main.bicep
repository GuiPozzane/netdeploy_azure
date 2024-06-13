param acrUsername string
param name string
param containerImageVersion string = 'latest'

resource acrResource 'Microsoft.ContainerRegistry/registries@2023-07-01' existing = {
  name:acrUsername
  scope:resourceGroup()
}

var appInsightsName = '${name}appinsights'
var logAnalyticsName = '${name}loganalytics'
module appInsights './modules/application_insights.bicep' = {
  name: appInsightsName
  params : {
    applicationInsightsName: appInsightsName
    logAnalyticsName: logAnalyticsName
  }
}

module environment 'modules/environment.bicep' = {
  name:'${name}-containerapp-env'
  params:{
    environmentName: '${name}-containerapp-env'
  }
}
var acrPassword = acrResource.listCredentials().passwords[0].value
var acrLoginServer = acrResource.properties.loginServer
var containerImageFullPath = '${acrLoginServer}/${name}:${containerImageVersion}'
module container 'components/api_rest.bicep' = {
  name: name
  params:{
    containerImageFullPath: containerImageFullPath
    mainContainerRegistry:acrLoginServer
    mainContainerRegistryPassword:acrPassword
    mainContainerRegistryUserName: acrUsername
    name: name
    environmentId: environment.outputs.environmentId
  }
}
