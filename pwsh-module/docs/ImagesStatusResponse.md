# ImagesStatusResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | [optional] 
**Status** | [**GithubComPortainerPortainerEeApiDockerImagesStatus**](GithubComPortainerPortainerEeApiDockerImagesStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ImagesStatusResponse = Initialize-PSOpenAPIToolsImagesStatusResponse  -Message null `
 -Status null
```

- Convert the resource to JSON
```powershell
$ImagesStatusResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

