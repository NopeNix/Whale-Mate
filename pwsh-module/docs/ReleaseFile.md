# ReleaseFile
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | **Int32[]** | Data is the template as byte data. | [optional] 
**Name** | **String** | Name is the path-like name of the template. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReleaseFile = Initialize-PSOpenAPIToolsReleaseFile  -VarData null `
 -Name null
```

- Convert the resource to JSON
```powershell
$ReleaseFile | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

