# EndpointsEndpointDeleteBatchPartialResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Deleted** | **Int32[]** |  | [optional] 
**Errors** | **Int32[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointsEndpointDeleteBatchPartialResponse = Initialize-PSOpenAPIToolsEndpointsEndpointDeleteBatchPartialResponse  -Deleted null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$EndpointsEndpointDeleteBatchPartialResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

