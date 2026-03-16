# FilesystemDirEntry
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | **String** |  | [optional] 
**IsFile** | **Boolean** |  | [optional] 
**Name** | **String** |  | [optional] 
**Permissions** | [**OsFileMode**](OsFileMode.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FilesystemDirEntry = Initialize-PSOpenAPIToolsFilesystemDirEntry  -Content null `
 -IsFile null `
 -Name null `
 -Permissions null
```

- Convert the resource to JSON
```powershell
$FilesystemDirEntry | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

