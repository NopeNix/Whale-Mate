# PSOpenAPITools.PSOpenAPITools\Api.EndpointGroupsApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Stop-pointGroupAddEndpoint**](EndpointGroupsApi.md#Stop-pointGroupAddEndpoint) | **PUT** /endpoint_groups/{id}/endpoints/{endpointId} | Add an environment(endpoint) to an environment(endpoint) group
[**Stop-pointGroupDelete**](EndpointGroupsApi.md#Stop-pointGroupDelete) | **DELETE** /endpoint_groups/{id} | Remove an environment(endpoint) group
[**Stop-pointGroupDeleteEndpoint**](EndpointGroupsApi.md#Stop-pointGroupDeleteEndpoint) | **DELETE** /endpoint_groups/{id}/endpoints/{endpointId} | Removes environment(endpoint) from an environment(endpoint) group
[**Stop-pointGroupList**](EndpointGroupsApi.md#Stop-pointGroupList) | **GET** /endpoint_groups | List Environment(Endpoint) groups
[**Stop-pointGroupUpdate**](EndpointGroupsApi.md#Stop-pointGroupUpdate) | **PUT** /endpoint_groups/{id} | Update an environment(endpoint) group
[**Stop-pointGroupsIdGet**](EndpointGroupsApi.md#Stop-pointGroupsIdGet) | **GET** /endpoint_groups/{id} | Inspect an Environment(Endpoint) group
[**Stop-pointGroupsPost**](EndpointGroupsApi.md#Stop-pointGroupsPost) | **POST** /endpoint_groups | Create an Environment(Endpoint) Group


<a id="Stop-pointGroupAddEndpoint"></a>
# **Stop-pointGroupAddEndpoint**
> void Stop-pointGroupAddEndpoint<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>

Add an environment(endpoint) to an environment(endpoint) group

Add an environment(endpoint) to an environment(endpoint) group **Access policy**: administrator

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

$Id = 56 # Int32 | EndpointGroup identifier
$EndpointId = 56 # Int32 | Environment(Endpoint) identifier

# Add an environment(endpoint) to an environment(endpoint) group
try {
    $Result = Stop-pointGroupAddEndpoint -Id $Id -EndpointId $EndpointId
} catch {
    Write-Host ("Exception occurred when calling Stop-pointGroupAddEndpoint: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EndpointGroup identifier | 
 **EndpointId** | **Int32**| Environment(Endpoint) identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointGroupDelete"></a>
# **Stop-pointGroupDelete**
> void Stop-pointGroupDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Remove an environment(endpoint) group

Remove an environment(endpoint) group. **Access policy**: administrator

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

$Id = 56 # Int32 | EndpointGroup identifier

# Remove an environment(endpoint) group
try {
    $Result = Stop-pointGroupDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Stop-pointGroupDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EndpointGroup identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointGroupDeleteEndpoint"></a>
# **Stop-pointGroupDeleteEndpoint**
> void Stop-pointGroupDeleteEndpoint<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>

Removes environment(endpoint) from an environment(endpoint) group

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

$Id = 56 # Int32 | EndpointGroup identifier
$EndpointId = 56 # Int32 | Environment(Endpoint) identifier

# Removes environment(endpoint) from an environment(endpoint) group
try {
    $Result = Stop-pointGroupDeleteEndpoint -Id $Id -EndpointId $EndpointId
} catch {
    Write-Host ("Exception occurred when calling Stop-pointGroupDeleteEndpoint: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EndpointGroup identifier | 
 **EndpointId** | **Int32**| Environment(Endpoint) identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointGroupList"></a>
# **Stop-pointGroupList**
> EndpointgroupsEndpointGroupResponse[] Stop-pointGroupList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Boolean]><br>

List Environment(Endpoint) groups

List all environment(endpoint) groups based on the current user authorizations. Will return all environment(endpoint) groups if using an administrator account otherwise it will only return authorized environment(endpoint) groups. **Access policy**: restricted

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

$Size = $true # Boolean | If true, each environment(endpoint) group will include the number of environments(endpoints) associated to it (optional)

# List Environment(Endpoint) groups
try {
    $Result = Stop-pointGroupList -Size $Size
} catch {
    Write-Host ("Exception occurred when calling Stop-pointGroupList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Size** | **Boolean**| If true, each environment(endpoint) group will include the number of environments(endpoints) associated to it | [optional] 

### Return type

[**EndpointgroupsEndpointGroupResponse[]**](EndpointgroupsEndpointGroupResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointGroupUpdate"></a>
# **Stop-pointGroupUpdate**
> PortainerEndpointGroup Stop-pointGroupUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update an environment(endpoint) group

Update an environment(endpoint) group. **Access policy**: administrator

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

$Id = 56 # Int32 | EndpointGroup identifier
$PortainerAccessPolicy = Initialize-PortainerAccessPolicy -Namespaces "MyNamespaces" -RoleId 1
$EndpointgroupsEndpointGroupUpdatePayload = Initialize-EndpointgroupsEndpointGroupUpdatePayload -AssociatedEndpoints 0 -Description "description" -Name "my-environment-group" -TagIDs 0 -TeamAccessPolicies @{ key_example = $PortainerAccessPolicy } -UserAccessPolicies @{ key_example = $PortainerAccessPolicy } # EndpointgroupsEndpointGroupUpdatePayload | EndpointGroup details

# Update an environment(endpoint) group
try {
    $Result = Stop-pointGroupUpdate -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Stop-pointGroupUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EndpointGroup identifier | 
 **Body** | [**EndpointgroupsEndpointGroupUpdatePayload**](EndpointgroupsEndpointGroupUpdatePayload.md)| EndpointGroup details | 

### Return type

[**PortainerEndpointGroup**](PortainerEndpointGroup.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointGroupsIdGet"></a>
# **Stop-pointGroupsIdGet**
> EndpointgroupsDecoratedEndpointGroup Stop-pointGroupsIdGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Inspect an Environment(Endpoint) group

Retrieve details abont an environment(endpoint) group. **Access policy**: administrator

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

$Id = 56 # Int32 | Environment(Endpoint) group identifier

# Inspect an Environment(Endpoint) group
try {
    $Result = Stop-pointGroupsIdGet -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Stop-pointGroupsIdGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) group identifier | 

### Return type

[**EndpointgroupsDecoratedEndpointGroup**](EndpointgroupsDecoratedEndpointGroup.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointGroupsPost"></a>
# **Stop-pointGroupsPost**
> PortainerEndpointGroup Stop-pointGroupsPost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Create an Environment(Endpoint) Group

Create a new environment(endpoint) group. **Access policy**: administrator

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

$EndpointgroupsEndpointGroupCreatePayload = Initialize-EndpointgroupsEndpointGroupCreatePayload -AssociatedEndpoints 0 -Description "description" -Name "my-Environment-group" -TagIDs 0 # EndpointgroupsEndpointGroupCreatePayload | Environment(Endpoint) Group details

# Create an Environment(Endpoint) Group
try {
    $Result = Stop-pointGroupsPost -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Stop-pointGroupsPost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**EndpointgroupsEndpointGroupCreatePayload**](EndpointgroupsEndpointGroupCreatePayload.md)| Environment(Endpoint) Group details | 

### Return type

[**PortainerEndpointGroup**](PortainerEndpointGroup.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

