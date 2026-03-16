# PortainerStackDeploymentInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConfigHash** | **String** | ConfigHash is the commit hash of the git repository used for deploying the stack | [optional] 
**FileVersion** | **Int32** | FileVersion is the version of the stack file, used to detect changes | [optional] 
**Version** | **Int32** | Version is the version of the stack and also is the deployed version in edge agent | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerStackDeploymentInfo = Initialize-PSOpenAPIToolsPortainerStackDeploymentInfo  -ConfigHash null `
 -FileVersion null `
 -Version null
```

- Convert the resource to JSON
```powershell
$PortainerStackDeploymentInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

