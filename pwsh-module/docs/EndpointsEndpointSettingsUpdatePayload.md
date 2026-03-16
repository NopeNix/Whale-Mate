# EndpointsEndpointSettingsUpdatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ChangeWindow** | [**PortainereeEndpointChangeWindow**](PortainereeEndpointChangeWindow.md) | Whether GitOps update time restrictions are enabled | [optional] 
**DeploymentOptions** | [**PortainereeDeploymentOptions**](PortainereeDeploymentOptions.md) | Hide manual deployment forms for an environment | [optional] 
**EnableGPUManagement** | **Boolean** |  | [optional] 
**EnableImageNotification** | **Boolean** |  | [optional] 
**Gpus** | [**PortainerPair[]**](PortainerPair.md) |  | [optional] 
**SecuritySettings** | [**EndpointsEndpointSettingsUpdatePayloadSecuritySettings**](EndpointsEndpointSettingsUpdatePayloadSecuritySettings.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointsEndpointSettingsUpdatePayload = Initialize-PSOpenAPIToolsEndpointsEndpointSettingsUpdatePayload  -ChangeWindow null `
 -DeploymentOptions null `
 -EnableGPUManagement false `
 -EnableImageNotification true `
 -Gpus null `
 -SecuritySettings null
```

- Convert the resource to JSON
```powershell
$EndpointsEndpointSettingsUpdatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

