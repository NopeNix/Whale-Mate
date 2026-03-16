# PSOpenAPITools.PSOpenAPITools\Api.RegistriesApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-EcrDeleteRepository**](RegistriesApi.md#Invoke-EcrDeleteRepository) | **DELETE** /registries/{id}/ecr/repositories/{repositoryName} | Delete ECR repository
[**Invoke-EcrDeleteTags**](RegistriesApi.md#Invoke-EcrDeleteTags) | **DELETE** /registries/{id}/ecr/repositories/{repositoryName}/tags | Delete tags
[**Invoke-RegistryConfigure**](RegistriesApi.md#Invoke-RegistryConfigure) | **POST** /registries/{id}/configure | Configures a registry
[**Invoke-RegistryCreate**](RegistriesApi.md#Invoke-RegistryCreate) | **POST** /registries | Create a new registry
[**Invoke-RegistryDelete**](RegistriesApi.md#Invoke-RegistryDelete) | **DELETE** /registries/{id} | Remove a registry
[**Invoke-RegistryInspect**](RegistriesApi.md#Invoke-RegistryInspect) | **GET** /registries/{id} | Inspect a registry
[**Invoke-RegistryList**](RegistriesApi.md#Invoke-RegistryList) | **GET** /registries | List Registries
[**Invoke-RegistryPing**](RegistriesApi.md#Invoke-RegistryPing) | **POST** /registries/ping | Test registry connection
[**Invoke-RegistryUpdate**](RegistriesApi.md#Invoke-RegistryUpdate) | **PUT** /registries/{id} | Update a registry
[**Invoke-RepositoryTagsDelete**](RegistriesApi.md#Invoke-RepositoryTagsDelete) | **DELETE** /registries/{id}/repositories/{repositoryName}/tags | Delete repository tags


<a id="Invoke-EcrDeleteRepository"></a>
# **Invoke-EcrDeleteRepository**
> void Invoke-EcrDeleteRepository<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RepositoryName] <String><br>

Delete ECR repository

Delete ECR repository. **Access policy**: restricted

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$Id = 56 # Int32 | Registry identifier
$RepositoryName = "MyRepositoryName" # String | Repository name

# Delete ECR repository
try {
    $Result = Invoke-EcrDeleteRepository -Id $Id -RepositoryName $RepositoryName
} catch {
    Write-Host ("Exception occurred when calling Invoke-EcrDeleteRepository: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Registry identifier | 
 **RepositoryName** | **String**| Repository name | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EcrDeleteTags"></a>
# **Invoke-EcrDeleteTags**
> void Invoke-EcrDeleteTags<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RepositoryName] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Delete tags

Delete tags for a given ECR repository **Access policy**: restricted

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$Id = 56 # Int32 | Registry identifier
$RepositoryName = 56 # Int32 | Repository name
$RegistriesDeleteTagsPayload = Initialize-RegistriesDeleteTagsPayload -Tags "MyTags" # RegistriesDeleteTagsPayload | Tag Array

# Delete tags
try {
    $Result = Invoke-EcrDeleteTags -Id $Id -RepositoryName $RepositoryName -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-EcrDeleteTags: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Registry identifier | 
 **RepositoryName** | **Int32**| Repository name | 
 **Body** | [**RegistriesDeleteTagsPayload**](RegistriesDeleteTagsPayload.md)| Tag Array | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-RegistryConfigure"></a>
# **Invoke-RegistryConfigure**
> void Invoke-RegistryConfigure<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Configures a registry

Configures a registry. **Access policy**: restricted

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

$Id = 56 # Int32 | Registry identifier
$RegistriesRegistryConfigurePayload = Initialize-RegistriesRegistryConfigurePayload -Authentication $false -Password "registry_password" -Region "MyRegion" -TLS $true -TLSCACertFile 0 -TLSCertFile 0 -TLSKeyFile 0 -TLSSkipVerify $false -Username "registry_user" # RegistriesRegistryConfigurePayload | Registry configuration

# Configures a registry
try {
    $Result = Invoke-RegistryConfigure -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-RegistryConfigure: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Registry identifier | 
 **Body** | [**RegistriesRegistryConfigurePayload**](RegistriesRegistryConfigurePayload.md)| Registry configuration | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-RegistryCreate"></a>
# **Invoke-RegistryCreate**
> PortainereeRegistry Invoke-RegistryCreate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Create a new registry

Create a new registry. **Access policy**: restricted

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

$PortainerEcrData = Initialize-PortainerEcrData -Region "ap-southeast-2"
$PortainereeGithubRegistryData = Initialize-PortainereeGithubRegistryData -OrganisationName "MyOrganisationName" -UseOrganisation $false
$PortainerGitlabRegistryData = Initialize-PortainerGitlabRegistryData -InstanceURL "MyInstanceURL" -ProjectId 0 -ProjectPath "MyProjectPath"
$PortainerQuayRegistryData = Initialize-PortainerQuayRegistryData -OrganisationName "MyOrganisationName" -UseOrganisation $false
$RegistriesRegistryCreatePayload = Initialize-RegistriesRegistryCreatePayload -Authentication $false -BaseURL "registry.mydomain.tld:2375" -Ecr $PortainerEcrData -Github $PortainereeGithubRegistryData -Gitlab $PortainerGitlabRegistryData -Name "my-registry" -Password "registry_password" -Quay $PortainerQuayRegistryData -TLS $true -Type "0" -URL "registry.mydomain.tld:2375/feed" -Username "registry_user" # RegistriesRegistryCreatePayload | Registry details

# Create a new registry
try {
    $Result = Invoke-RegistryCreate -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-RegistryCreate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**RegistriesRegistryCreatePayload**](RegistriesRegistryCreatePayload.md)| Registry details | 

### Return type

[**PortainereeRegistry**](PortainereeRegistry.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-RegistryDelete"></a>
# **Invoke-RegistryDelete**
> void Invoke-RegistryDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Remove a registry

Remove a registry **Access policy**: restricted

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

$Id = 56 # Int32 | Registry identifier

# Remove a registry
try {
    $Result = Invoke-RegistryDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-RegistryDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Registry identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-RegistryInspect"></a>
# **Invoke-RegistryInspect**
> PortainereeRegistry Invoke-RegistryInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <System.Nullable[Int32]><br>

Inspect a registry

Retrieve details about a registry. If endpointId is provided, applies policy overrides for that environment. **Access policy**: restricted

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

$Id = 56 # Int32 | Registry identifier
$EndpointId = 56 # Int32 | Environment identifier (applies policy overrides if provided) (optional)

# Inspect a registry
try {
    $Result = Invoke-RegistryInspect -Id $Id -EndpointId $EndpointId
} catch {
    Write-Host ("Exception occurred when calling Invoke-RegistryInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Registry identifier | 
 **EndpointId** | **Int32**| Environment identifier (applies policy overrides if provided) | [optional] 

### Return type

[**PortainereeRegistry**](PortainereeRegistry.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-RegistryList"></a>
# **Invoke-RegistryList**
> PortainereeRegistry[] Invoke-RegistryList<br>

List Registries

List all registries. Administrators and edge-admins receive the full registry record (minus passwords). All other authenticated users receive a scrubbed record containing only ID, Name, and Type. **Access policy**: authenticated

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


# List Registries
try {
    $Result = Invoke-RegistryList
} catch {
    Write-Host ("Exception occurred when calling Invoke-RegistryList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PortainereeRegistry[]**](PortainereeRegistry.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-RegistryPing"></a>
# **Invoke-RegistryPing**
> RegistriesRegistryPingResponse Invoke-RegistryPing<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Test registry connection

Test connection to a registry with provided credentials **Access policy**: authenticated

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

$RegistriesRegistryPingPayload = Initialize-RegistriesRegistryPingPayload -Password "registry_password" -TLS $true -Type "0" -URL "registry-1.docker.io" -Username "registry_user" # RegistriesRegistryPingPayload | Registry credentials to test

# Test registry connection
try {
    $Result = Invoke-RegistryPing -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-RegistryPing: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**RegistriesRegistryPingPayload**](RegistriesRegistryPingPayload.md)| Registry credentials to test | 

### Return type

[**RegistriesRegistryPingResponse**](RegistriesRegistryPingResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-RegistryUpdate"></a>
# **Invoke-RegistryUpdate**
> PortainereeRegistry Invoke-RegistryUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update a registry

Update a registry **Access policy**: restricted

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

$Id = 56 # Int32 | Registry identifier
$PortainerEcrData = Initialize-PortainerEcrData -Region "ap-southeast-2"
$PortainereeGithubRegistryData = Initialize-PortainereeGithubRegistryData -OrganisationName "MyOrganisationName" -UseOrganisation $false
$PortainerQuayRegistryData = Initialize-PortainerQuayRegistryData -OrganisationName "MyOrganisationName" -UseOrganisation $false

$PortainerAccessPolicy = Initialize-PortainerAccessPolicy -Namespaces "MyNamespaces" -RoleId 1
$PortainerRegistryAccessPolicies = Initialize-PortainerRegistryAccessPolicies -Namespaces "MyNamespaces" -TeamAccessPolicies @{ key_example = $PortainerAccessPolicy } -UserAccessPolicies @{ key_example = $PortainerAccessPolicy }

$RegistriesRegistryUpdatePayload = Initialize-RegistriesRegistryUpdatePayload -Authentication $false -BaseURL "registry.mydomain.tld:2375" -Ecr $PortainerEcrData -Github $PortainereeGithubRegistryData -Name "my-registry" -Password "registry_password" -Quay $PortainerQuayRegistryData -RegistryAccesses @{ key_example = $PortainerRegistryAccessPolicies } -URL "registry.mydomain.tld:2375/feed" -Username "registry_user" # RegistriesRegistryUpdatePayload | Registry details

# Update a registry
try {
    $Result = Invoke-RegistryUpdate -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-RegistryUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Registry identifier | 
 **Body** | [**RegistriesRegistryUpdatePayload**](RegistriesRegistryUpdatePayload.md)| Registry details | 

### Return type

[**PortainereeRegistry**](PortainereeRegistry.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-RepositoryTagsDelete"></a>
# **Invoke-RepositoryTagsDelete**
> void Invoke-RepositoryTagsDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RepositoryName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Delete repository tags

Delete tags for a given repository **Access policy**: restricted

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

$Id = 56 # Int32 | Registry identifier
$RepositoryName = "MyRepositoryName" # String | Repository name
$RegistriesRepositoryTagsDeletePayload = Initialize-RegistriesRepositoryTagsDeletePayload -Tags "MyTags" # RegistriesRepositoryTagsDeletePayload | Tags to delete

# Delete repository tags
try {
    $Result = Invoke-RepositoryTagsDelete -Id $Id -RepositoryName $RepositoryName -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-RepositoryTagsDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Registry identifier | 
 **RepositoryName** | **String**| Repository name | 
 **Body** | [**RegistriesRepositoryTagsDeletePayload**](RegistriesRepositoryTagsDeletePayload.md)| Tags to delete | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

