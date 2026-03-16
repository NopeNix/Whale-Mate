# DockerImagesCounters
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Size** | **Int32** |  | [optional] 
**Total** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DockerImagesCounters = Initialize-PSOpenAPIToolsDockerImagesCounters  -Size null `
 -Total null
```

- Convert the resource to JSON
```powershell
$DockerImagesCounters | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

