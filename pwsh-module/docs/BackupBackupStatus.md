# BackupBackupStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Failed** | **Boolean** |  | [optional] 
**TimestampUTC** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BackupBackupStatus = Initialize-PSOpenAPIToolsBackupBackupStatus  -Failed null `
 -TimestampUTC null
```

- Convert the resource to JSON
```powershell
$BackupBackupStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

