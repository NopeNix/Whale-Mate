# UnstructuredUnstructured
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Object** | [**System.Collections.Hashtable**](AnyType.md) | Object is a JSON compatible map with string, float, int, bool, []interface{}, or map[string]interface{} children. | [optional] 

## Examples

- Prepare the resource
```powershell
$UnstructuredUnstructured = Initialize-PSOpenAPIToolsUnstructuredUnstructured  -Object null
```

- Convert the resource to JSON
```powershell
$UnstructuredUnstructured | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

