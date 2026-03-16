# ReleaseLock
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Dependencies** | [**ReleaseDependency[]**](ReleaseDependency.md) | Dependencies is the list of dependencies that this lock file has locked. | [optional] 
**Digest** | **String** | Digest is a hash of the dependencies in Chart.yaml. | [optional] 
**Generated** | **String** | Generated is the date the lock file was last generated. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReleaseLock = Initialize-PSOpenAPIToolsReleaseLock  -Dependencies null `
 -Digest null `
 -Generated null
```

- Convert the resource to JSON
```powershell
$ReleaseLock | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

