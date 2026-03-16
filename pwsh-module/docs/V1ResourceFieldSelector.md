# V1ResourceFieldSelector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContainerName** | **String** | Container name: required for volumes, optional for env vars +optional | [optional] 
**Divisor** | [**ResourceQuantity**](ResourceQuantity.md) | Specifies the output format of the exposed resources, defaults to &quot;&quot;1&quot;&quot; +optional | [optional] 
**Resource** | **String** | Required: resource to select | [optional] 

## Examples

- Prepare the resource
```powershell
$V1ResourceFieldSelector = Initialize-PSOpenAPIToolsV1ResourceFieldSelector  -ContainerName null `
 -Divisor null `
 -Resource null
```

- Convert the resource to JSON
```powershell
$V1ResourceFieldSelector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

