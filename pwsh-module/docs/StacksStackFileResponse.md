# StacksStackFileResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StackFileContent** | **String** | Content of the Stack file | [optional] 

## Examples

- Prepare the resource
```powershell
$StacksStackFileResponse = Initialize-PSOpenAPIToolsStacksStackFileResponse  -StackFileContent version: 3
 services:
 web:
 image:nginx
```

- Convert the resource to JSON
```powershell
$StacksStackFileResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

