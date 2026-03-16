# ModelsCloudCredential
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **Int32** |  | [optional] 
**Credentials** | **System.Collections.Hashtable** |  | [optional] 
**Id** | **Int32** |  | [optional] 
**Name** | **String** |  | [optional] 
**Provider** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelsCloudCredential = Initialize-PSOpenAPIToolsModelsCloudCredential  -Created 1650000000 `
 -Credentials null `
 -Id 1 `
 -Name test-env `
 -Provider aws
```

- Convert the resource to JSON
```powershell
$ModelsCloudCredential | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

