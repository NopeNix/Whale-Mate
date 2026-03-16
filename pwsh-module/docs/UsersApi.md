# PSOpenAPITools.PSOpenAPITools\Api.UsersApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-CurrentUserEndpointAuthorizationsInspect**](UsersApi.md#Invoke-CurrentUserEndpointAuthorizationsInspect) | **GET** /users/me/auth/{endpointID} | Inspect environment authorizations for the current user
[**Invoke-CurrentUserInspect**](UsersApi.md#Invoke-CurrentUserInspect) | **GET** /users/me | Inspect the current user
[**Use-rAdminCheck**](UsersApi.md#Use-rAdminCheck) | **GET** /users/admin/check | Check administrator account existence
[**Use-rAdminInit**](UsersApi.md#Use-rAdminInit) | **POST** /users/admin/init | Initialize administrator account
[**Use-rCreate**](UsersApi.md#Use-rCreate) | **POST** /users | Create a new user
[**Use-rCreateGitCredential**](UsersApi.md#Use-rCreateGitCredential) | **POST** /users/{id}/gitcredentials | Store a Git Credential for a user
[**Use-rDelete**](UsersApi.md#Use-rDelete) | **DELETE** /users/{id} | Remove a user
[**Use-rGenerateAPIKey**](UsersApi.md#Use-rGenerateAPIKey) | **POST** /users/{id}/tokens | Generate an API key for a user
[**Use-rGetAPIKeys**](UsersApi.md#Use-rGetAPIKeys) | **GET** /users/{id}/tokens | Get all API keys for a user
[**Use-rGetGitCredential**](UsersApi.md#Use-rGetGitCredential) | **GET** /users/{id}/gitcredentials/{credentialID} | Get the specific saved git credential for a user
[**Use-rGetGitCredentials**](UsersApi.md#Use-rGetGitCredentials) | **GET** /users/{id}/gitcredentials | Get all saved git credentials for a user
[**Use-rInspect**](UsersApi.md#Use-rInspect) | **GET** /users/{id} | Inspect a user
[**Use-rList**](UsersApi.md#Use-rList) | **GET** /users | List users
[**Use-rMembershipsInspect**](UsersApi.md#Use-rMembershipsInspect) | **GET** /users/{id}/memberships | Inspect a user memberships
[**Use-rNamespaces**](UsersApi.md#Use-rNamespaces) | **GET** /users/{id}/namespaces | Retrieves all k8s namespaces for an user
[**Use-rRemoveAPIKey**](UsersApi.md#Use-rRemoveAPIKey) | **DELETE** /users/{id}/tokens/{keyID} | Remove an api-key associated to a user
[**Use-rRemoveGitCredential**](UsersApi.md#Use-rRemoveGitCredential) | **DELETE** /users/{id}/gitcredentials/{credentialID} | Remove a git-credential associated to a user
[**Use-rUpdate**](UsersApi.md#Use-rUpdate) | **PUT** /users/{id} | Update a user
[**Use-rUpdateGitCredential**](UsersApi.md#Use-rUpdateGitCredential) | **PUT** /users/{id}/gitcredentials/{credentialID} | Update a git-credential associated to a user
[**Use-rUpdatePassword**](UsersApi.md#Use-rUpdatePassword) | **PUT** /users/{id}/passwd | Update password for a user


<a id="Invoke-CurrentUserEndpointAuthorizationsInspect"></a>
# **Invoke-CurrentUserEndpointAuthorizationsInspect**
> UsersCurrentUserEndpointAuthResponse Invoke-CurrentUserEndpointAuthorizationsInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointID] <Int32><br>

Inspect environment authorizations for the current user

Retrieve environment authorizations for the current  user. **Access policy**: authenticated

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

$EndpointID = 56 # Int32 | Environment identifier

# Inspect environment authorizations for the current user
try {
    $Result = Invoke-CurrentUserEndpointAuthorizationsInspect -EndpointID $EndpointID
} catch {
    Write-Host ("Exception occurred when calling Invoke-CurrentUserEndpointAuthorizationsInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EndpointID** | **Int32**| Environment identifier | 

### Return type

[**UsersCurrentUserEndpointAuthResponse**](UsersCurrentUserEndpointAuthResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CurrentUserInspect"></a>
# **Invoke-CurrentUserInspect**
> PortainereeUser Invoke-CurrentUserInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NoEndpointAuthorizations] <Boolean><br>

Inspect the current user

Retrieve details about the current user. User passwords are filtered out, and should never be accessible. **Access policy**: authenticated

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

$NoEndpointAuthorizations = $true # Boolean | Set to true to avoid including the environment authorizations in the response

# Inspect the current user
try {
    $Result = Invoke-CurrentUserInspect -NoEndpointAuthorizations $NoEndpointAuthorizations
} catch {
    Write-Host ("Exception occurred when calling Invoke-CurrentUserInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **NoEndpointAuthorizations** | **Boolean**| Set to true to avoid including the environment authorizations in the response | 

### Return type

[**PortainereeUser**](PortainereeUser.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Use-rAdminCheck"></a>
# **Use-rAdminCheck**
> void Use-rAdminCheck<br>

Check administrator account existence

Check if an administrator account exists in the database. **Access policy**: public

### Example
```powershell

# Check administrator account existence
try {
    $Result = Use-rAdminCheck
} catch {
    Write-Host ("Exception occurred when calling Use-rAdminCheck: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Use-rAdminInit"></a>
# **Use-rAdminInit**
> PortainereeUser Use-rAdminInit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Initialize administrator account

Initialize the 'admin' user account. **Access policy**: public

### Example
```powershell
$UsersAdminInitPayload = Initialize-UsersAdminInitPayload -Password "admin-password" -Username "admin" # UsersAdminInitPayload | User details

# Initialize administrator account
try {
    $Result = Use-rAdminInit -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Use-rAdminInit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**UsersAdminInitPayload**](UsersAdminInitPayload.md)| User details | 

### Return type

[**PortainereeUser**](PortainereeUser.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Use-rCreate"></a>
# **Use-rCreate**
> PortainereeUser Use-rCreate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Create a new user

Create a new Portainer user. Only administrators can create users. **Access policy**: restricted

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

$UsersUserCreatePayload = Initialize-UsersUserCreatePayload -Password "cg9Wgky3" -Role "0" -Username "bob" # UsersUserCreatePayload | User details

# Create a new user
try {
    $Result = Use-rCreate -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Use-rCreate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**UsersUserCreatePayload**](UsersUserCreatePayload.md)| User details | 

### Return type

[**PortainereeUser**](PortainereeUser.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Use-rCreateGitCredential"></a>
# **Use-rCreateGitCredential**
> UsersGitCredentialResponse Use-rCreateGitCredential<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Store a Git Credential for a user

Store a Git Credential for a user. Only the calling user can store a git credential for themselves. **Access policy**: restricted

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$Id = 56 # Int32 | User identifier
$UsersUserGitCredentialCreatePayload = Initialize-UsersUserGitCredentialCreatePayload -AuthorizationType "0" -Name "my-credential" -Password "MyPassword" -Username "MyUsername" # UsersUserGitCredentialCreatePayload | details

# Store a Git Credential for a user
try {
    $Result = Use-rCreateGitCredential -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Use-rCreateGitCredential: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| User identifier | 
 **Body** | [**UsersUserGitCredentialCreatePayload**](UsersUserGitCredentialCreatePayload.md)| details | 

### Return type

[**UsersGitCredentialResponse**](UsersGitCredentialResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Use-rDelete"></a>
# **Use-rDelete**
> void Use-rDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Remove a user

Remove a user. **Access policy**: administrator

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

$Id = 56 # Int32 | User identifier

# Remove a user
try {
    $Result = Use-rDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Use-rDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| User identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Use-rGenerateAPIKey"></a>
# **Use-rGenerateAPIKey**
> UsersAccessTokenResponse Use-rGenerateAPIKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Generate an API key for a user

Generates an API key for a user. Only the calling user can generate a token for themselves. Password is required only for internal authentication. **Access policy**: restricted

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$Id = 56 # Int32 | User identifier
$UsersUserAccessTokenCreatePayload = Initialize-UsersUserAccessTokenCreatePayload -Description "github-api-key" -Password "password" # UsersUserAccessTokenCreatePayload | details

# Generate an API key for a user
try {
    $Result = Use-rGenerateAPIKey -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Use-rGenerateAPIKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| User identifier | 
 **Body** | [**UsersUserAccessTokenCreatePayload**](UsersUserAccessTokenCreatePayload.md)| details | 

### Return type

[**UsersAccessTokenResponse**](UsersAccessTokenResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Use-rGetAPIKeys"></a>
# **Use-rGetAPIKeys**
> PortainerAPIKey[] Use-rGetAPIKeys<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get all API keys for a user

Gets all API keys for a user. Only the calling user or admin can retrieve api-keys. **Access policy**: authenticated

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

$Id = 56 # Int32 | User identifier

# Get all API keys for a user
try {
    $Result = Use-rGetAPIKeys -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Use-rGetAPIKeys: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| User identifier | 

### Return type

[**PortainerAPIKey[]**](PortainerAPIKey.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Use-rGetGitCredential"></a>
# **Use-rGetGitCredential**
> PortainereeGitCredential Use-rGetGitCredential<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CredentialID] <Int32><br>

Get the specific saved git credential for a user

Gets the specific saved git credential for a user. Only the calling user can retrieve git credential **Access policy**: authenticated

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

$Id = 56 # Int32 | User identifier
$CredentialID = 56 # Int32 | Git Credential identifier

# Get the specific saved git credential for a user
try {
    $Result = Use-rGetGitCredential -Id $Id -CredentialID $CredentialID
} catch {
    Write-Host ("Exception occurred when calling Use-rGetGitCredential: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| User identifier | 
 **CredentialID** | **Int32**| Git Credential identifier | 

### Return type

[**PortainereeGitCredential**](PortainereeGitCredential.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Use-rGetGitCredentials"></a>
# **Use-rGetGitCredentials**
> PortainereeGitCredential[] Use-rGetGitCredentials<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get all saved git credentials for a user

Gets all saved git credentials for a user. Only the calling user can retrieve git credentials **Access policy**: authenticated

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

$Id = 56 # Int32 | User identifier

# Get all saved git credentials for a user
try {
    $Result = Use-rGetGitCredentials -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Use-rGetGitCredentials: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| User identifier | 

### Return type

[**PortainereeGitCredential[]**](PortainereeGitCredential.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Use-rInspect"></a>
# **Use-rInspect**
> PortainereeUser Use-rInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Inspect a user

Retrieve details about a user. User passwords are filtered out, and should never be accessible. **Access policy**: authenticated

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

$Id = 56 # Int32 | User identifier

# Inspect a user
try {
    $Result = Use-rInspect -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Use-rInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| User identifier | 

### Return type

[**PortainereeUser**](PortainereeUser.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Use-rList"></a>
# **Use-rList**
> UsersUser[] Use-rList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <System.Nullable[Int32]><br>

List users

List Portainer users. Non-administrator users only receive non-administrator accounts. Passwords are never included in any response. **Access policy**: authenticated

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

$EnvironmentId = 56 # Int32 | Identifier of the environment(endpoint) that will be used to filter the authorized users (optional)

# List users
try {
    $Result = Use-rList -EnvironmentId $EnvironmentId
} catch {
    Write-Host ("Exception occurred when calling Use-rList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Identifier of the environment(endpoint) that will be used to filter the authorized users | [optional] 

### Return type

[**UsersUser[]**](UsersUser.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Use-rMembershipsInspect"></a>
# **Use-rMembershipsInspect**
> PortainerTeamMembership Use-rMembershipsInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Inspect a user memberships

Inspect a user memberships. **Access policy**: restricted

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

$Id = 56 # Int32 | User identifier

# Inspect a user memberships
try {
    $Result = Use-rMembershipsInspect -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Use-rMembershipsInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| User identifier | 

### Return type

[**PortainerTeamMembership**](PortainerTeamMembership.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Use-rNamespaces"></a>
# **Use-rNamespaces**
> System.Collections.Hashtable Use-rNamespaces<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Retrieves all k8s namespaces for an user

Retrieves user's role authorizations of all namespaces in all k8s environments(endpoints) **Access policy**: restricted

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

$Id = 56 # Int32 | User identifier

# Retrieves all k8s namespaces for an user
try {
    $Result = Use-rNamespaces -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Use-rNamespaces: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| User identifier | 

### Return type

[**System.Collections.Hashtable**](Map.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Use-rRemoveAPIKey"></a>
# **Use-rRemoveAPIKey**
> void Use-rRemoveAPIKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KeyID] <Int32><br>

Remove an api-key associated to a user

Remove an api-key associated to a user.. Only the calling user or admin can remove api-key. **Access policy**: authenticated

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

$Id = 56 # Int32 | User identifier
$KeyID = 56 # Int32 | Api Key identifier

# Remove an api-key associated to a user
try {
    $Result = Use-rRemoveAPIKey -Id $Id -KeyID $KeyID
} catch {
    Write-Host ("Exception occurred when calling Use-rRemoveAPIKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| User identifier | 
 **KeyID** | **Int32**| Api Key identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Use-rRemoveGitCredential"></a>
# **Use-rRemoveGitCredential**
> void Use-rRemoveGitCredential<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CredentialID] <Int32><br>

Remove a git-credential associated to a user

Remove a git-credential associated to a user.. Only the calling user can remove git-credential **Access policy**: authenticated

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

$Id = 56 # Int32 | User identifier
$CredentialID = 56 # Int32 | Git Credential identifier

# Remove a git-credential associated to a user
try {
    $Result = Use-rRemoveGitCredential -Id $Id -CredentialID $CredentialID
} catch {
    Write-Host ("Exception occurred when calling Use-rRemoveGitCredential: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| User identifier | 
 **CredentialID** | **Int32**| Git Credential identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Use-rUpdate"></a>
# **Use-rUpdate**
> PortainereeUser Use-rUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update a user

Update user details. A regular user account can only update his details. A regular user account cannot change their username or role. **Access policy**: authenticated

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

$Id = 56 # Int32 | User identifier
$UsersThemePayload = Initialize-UsersThemePayload -Color "dark" -SubtleUpgradeButton $false
$UsersUserUpdatePayload = Initialize-UsersUserUpdatePayload -NewPassword "asfj2emv" -Password "cg9Wgky3" -Role "0" -Theme $UsersThemePayload -UseCache $true -Username "bob" # UsersUserUpdatePayload | User details

# Update a user
try {
    $Result = Use-rUpdate -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Use-rUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| User identifier | 
 **Body** | [**UsersUserUpdatePayload**](UsersUserUpdatePayload.md)| User details | 

### Return type

[**PortainereeUser**](PortainereeUser.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Use-rUpdateGitCredential"></a>
# **Use-rUpdateGitCredential**
> void Use-rUpdateGitCredential<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CredentialID] <Int32><br>

Update a git-credential associated to a user

Update a git-credential associated to a user.. Only the calling user can update git-credential **Access policy**: authenticated

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

$Id = 56 # Int32 | User identifier
$CredentialID = 56 # Int32 | Git Credential identifier

# Update a git-credential associated to a user
try {
    $Result = Use-rUpdateGitCredential -Id $Id -CredentialID $CredentialID
} catch {
    Write-Host ("Exception occurred when calling Use-rUpdateGitCredential: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| User identifier | 
 **CredentialID** | **Int32**| Git Credential identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Use-rUpdatePassword"></a>
# **Use-rUpdatePassword**
> void Use-rUpdatePassword<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update password for a user

Update password for the specified user. **Access policy**: authenticated

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

$Id = 56 # Int32 | identifier
$UsersUserUpdatePasswordPayload = Initialize-UsersUserUpdatePasswordPayload -NewPassword "new_passwd" -Password "passwd" # UsersUserUpdatePasswordPayload | details

# Update password for a user
try {
    $Result = Use-rUpdatePassword -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Use-rUpdatePassword: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| identifier | 
 **Body** | [**UsersUserUpdatePasswordPayload**](UsersUserUpdatePasswordPayload.md)| details | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

