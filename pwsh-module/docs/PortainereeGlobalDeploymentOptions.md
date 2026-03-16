# PortainereeGlobalDeploymentOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HideAddWithForm** | **Boolean** | Hide manual deploy forms in portainer | [optional] 
**HideFileUpload** | **Boolean** | Hide the file upload option in the remaining visible forms | [optional] 
**HideStacksFunctionality** | **Boolean** |  | [optional] 
**HideWebEditor** | **Boolean** | Hide the webeditor in the remaining visible forms | [optional] 
**MinApplicationNoteLength** | **Int32** |  | [optional] 
**PerEnvOverride** | **Boolean** | Configure this per environment or globally | [optional] 
**RequireNoteOnApplications** | **Boolean** | Make note field mandatory if enabled | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeGlobalDeploymentOptions = Initialize-PSOpenAPIToolsPortainereeGlobalDeploymentOptions  -HideAddWithForm false `
 -HideFileUpload false `
 -HideStacksFunctionality false `
 -HideWebEditor false `
 -MinApplicationNoteLength 10 `
 -PerEnvOverride false `
 -RequireNoteOnApplications false
```

- Convert the resource to JSON
```powershell
$PortainereeGlobalDeploymentOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

