# PortainereeS3BackupSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessKeyID** | **String** | AWS access key id | [optional] 
**BucketName** | **String** | AWS S3 bucket name | [optional] 
**CronRule** | **String** | Crontab rule to make periodical backups | [optional] 
**Password** | **String** | Password to encrypt the backup with | [optional] 
**Region** | **String** | AWS S3 region. Default to &quot;&quot;us-east-1&quot;&quot; | [optional] 
**S3CompatibleHost** | **String** | S3 compatible host | [optional] 
**SecretAccessKey** | **String** | AWS secret access key | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeS3BackupSettings = Initialize-PSOpenAPIToolsPortainereeS3BackupSettings  -AccessKeyID null `
 -BucketName null `
 -CronRule null `
 -Password null `
 -Region us-east-1 `
 -S3CompatibleHost null `
 -SecretAccessKey null
```

- Convert the resource to JSON
```powershell
$PortainereeS3BackupSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

