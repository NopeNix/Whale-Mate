# ImagesImageResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **Int32** |  | [optional] 
**Id** | **String** |  | [optional] 
**NodeName** | **String** |  | [optional] 
**Size** | **Int32** |  | [optional] 
**Tags** | **String[]** |  | [optional] 
**Used** | **Boolean** | Used is true if the image is used by at least one container supplied only when withUsage is true | [optional] 

## Examples

- Prepare the resource
```powershell
$ImagesImageResponse = Initialize-PSOpenAPIToolsImagesImageResponse  -Created null `
 -Id null `
 -NodeName null `
 -Size null `
 -Tags null `
 -Used null
```

- Convert the resource to JSON
```powershell
$ImagesImageResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

