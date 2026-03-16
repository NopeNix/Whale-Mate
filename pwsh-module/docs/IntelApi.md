# PSOpenAPITools.PSOpenAPITools\Api.IntelApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DeviceAction**](IntelApi.md#Invoke-DeviceAction) | **POST** /open_amt/{id}/devices/{deviceId}/action | Execute out of band action on an AMT managed device
[**Invoke-DeviceFeatures**](IntelApi.md#Invoke-DeviceFeatures) | **POST** /open_amt/{id}/devices_features/{deviceId} | Enable features on an AMT managed device
[**Open-AMTActivate**](IntelApi.md#Open-AMTActivate) | **POST** /open_amt/{id}/activate | Activate OpenAMT device and associate to agent endpoint
[**Open-AMTConfigure**](IntelApi.md#Open-AMTConfigure) | **POST** /open_amt | Enable Portainer&#39;s OpenAMT capabilities
[**Open-AMTDevices**](IntelApi.md#Open-AMTDevices) | **GET** /open_amt/{id}/devices | Fetch OpenAMT managed devices information for endpoint
[**Open-AMTHostInfo**](IntelApi.md#Open-AMTHostInfo) | **GET** /open_amt/{id}/info | Request OpenAMT info from a node


<a id="Invoke-DeviceAction"></a>
# **Invoke-DeviceAction**
> void Invoke-DeviceAction<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Execute out of band action on an AMT managed device

Execute out of band action on an AMT managed device **Access policy**: administrator

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$Id = 56 # Int32 | Environment identifier
$DeviceId = 56 # Int32 | Device identifier
$OpenamtDeviceActionPayload = Initialize-OpenamtDeviceActionPayload -Action "MyAction" # OpenamtDeviceActionPayload | Device Action

# Execute out of band action on an AMT managed device
try {
    $Result = Invoke-DeviceAction -Id $Id -DeviceId $DeviceId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeviceAction: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **DeviceId** | **Int32**| Device identifier | 
 **Body** | [**OpenamtDeviceActionPayload**](OpenamtDeviceActionPayload.md)| Device Action | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeviceFeatures"></a>
# **Invoke-DeviceFeatures**
> void Invoke-DeviceFeatures<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Enable features on an AMT managed device

Enable features on an AMT managed device **Access policy**: administrator

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$Id = 56 # Int32 | Environment identifier
$DeviceId = 56 # Int32 | Device identifier
$PortainerOpenAMTDeviceEnabledFeatures = Initialize-PortainerOpenAMTDeviceEnabledFeatures -IDER $false -KVM $false -SOL $false -Redirection $false -UserConsent "MyUserConsent"
$OpenamtDeviceFeaturesPayload = Initialize-OpenamtDeviceFeaturesPayload -Features $PortainerOpenAMTDeviceEnabledFeatures # OpenamtDeviceFeaturesPayload | Device Features

# Enable features on an AMT managed device
try {
    $Result = Invoke-DeviceFeatures -Id $Id -DeviceId $DeviceId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeviceFeatures: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **DeviceId** | **Int32**| Device identifier | 
 **Body** | [**OpenamtDeviceFeaturesPayload**](OpenamtDeviceFeaturesPayload.md)| Device Features | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Open-AMTActivate"></a>
# **Open-AMTActivate**
> void Open-AMTActivate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Activate OpenAMT device and associate to agent endpoint

Activate OpenAMT device and associate to agent endpoint **Access policy**: administrator

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$Id = 56 # Int32 | Environment identifier

# Activate OpenAMT device and associate to agent endpoint
try {
    $Result = Open-AMTActivate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Open-AMTActivate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Open-AMTConfigure"></a>
# **Open-AMTConfigure**
> void Open-AMTConfigure<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Enable Portainer's OpenAMT capabilities

Enable Portainer's OpenAMT capabilities **Access policy**: administrator

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$OpenamtOpenAMTConfigurePayload = Initialize-OpenamtOpenAMTConfigurePayload -CertFileContent "MyCertFileContent" -CertFileName "MyCertFileName" -CertFilePassword "MyCertFilePassword" -DomainName "MyDomainName" -Enabled $false -MPSPassword "MyMPSPassword" -MPSServer "MyMPSServer" -MPSUser "MyMPSUser" # OpenamtOpenAMTConfigurePayload | OpenAMT Settings

# Enable Portainer's OpenAMT capabilities
try {
    $Result = Open-AMTConfigure -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Open-AMTConfigure: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**OpenamtOpenAMTConfigurePayload**](OpenamtOpenAMTConfigurePayload.md)| OpenAMT Settings | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Open-AMTDevices"></a>
# **Open-AMTDevices**
> void Open-AMTDevices<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Fetch OpenAMT managed devices information for endpoint

Fetch OpenAMT managed devices information for endpoint **Access policy**: administrator

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$Id = 56 # Int32 | Environment(Endpoint) identifier

# Fetch OpenAMT managed devices information for endpoint
try {
    $Result = Open-AMTDevices -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Open-AMTDevices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Open-AMTHostInfo"></a>
# **Open-AMTHostInfo**
> void Open-AMTHostInfo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Request OpenAMT info from a node

Request OpenAMT info from a node **Access policy**: administrator

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$Id = 56 # Int32 | Environment identifier

# Request OpenAMT info from a node
try {
    $Result = Open-AMTHostInfo -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Open-AMTHostInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

