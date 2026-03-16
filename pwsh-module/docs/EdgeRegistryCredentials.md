# EdgeRegistryCredentials
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Secret** | **String** |  | [optional] 
**ServerURL** | **String** |  | [optional] 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EdgeRegistryCredentials = Initialize-PSOpenAPIToolsEdgeRegistryCredentials  -Secret null `
 -ServerURL null `
 -Username null
```

- Convert the resource to JSON
```powershell
$EdgeRegistryCredentials | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

