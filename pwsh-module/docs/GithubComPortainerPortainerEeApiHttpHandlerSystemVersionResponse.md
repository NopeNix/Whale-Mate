# GithubComPortainerPortainerEeApiHttpHandlerSystemVersionResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Build** | [**BuildBuildInfo**](BuildBuildInfo.md) |  | [optional] 
**DatabaseVersion** | **String** |  | [optional] 
**Dependencies** | [**BuildDependenciesInfo**](BuildDependenciesInfo.md) |  | [optional] 
**LatestVersion** | **String** | The latest version available | [optional] 
**Runtime** | [**BuildRuntimeInfo**](BuildRuntimeInfo.md) |  | [optional] 
**ServerEdition** | **String** |  | [optional] 
**ServerVersion** | **String** |  | [optional] 
**UpdateAvailable** | **Boolean** | Whether portainer has an update available | [optional] 
**VersionSupport** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GithubComPortainerPortainerEeApiHttpHandlerSystemVersionResponse = Initialize-PSOpenAPIToolsGithubComPortainerPortainerEeApiHttpHandlerSystemVersionResponse  -Build null `
 -DatabaseVersion null `
 -Dependencies null `
 -LatestVersion 2.0.0 `
 -Runtime null `
 -ServerEdition CE/EE `
 -ServerVersion null `
 -UpdateAvailable false `
 -VersionSupport STS/LTS
```

- Convert the resource to JSON
```powershell
$GithubComPortainerPortainerEeApiHttpHandlerSystemVersionResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

