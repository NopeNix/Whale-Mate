# BuildDependenciesInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ComposeVersion** | **String** |  | [optional] 
**DockerVersion** | **String** |  | [optional] 
**HelmVersion** | **String** |  | [optional] 
**KubectlVersion** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BuildDependenciesInfo = Initialize-PSOpenAPIToolsBuildDependenciesInfo  -ComposeVersion null `
 -DockerVersion null `
 -HelmVersion null `
 -KubectlVersion null
```

- Convert the resource to JSON
```powershell
$BuildDependenciesInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

