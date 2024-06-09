var acrName = 'netdeployazure'

module imageRegistry './modules/acr_module.bicep' = {
  name: acrName
  params:{
    acrName:acrName
  }
}
