# EndpointsDockerhubStatusResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Limit** | **Int32** | Daily limit | [optional] 
**Remaining** | **Int32** | Remaiming images to pull | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointsDockerhubStatusResponse = Initialize-PSOpenAPIToolsEndpointsDockerhubStatusResponse  -Limit null `
 -Remaining null
```

- Convert the resource to JSON
```powershell
$EndpointsDockerhubStatusResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

