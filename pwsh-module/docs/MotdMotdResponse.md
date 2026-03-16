# MotdMotdResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContentLayout** | **System.Collections.Hashtable** |  | [optional] 
**Hash** | **Int32[]** |  | [optional] 
**Message** | **String** |  | [optional] 
**Style** | **String** |  | [optional] 
**Title** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MotdMotdResponse = Initialize-PSOpenAPIToolsMotdMotdResponse  -ContentLayout null `
 -Hash null `
 -Message null `
 -Style null `
 -Title null
```

- Convert the resource to JSON
```powershell
$MotdMotdResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

