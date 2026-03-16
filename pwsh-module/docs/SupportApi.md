# PSOpenAPITools.PSOpenAPITools\Api.SupportApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-DebugLogStatus**](SupportApi.md#Get-DebugLogStatus) | **GET** /support/debug_log | Get status of the global debug log
[**Set-DebugLogStatus**](SupportApi.md#Set-DebugLogStatus) | **PUT** /support/debug_log | Enables or disables the global debug log
[**Invoke-SupportBundleDownload**](SupportApi.md#Invoke-SupportBundleDownload) | **POST** /support/download | Download a bundle of files to help support diagnose issues


<a id="Get-DebugLogStatus"></a>
# **Get-DebugLogStatus**
> SupportDebugLogPayload Get-DebugLogStatus<br>

Get status of the global debug log

Checks if the global log level is enabled **Access policy**: administrator

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


# Get status of the global debug log
try {
    $Result = Get-DebugLogStatus
} catch {
    Write-Host ("Exception occurred when calling Get-DebugLogStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SupportDebugLogPayload**](SupportDebugLogPayload.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-DebugLogStatus"></a>
# **Set-DebugLogStatus**
> SupportDebugLogPayload Set-DebugLogStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Enables or disables the global debug log

Enables the debug log by setting the global log level to debug or info if disabled **Access policy**: administrator

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

$SupportDebugLogPayload = Initialize-SupportDebugLogPayload -DebugLogEnabled $false # SupportDebugLogPayload | Debug log should be set to enabled or disabled

# Enables or disables the global debug log
try {
    $Result = Set-DebugLogStatus -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Set-DebugLogStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**SupportDebugLogPayload**](SupportDebugLogPayload.md)| Debug log should be set to enabled or disabled | 

### Return type

[**SupportDebugLogPayload**](SupportDebugLogPayload.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-SupportBundleDownload"></a>
# **Invoke-SupportBundleDownload**
> void Invoke-SupportBundleDownload<br>

Download a bundle of files to help support diagnose issues

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


# Download a bundle of files to help support diagnose issues
try {
    $Result = Invoke-SupportBundleDownload
} catch {
    Write-Host ("Exception occurred when calling Invoke-SupportBundleDownload: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

