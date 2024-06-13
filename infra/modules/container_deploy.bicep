param applicationName string
param location string = resourceGroup().location

param port int

param mainContainerImageFullPath string
param mainContainerName string
param mainContainerRegistry string
param mainContainerRegistryUserName string
param mainContainerRegistryPassword string

param env array = []
param cpu int
param memory string

param scale object

resource containerApplication 'Microsoft.App/containerApps@2024-03-01' = {
  name: applicationName
  location: location
  tags: resourceGroup().tags
  properties:{
    configuration:{
      activeRevisionsMode: 'Single'
      registries:[
        {
          server: mainContainerRegistry
          username: mainContainerRegistryUserName
          passwordSecretRef: mainContainerRegistryPassword
        }
      ]
      ingress:{
        external:true
        corsPolicy: {
          allowedOrigins:'*'
        }
        targetPort: port
        ipSecurityRestrictions: [
          {
            action: 'Allow'
            description: 'Allow access to all traffic'
            ipAddressRange: '0.0.0.0/0'
            name:'AllTrafic'
          }
        ]
        traffic:[
          {
            label: 'allowall'
            latestRevision: true
            weight: 100
          }
        ]
      }
    }
    template: {
      containers:[
        {
          image: mainContainerImageFullPath
          name: mainContainerName
          env: env
          resources:{
            cpu: cpu
            memory: memory
          }
        }
      ]
      scale: scale
    }
  }
}

output apiUrl string = containerApplication.properties.configuration.ingress.fqdn
