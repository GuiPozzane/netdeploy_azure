param name string


param containerImageFullPath string
param mainContainerRegistry string
param mainContainerRegistryUserName string
param mainContainerRegistryPassword string

var scale = {}
var env = [
  {
    name: 'Variavel__Exemplo'
    value: 'Valor comum'
  }
]

var appName ='${name}-api'
module apiRest '../modules/container_deploy.bicep' = {
  name: appName
  params:{
    applicationName:appName
    cpu: 1
    memory: '2Gi'
    mainContainerImageFullPath: containerImageFullPath 
    mainContainerName: name
    port: 8080
    scale: scale
    env: env
    location: resourceGroup().location
    mainContainerRegistry:mainContainerRegistry
    mainContainerRegistryPassword:mainContainerRegistryPassword
    mainContainerRegistryUserName:mainContainerRegistryUserName
    
  }
}

