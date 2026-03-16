# PSOpenAPITools.PSOpenAPITools\Api.BackupApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Backup-**](BackupApi.md#Backup-) | **POST** /backup | Creates an archive with a system data snapshot that could be used to restore the system.
[**Backup-SettingsFetch**](BackupApi.md#Backup-SettingsFetch) | **GET** /backup/s3/settings | Fetch s3 backup settings/configurations
[**Backup-StatusFetch**](BackupApi.md#Backup-StatusFetch) | **GET** /backup/s3/status | Fetch the status of the last scheduled backup run
[**Backup-ToS3**](BackupApi.md#Backup-ToS3) | **POST** /backup/s3/execute | Execute backup to AWS S3 Bucket
[**Restore-**](BackupApi.md#Restore-) | **POST** /restore | Triggers a system restore using provided backup file
[**Restore-FromS3**](BackupApi.md#Restore-FromS3) | **POST** /backup/s3/restore | Triggers a system restore using details of s3 backup
[**Update-S3Settings**](BackupApi.md#Update-S3Settings) | **POST** /backup/s3/settings | Updates stored s3 backup settings and updates running cron jobs as needed


<a id="Backup-"></a>
# **Backup-**
> void Backup-<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Creates an archive with a system data snapshot that could be used to restore the system.

Creates an archive with a system data snapshot that could be used to restore the system. **Access policy**: admin

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure API key authorization: ApiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

$BackupBackupPayload = Initialize-BackupBackupPayload -Password "MyPassword" # BackupBackupPayload | An object contains the password to encrypt the backup with (optional)

# Creates an archive with a system data snapshot that could be used to restore the system.
try {
    $Result = Backup- -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Backup-: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**BackupBackupPayload**](BackupBackupPayload.md)| An object contains the password to encrypt the backup with | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Backup-SettingsFetch"></a>
# **Backup-SettingsFetch**
> PortainereeS3BackupSettings Backup-SettingsFetch<br>

Fetch s3 backup settings/configurations

**Access policy**: administrator

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure API key authorization: ApiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"


# Fetch s3 backup settings/configurations
try {
    $Result = Backup-SettingsFetch
} catch {
    Write-Host ("Exception occurred when calling Backup-SettingsFetch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PortainereeS3BackupSettings**](PortainereeS3BackupSettings.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Backup-StatusFetch"></a>
# **Backup-StatusFetch**
> BackupBackupStatus Backup-StatusFetch<br>

Fetch the status of the last scheduled backup run

**Access policy**: public

### Example
```powershell

# Fetch the status of the last scheduled backup run
try {
    $Result = Backup-StatusFetch
} catch {
    Write-Host ("Exception occurred when calling Backup-StatusFetch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BackupBackupStatus**](BackupBackupStatus.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Backup-ToS3"></a>
# **Backup-ToS3**
> void Backup-ToS3<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Execute backup to AWS S3 Bucket

Creates an archive with a system data snapshot and upload it to the target S3 bucket **Access policy**: administrator

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure API key authorization: ApiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

$BackupS3BackupPayload = Initialize-BackupS3BackupPayload -AccessKeyID "MyAccessKeyID" -BucketName "MyBucketName" -CronRule "MyCronRule" -Password "MyPassword" -Region "us-east-1" -S3CompatibleHost "MyS3CompatibleHost" -SecretAccessKey "MySecretAccessKey" # BackupS3BackupPayload | S3 backup settings

# Execute backup to AWS S3 Bucket
try {
    $Result = Backup-ToS3 -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Backup-ToS3: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**BackupS3BackupPayload**](BackupS3BackupPayload.md)| S3 backup settings | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Restore-"></a>
# **Restore-**
> void Restore-<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RestorePayload] <PSCustomObject><br>

Triggers a system restore using provided backup file

Triggers a system restore using provided backup file **Access policy**: public

### Example
```powershell
$BackupRestorePayload = Initialize-BackupRestorePayload -FileContent 0 -FileName "MyFileName" -Password "MyPassword" # BackupRestorePayload | Restore request payload

# Triggers a system restore using provided backup file
try {
    $Result = Restore- -RestorePayload $RestorePayload
} catch {
    Write-Host ("Exception occurred when calling Restore-: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RestorePayload** | [**BackupRestorePayload**](BackupRestorePayload.md)| Restore request payload | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Restore-FromS3"></a>
# **Restore-FromS3**
> void Restore-FromS3<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Triggers a system restore using details of s3 backup

Triggers a system restore using details of s3 backup **Access policy**: public

### Example
```powershell
$BackupRestoreS3Settings = Initialize-BackupRestoreS3Settings -AccessKeyID "MyAccessKeyID" -BucketName "MyBucketName" -Filename "MyFilename" -Password "MyPassword" -Region "us-east-1" -S3CompatibleHost "MyS3CompatibleHost" -SecretAccessKey "MySecretAccessKey" # BackupRestoreS3Settings | S3 Location Payload (optional)

# Triggers a system restore using details of s3 backup
try {
    $Result = Restore-FromS3 -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Restore-FromS3: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**BackupRestoreS3Settings**](BackupRestoreS3Settings.md)| S3 Location Payload | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-S3Settings"></a>
# **Update-S3Settings**
> void Update-S3Settings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-S3BackupSettings] <PSCustomObject><br>

Updates stored s3 backup settings and updates running cron jobs as needed

Updates stored s3 backup settings and updates running cron jobs as needed **Access policy**: administrator

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure API key authorization: ApiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

$PortainereeS3BackupSettings = Initialize-PortainereeS3BackupSettings -AccessKeyID "MyAccessKeyID" -BucketName "MyBucketName" -CronRule "MyCronRule" -Password "MyPassword" -Region "us-east-1" -S3CompatibleHost "MyS3CompatibleHost" -SecretAccessKey "MySecretAccessKey" # PortainereeS3BackupSettings | S3 backup settings (optional)

# Updates stored s3 backup settings and updates running cron jobs as needed
try {
    $Result = Update-S3Settings -S3BackupSettings $S3BackupSettings
} catch {
    Write-Host ("Exception occurred when calling Update-S3Settings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **S3BackupSettings** | [**PortainereeS3BackupSettings**](PortainereeS3BackupSettings.md)| S3 backup settings | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

