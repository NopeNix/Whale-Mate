# PSOpenAPITools.PSOpenAPITools\Api.PoliciesApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-PolicyConflicts**](PoliciesApi.md#Invoke-PolicyConflicts) | **POST** /policies/conflicts | Get policy conflicts preview
[**Invoke-PolicyCreate**](PoliciesApi.md#Invoke-PolicyCreate) | **POST** /policies | Create a new policy
[**Invoke-PolicyDelete**](PoliciesApi.md#Invoke-PolicyDelete) | **DELETE** /policies/{id} | Delete a policy
[**Invoke-PolicyInspect**](PoliciesApi.md#Invoke-PolicyInspect) | **GET** /policies/{id} | Inspect a policy
[**Invoke-PolicyList**](PoliciesApi.md#Invoke-PolicyList) | **GET** /policies | List policies
[**Invoke-PolicyMetadata**](PoliciesApi.md#Invoke-PolicyMetadata) | **GET** /policies/metadata | Get policy metadata
[**Invoke-PolicyTemplateInspect**](PoliciesApi.md#Invoke-PolicyTemplateInspect) | **GET** /policies/templates/{id} | Inspect a policy template
[**Invoke-PolicyTemplateList**](PoliciesApi.md#Invoke-PolicyTemplateList) | **GET** /policies/templates | List policy templates
[**Invoke-PolicyUpdate**](PoliciesApi.md#Invoke-PolicyUpdate) | **PUT** /policies/{id} | Update a policy


<a id="Invoke-PolicyConflicts"></a>
# **Invoke-PolicyConflicts**
> PoliciesPolicyConflictsResponse Invoke-PolicyConflicts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <SystemCollectionsHashtable><br>

Get policy conflicts preview

Returns detailed information about what will be affected when creating or updating a policy with specific environment groups. **Access policy**: administrator

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

$Body = @{ key_example = ... } # SystemCollectionsHashtable | Conflict check details

# Get policy conflicts preview
try {
    $Result = Invoke-PolicyConflicts -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-PolicyConflicts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | **SystemCollectionsHashtable**| Conflict check details | 

### Return type

[**PoliciesPolicyConflictsResponse**](PoliciesPolicyConflictsResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PolicyCreate"></a>
# **Invoke-PolicyCreate**
> PoliciesPolicy Invoke-PolicyCreate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <SystemCollectionsHashtable><br>

Create a new policy

Create a new policy. **Access policy**: administrator

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

$Body = @{ key_example = ... } # SystemCollectionsHashtable | Policy details

# Create a new policy
try {
    $Result = Invoke-PolicyCreate -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-PolicyCreate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | **SystemCollectionsHashtable**| Policy details | 

### Return type

[**PoliciesPolicy**](PoliciesPolicy.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PolicyDelete"></a>
# **Invoke-PolicyDelete**
> void Invoke-PolicyDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Delete a policy

Delete a policy. **Access policy**: administrator

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

$Id = 56 # Int32 | Policy identifier

# Delete a policy
try {
    $Result = Invoke-PolicyDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-PolicyDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Policy identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PolicyInspect"></a>
# **Invoke-PolicyInspect**
> PoliciesPolicy Invoke-PolicyInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Inspect a policy

Retrieve details about a policy. **Access policy**: authenticated

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

$Id = 56 # Int32 | Policy identifier

# Inspect a policy
try {
    $Result = Invoke-PolicyInspect -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-PolicyInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Policy identifier | 

### Return type

[**PoliciesPolicy**](PoliciesPolicy.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PolicyList"></a>
# **Invoke-PolicyList**
> PoliciesPolicyListResponse Invoke-PolicyList<br>

List policies

List all policies in the bucket. **Access policy**: administrator

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


# List policies
try {
    $Result = Invoke-PolicyList
} catch {
    Write-Host ("Exception occurred when calling Invoke-PolicyList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PoliciesPolicyListResponse**](PoliciesPolicyListResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PolicyMetadata"></a>
# **Invoke-PolicyMetadata**
> PoliciesPolicyMetadataResponse Invoke-PolicyMetadata<br>

Get policy metadata

Retrieve policy metadata including minimum agent versions for each policy type. **Access policy**: administrator

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


# Get policy metadata
try {
    $Result = Invoke-PolicyMetadata
} catch {
    Write-Host ("Exception occurred when calling Invoke-PolicyMetadata: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PoliciesPolicyMetadataResponse**](PoliciesPolicyMetadataResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PolicyTemplateInspect"></a>
# **Invoke-PolicyTemplateInspect**
> PoliciesPolicyTemplate Invoke-PolicyTemplateInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Inspect a policy template

Retrieve a specific policy template by ID. **Access policy**: administrator

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

$Id = "MyId" # String | Template ID

# Inspect a policy template
try {
    $Result = Invoke-PolicyTemplateInspect -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-PolicyTemplateInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Template ID | 

### Return type

[**PoliciesPolicyTemplate**](PoliciesPolicyTemplate.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PolicyTemplateList"></a>
# **Invoke-PolicyTemplateList**
> PoliciesTemplateListResponse Invoke-PolicyTemplateList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Category] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>

List policy templates

List all built-in policy templates. Templates can be filtered by category or type. **Access policy**: administrator

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

$Category = "MyCategory" # String | Filter by category (rbac, security, setup, registry) (optional)
$Type = "MyType" # String | Filter by policy type (e.g., security-k8s, security-docker) (optional)

# List policy templates
try {
    $Result = Invoke-PolicyTemplateList -Category $Category -Type $Type
} catch {
    Write-Host ("Exception occurred when calling Invoke-PolicyTemplateList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Category** | **String**| Filter by category (rbac, security, setup, registry) | [optional] 
 **Type** | **String**| Filter by policy type (e.g., security-k8s, security-docker) | [optional] 

### Return type

[**PoliciesTemplateListResponse**](PoliciesTemplateListResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PolicyUpdate"></a>
# **Invoke-PolicyUpdate**
> PoliciesPolicy Invoke-PolicyUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update a policy

Update an existing policy. **Access policy**: administrator

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

$Id = 56 # Int32 | Policy identifier
$PoliciesPolicyUpdatePayload = Initialize-PoliciesPolicyUpdatePayload -AllowOverride $false -VarData @{ key_example =  } -EnvironmentGroups 0 -EnvironmentType "kubernetes" -Name "Updated Development Policy" -Type "rbac-k8s" # PoliciesPolicyUpdatePayload | Policy details

# Update a policy
try {
    $Result = Invoke-PolicyUpdate -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-PolicyUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Policy identifier | 
 **Body** | [**PoliciesPolicyUpdatePayload**](PoliciesPolicyUpdatePayload.md)| Policy details | 

### Return type

[**PoliciesPolicy**](PoliciesPolicy.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

