# EndpointsEndpointDeleteRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DeleteCluster** | **Boolean** |  | [optional] 
**Id** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointsEndpointDeleteRequest = Initialize-PSOpenAPIToolsEndpointsEndpointDeleteRequest  -DeleteCluster null `
 -Id null
```

- Convert the resource to JSON
```powershell
$EndpointsEndpointDeleteRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

