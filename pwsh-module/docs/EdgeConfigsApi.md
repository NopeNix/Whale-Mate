# PSOpenAPITools.PSOpenAPITools\Api.EdgeConfigsApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-EdgeConfigCreate**](EdgeConfigsApi.md#Invoke-EdgeConfigCreate) | **POST** /edge_configurations | Create an Edge Configuration
[**Invoke-EdgeConfigDelete**](EdgeConfigsApi.md#Invoke-EdgeConfigDelete) | **DELETE** /edge_configurations/{id} | Delete an Edge configuration
[**Invoke-EdgeConfigFiles**](EdgeConfigsApi.md#Invoke-EdgeConfigFiles) | **GET** /edge_configurations/{id}/files | Get the files for an Edge configuration
[**Invoke-EdgeConfigInspect**](EdgeConfigsApi.md#Invoke-EdgeConfigInspect) | **GET** /edge_configurations/{id} | Inspect an Edge configuration
[**Invoke-EdgeConfigList**](EdgeConfigsApi.md#Invoke-EdgeConfigList) | **GET** /edge_configurations | List available Edge Configurations
[**Invoke-EdgeConfigState**](EdgeConfigsApi.md#Invoke-EdgeConfigState) | **PUT** /edge_configurations/{id}/{state} | Update the state of an Edge configuration
[**Invoke-EdgeConfigUpdate**](EdgeConfigsApi.md#Invoke-EdgeConfigUpdate) | **PUT** /edge_configurations/{id} | Update an Edge Configuration


<a id="Invoke-EdgeConfigCreate"></a>
# **Invoke-EdgeConfigCreate**
> void Invoke-EdgeConfigCreate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BaseDir] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Category] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EdgeGroupIDs] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>

Create an Edge Configuration

Create an Edge Configuration. **Access policy**: authenticated

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

$File =  # System.IO.FileInfo | File
$BaseDir = "MyBaseDir" # String |  (optional)
$Category = "configuration" # String |  (optional)
$EdgeGroupIDs = 0 # Int32[] |  (optional)
$Name = "MyName" # String |  (optional)
$Type = "MyType" # String |  (optional)

# Create an Edge Configuration
try {
    $Result = Invoke-EdgeConfigCreate -File $File -BaseDir $BaseDir -Category $Category -EdgeGroupIDs $EdgeGroupIDs -Name $Name -Type $Type
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeConfigCreate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| File | 
 **BaseDir** | **String**|  | [optional] 
 **Category** | **String**|  | [optional] 
 **EdgeGroupIDs** | [**Int32[]**](Int32.md)|  | [optional] 
 **Name** | **String**|  | [optional] 
 **Type** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeConfigDelete"></a>
# **Invoke-EdgeConfigDelete**
> void Invoke-EdgeConfigDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Delete an Edge configuration

Delete an Edge configuration. **Access policy**: authenticated

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

$Id = 56 # Int32 | Edge configuration identifier

# Delete an Edge configuration
try {
    $Result = Invoke-EdgeConfigDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeConfigDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Edge configuration identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeConfigFiles"></a>
# **Invoke-EdgeConfigFiles**
> String Invoke-EdgeConfigFiles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get the files for an Edge configuration

Used by the standard edge agent to retrieve the files for an Edge configuration.

### Example
```powershell
$Id = 56 # Int32 | Edge configuration identifier

# Get the files for an Edge configuration
try {
    $Result = Invoke-EdgeConfigFiles -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeConfigFiles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Edge configuration identifier | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeConfigInspect"></a>
# **Invoke-EdgeConfigInspect**
> PortainereeEdgeConfig Invoke-EdgeConfigInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Inspect an Edge configuration

Retrieve details about an Edge configuration. **Access policy**: authenticated

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

$Id = 56 # Int32 | Edge configuration identifier

# Inspect an Edge configuration
try {
    $Result = Invoke-EdgeConfigInspect -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeConfigInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Edge configuration identifier | 

### Return type

[**PortainereeEdgeConfig**](PortainereeEdgeConfig.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeConfigList"></a>
# **Invoke-EdgeConfigList**
> PortainereeEdgeConfig[] Invoke-EdgeConfigList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

List available Edge Configurations

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

$EdgeconfigsEdgeConfigCreatePayload = Initialize-EdgeconfigsEdgeConfigCreatePayload -BaseDir "MyBaseDir" -Category "configuration" -EdgeGroupIDs 0 -Name "MyName" -Type "MyType" # EdgeconfigsEdgeConfigCreatePayload | body

# List available Edge Configurations
try {
    $Result = Invoke-EdgeConfigList -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeConfigList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**EdgeconfigsEdgeConfigCreatePayload**](EdgeconfigsEdgeConfigCreatePayload.md)| body | 

### Return type

[**PortainereeEdgeConfig[]**](PortainereeEdgeConfig.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeConfigState"></a>
# **Invoke-EdgeConfigState**
> void Invoke-EdgeConfigState<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-State] <Int32><br>

Update the state of an Edge configuration

Used by the standard edge agent to update the state of an Edge configuration.

### Example
```powershell
$Id = 56 # Int32 | Edge configuration identifier
$State = 56 # Int32 | Edge configuration state

# Update the state of an Edge configuration
try {
    $Result = Invoke-EdgeConfigState -Id $Id -State $State
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeConfigState: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Edge configuration identifier | 
 **State** | **Int32**| Edge configuration state | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeConfigUpdate"></a>
# **Invoke-EdgeConfigUpdate**
> void Invoke-EdgeConfigUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EdgeGroupIDs] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>

Update an Edge Configuration

Update an Edge Configuration. **Access policy**: authenticated

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

$Id = 56 # Int32 | Edge configuration identifier
$File =  # System.IO.FileInfo | File
$EdgeGroupIDs = 0 # Int32[] |  (optional)
$Type = "MyType" # String |  (optional)

# Update an Edge Configuration
try {
    $Result = Invoke-EdgeConfigUpdate -Id $Id -File $File -EdgeGroupIDs $EdgeGroupIDs -Type $Type
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeConfigUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Edge configuration identifier | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| File | 
 **EdgeGroupIDs** | [**Int32[]**](Int32.md)|  | [optional] 
 **Type** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

