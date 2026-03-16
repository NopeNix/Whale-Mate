# BackupRestorePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FileContent** | **Int32[]** | Content of the backup | 
**FileName** | **String** | File name | 
**Password** | **String** | Password to decrypt the backup with | [optional] 

## Examples

- Prepare the resource
```powershell
$BackupRestorePayload = Initialize-PSOpenAPIToolsBackupRestorePayload  -FileContent null `
 -FileName null `
 -Password null
```

- Convert the resource to JSON
```powershell
$BackupRestorePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

