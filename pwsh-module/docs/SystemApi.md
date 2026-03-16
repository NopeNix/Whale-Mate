# PSOpenAPITools.PSOpenAPITools\Api.SystemApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-SystemInfo**](SystemApi.md#Invoke-SystemInfo) | **GET** /system/info | Retrieve system info
[**Invoke-SystemNodesCount**](SystemApi.md#Invoke-SystemNodesCount) | **GET** /system/nodes | Retrieve the count of nodes
[**Invoke-SystemStatus**](SystemApi.md#Invoke-SystemStatus) | **GET** /system/status | Check Portainer status
[**Invoke-SystemUpdate**](SystemApi.md#Invoke-SystemUpdate) | **POST** /system/update | Update Portainer to latest version
[**Invoke-SystemVersion**](SystemApi.md#Invoke-SystemVersion) | **GET** /system/version | Check for portainer updates


<a id="Invoke-SystemInfo"></a>
# **Invoke-SystemInfo**
> GithubComPortainerPortainerEeApiHttpHandlerSystemSystemInfoResponse Invoke-SystemInfo<br>

Retrieve system info

**Access policy**: authenticated

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


# Retrieve system info
try {
    $Result = Invoke-SystemInfo
} catch {
    Write-Host ("Exception occurred when calling Invoke-SystemInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GithubComPortainerPortainerEeApiHttpHandlerSystemSystemInfoResponse**](GithubComPortainerPortainerEeApiHttpHandlerSystemSystemInfoResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-SystemNodesCount"></a>
# **Invoke-SystemNodesCount**
> GithubComPortainerPortainerEeApiHttpHandlerSystemNodesCountResponse Invoke-SystemNodesCount<br>

Retrieve the count of nodes

**Access policy**: authenticated

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


# Retrieve the count of nodes
try {
    $Result = Invoke-SystemNodesCount
} catch {
    Write-Host ("Exception occurred when calling Invoke-SystemNodesCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GithubComPortainerPortainerEeApiHttpHandlerSystemNodesCountResponse**](GithubComPortainerPortainerEeApiHttpHandlerSystemNodesCountResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-SystemStatus"></a>
# **Invoke-SystemStatus**
> GithubComPortainerPortainerEeApiHttpHandlerSystemStatus Invoke-SystemStatus<br>

Check Portainer status

Retrieve Portainer status **Access policy**: public

### Example
```powershell

# Check Portainer status
try {
    $Result = Invoke-SystemStatus
} catch {
    Write-Host ("Exception occurred when calling Invoke-SystemStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GithubComPortainerPortainerEeApiHttpHandlerSystemStatus**](GithubComPortainerPortainerEeApiHttpHandlerSystemStatus.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-SystemUpdate"></a>
# **Invoke-SystemUpdate**
> GithubComPortainerPortainerEeApiHttpHandlerSystemStatus Invoke-SystemUpdate<br>

Update Portainer to latest version

Update Portainer to latest version **Access policy**: administrator

### Example
```powershell

# Update Portainer to latest version
try {
    $Result = Invoke-SystemUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-SystemUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GithubComPortainerPortainerEeApiHttpHandlerSystemStatus**](GithubComPortainerPortainerEeApiHttpHandlerSystemStatus.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-SystemVersion"></a>
# **Invoke-SystemVersion**
> GithubComPortainerPortainerEeApiHttpHandlerSystemVersionResponse Invoke-SystemVersion<br>

Check for portainer updates

Check if portainer has an update available **Access policy**: authenticated

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


# Check for portainer updates
try {
    $Result = Invoke-SystemVersion
} catch {
    Write-Host ("Exception occurred when calling Invoke-SystemVersion: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GithubComPortainerPortainerEeApiHttpHandlerSystemVersionResponse**](GithubComPortainerPortainerEeApiHttpHandlerSystemVersionResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

