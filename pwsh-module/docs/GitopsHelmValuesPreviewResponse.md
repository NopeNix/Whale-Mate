# GitopsHelmValuesPreviewResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CommitHash** | **String** |  | [optional] 
**FilesProcessed** | **String[]** |  | [optional] 
**MergedValues** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GitopsHelmValuesPreviewResponse = Initialize-PSOpenAPIToolsGitopsHelmValuesPreviewResponse  -CommitHash null `
 -FilesProcessed null `
 -MergedValues null
```

- Convert the resource to JSON
```powershell
$GitopsHelmValuesPreviewResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

