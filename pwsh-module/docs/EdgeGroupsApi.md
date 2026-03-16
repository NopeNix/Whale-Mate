# PSOpenAPITools.PSOpenAPITools\Api.EdgeGroupsApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-EdgeGroupCreate**](EdgeGroupsApi.md#Invoke-EdgeGroupCreate) | **POST** /edge_groups | Create an EdgeGroup
[**Invoke-EdgeGroupDelete**](EdgeGroupsApi.md#Invoke-EdgeGroupDelete) | **DELETE** /edge_groups/{id} | Deletes an EdgeGroup
[**Invoke-EdgeGroupInspect**](EdgeGroupsApi.md#Invoke-EdgeGroupInspect) | **GET** /edge_groups/{id} | Inspects an EdgeGroup
[**Invoke-EdgeGroupList**](EdgeGroupsApi.md#Invoke-EdgeGroupList) | **GET** /edge_groups | list EdgeGroups
[**Invoke-EdgeGroupUpdate**](EdgeGroupsApi.md#Invoke-EdgeGroupUpdate) | **PUT** /edge_groups/{id} | Updates an EdgeGroup


<a id="Invoke-EdgeGroupCreate"></a>
# **Invoke-EdgeGroupCreate**
> PortainereeEdgeGroup Invoke-EdgeGroupCreate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Create an EdgeGroup

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

$EdgegroupsEdgeGroupCreatePayload = Initialize-EdgegroupsEdgeGroupCreatePayload -Dynamic $false -Endpoints 0 -Name "MyName" -PartialMatch $false -TagIDs 0 # EdgegroupsEdgeGroupCreatePayload | EdgeGroup data

# Create an EdgeGroup
try {
    $Result = Invoke-EdgeGroupCreate -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeGroupCreate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**EdgegroupsEdgeGroupCreatePayload**](EdgegroupsEdgeGroupCreatePayload.md)| EdgeGroup data | 

### Return type

[**PortainereeEdgeGroup**](PortainereeEdgeGroup.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeGroupDelete"></a>
# **Invoke-EdgeGroupDelete**
> void Invoke-EdgeGroupDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Deletes an EdgeGroup

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

$Id = 56 # Int32 | EdgeGroup Id

# Deletes an EdgeGroup
try {
    $Result = Invoke-EdgeGroupDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeGroupDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeGroup Id | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeGroupInspect"></a>
# **Invoke-EdgeGroupInspect**
> PortainereeEdgeGroup Invoke-EdgeGroupInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Inspects an EdgeGroup

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

$Id = 56 # Int32 | EdgeGroup Id

# Inspects an EdgeGroup
try {
    $Result = Invoke-EdgeGroupInspect -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeGroupInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeGroup Id | 

### Return type

[**PortainereeEdgeGroup**](PortainereeEdgeGroup.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeGroupList"></a>
# **Invoke-EdgeGroupList**
> EdgegroupsDecoratedEdgeGroup[] Invoke-EdgeGroupList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Summarize] <System.Nullable[Boolean]><br>

list EdgeGroups

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

$Summarize = $true # Boolean | will summarize the env count (optional)

# list EdgeGroups
try {
    $Result = Invoke-EdgeGroupList -Summarize $Summarize
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeGroupList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Summarize** | **Boolean**| will summarize the env count | [optional] 

### Return type

[**EdgegroupsDecoratedEdgeGroup[]**](EdgegroupsDecoratedEdgeGroup.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeGroupUpdate"></a>
# **Invoke-EdgeGroupUpdate**
> PortainereeEdgeGroup Invoke-EdgeGroupUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Updates an EdgeGroup

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

$Id = 56 # Int32 | EdgeGroup Id
$EdgegroupsEdgeGroupUpdatePayload = Initialize-EdgegroupsEdgeGroupUpdatePayload -Dynamic $false -Endpoints 0 -Name "MyName" -PartialMatch $false -TagIDs 0 # EdgegroupsEdgeGroupUpdatePayload | EdgeGroup data

# Updates an EdgeGroup
try {
    $Result = Invoke-EdgeGroupUpdate -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeGroupUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeGroup Id | 
 **Body** | [**EdgegroupsEdgeGroupUpdatePayload**](EdgegroupsEdgeGroupUpdatePayload.md)| EdgeGroup data | 

### Return type

[**PortainereeEdgeGroup**](PortainereeEdgeGroup.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

