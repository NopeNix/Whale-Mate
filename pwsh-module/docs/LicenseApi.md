# PSOpenAPITools.PSOpenAPITools\Api.LicenseApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-LicensesAttach**](LicenseApi.md#Invoke-LicensesAttach) | **POST** /licenses/add | attaches a list of licenses to Portainer
[**Invoke-LicensesDelete**](LicenseApi.md#Invoke-LicensesDelete) | **POST** /licenses/remove | delete license from portainer instance
[**Invoke-LicensesInfo**](LicenseApi.md#Invoke-LicensesInfo) | **GET** /licenses/info | summarizes licenses on Portainer
[**Invoke-LicensesList**](LicenseApi.md#Invoke-LicensesList) | **GET** /licenses | fetches the list of licenses on Portainer


<a id="Invoke-LicensesAttach"></a>
# **Invoke-LicensesAttach**
> LicensesAttachResponse Invoke-LicensesAttach<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Force] <System.Nullable[Boolean]><br>

attaches a list of licenses to Portainer

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

$LicensesAttachPayload = Initialize-LicensesAttachPayload -Key "MyKey" # LicensesAttachPayload | list of licenses keys to attach
$Force = $true # Boolean | remove conflicting licenses (optional)

# attaches a list of licenses to Portainer
try {
    $Result = Invoke-LicensesAttach -Body $Body -Force $Force
} catch {
    Write-Host ("Exception occurred when calling Invoke-LicensesAttach: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**LicensesAttachPayload**](LicensesAttachPayload.md)| list of licenses keys to attach | 
 **Force** | **Boolean**| remove conflicting licenses | [optional] 

### Return type

[**LicensesAttachResponse**](LicensesAttachResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LicensesDelete"></a>
# **Invoke-LicensesDelete**
> void Invoke-LicensesDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

delete license from portainer instance

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

$LicensesDeletePayload = Initialize-LicensesDeletePayload -LicenseKeys "MyLicenseKeys" # LicensesDeletePayload | list of license keys to remove

# delete license from portainer instance
try {
    $Result = Invoke-LicensesDelete -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-LicensesDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**LicensesDeletePayload**](LicensesDeletePayload.md)| list of license keys to remove | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LicensesInfo"></a>
# **Invoke-LicensesInfo**
> LicensesLicenseInfo Invoke-LicensesInfo<br>

summarizes licenses on Portainer

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


# summarizes licenses on Portainer
try {
    $Result = Invoke-LicensesInfo
} catch {
    Write-Host ("Exception occurred when calling Invoke-LicensesInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LicensesLicenseInfo**](LicensesLicenseInfo.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LicensesList"></a>
# **Invoke-LicensesList**
> LiblicensePortainerLicense[] Invoke-LicensesList<br>

fetches the list of licenses on Portainer

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


# fetches the list of licenses on Portainer
try {
    $Result = Invoke-LicensesList
} catch {
    Write-Host ("Exception occurred when calling Invoke-LicensesList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LiblicensePortainerLicense[]**](LiblicensePortainerLicense.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

