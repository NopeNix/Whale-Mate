# ReleaseChartReference
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ChartPath** | **String** |  | [optional] 
**RegistryID** | **Int32** |  | [optional] 
**RepoURL** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ReleaseChartReference = Initialize-PSOpenAPIToolsReleaseChartReference  -ChartPath null `
 -RegistryID null `
 -RepoURL null
```

- Convert the resource to JSON
```powershell
$ReleaseChartReference | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

