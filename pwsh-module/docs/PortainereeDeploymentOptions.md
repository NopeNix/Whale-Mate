# PortainereeDeploymentOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HideAddWithForm** | **Boolean** | Hide manual deploy forms in portainer | [optional] 
**HideFileUpload** | **Boolean** | Hide the file upload option in the remaining visible forms | [optional] 
**HideWebEditor** | **Boolean** | Hide the webeditor in the remaining visible forms | [optional] 
**OverrideGlobalOptions** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeDeploymentOptions = Initialize-PSOpenAPIToolsPortainereeDeploymentOptions  -HideAddWithForm true `
 -HideFileUpload false `
 -HideWebEditor false `
 -OverrideGlobalOptions null
```

- Convert the resource to JSON
```powershell
$PortainereeDeploymentOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

