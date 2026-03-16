# V1ObjectFieldSelector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApiVersion** | **String** | Version of the schema the FieldPath is written in terms of, defaults to &quot;&quot;v1&quot;&quot;. +optional | [optional] 
**FieldPath** | **String** | Path of the field to select in the specified API version. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1ObjectFieldSelector = Initialize-PSOpenAPIToolsV1ObjectFieldSelector  -ApiVersion null `
 -FieldPath null
```

- Convert the resource to JSON
```powershell
$V1ObjectFieldSelector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

