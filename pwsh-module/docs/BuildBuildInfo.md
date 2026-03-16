# BuildBuildInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BuildNumber** | **String** |  | [optional] 
**GitCommit** | **String** |  | [optional] 
**GoVersion** | **String** |  | [optional] 
**ImageTag** | **String** |  | [optional] 
**NodejsVersion** | **String** |  | [optional] 
**PnpmVersion** | **String** |  | [optional] 
**WebpackVersion** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BuildBuildInfo = Initialize-PSOpenAPIToolsBuildBuildInfo  -BuildNumber null `
 -GitCommit null `
 -GoVersion null `
 -ImageTag null `
 -NodejsVersion null `
 -PnpmVersion null `
 -WebpackVersion null
```

- Convert the resource to JSON
```powershell
$BuildBuildInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

