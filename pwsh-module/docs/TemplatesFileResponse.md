# TemplatesFileResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FileContent** | **String** | The requested file content | [optional] 

## Examples

- Prepare the resource
```powershell
$TemplatesFileResponse = Initialize-PSOpenAPIToolsTemplatesFileResponse  -FileContent version:2
```

- Convert the resource to JSON
```powershell
$TemplatesFileResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

