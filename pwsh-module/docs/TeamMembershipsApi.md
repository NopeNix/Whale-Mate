# PSOpenAPITools.PSOpenAPITools\Api.TeamMembershipsApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-TeamMembershipCreate**](TeamMembershipsApi.md#Invoke-TeamMembershipCreate) | **POST** /team_memberships | Create a new team membership
[**Invoke-TeamMembershipDelete**](TeamMembershipsApi.md#Invoke-TeamMembershipDelete) | **DELETE** /team_memberships/{id} | Remove a team membership
[**Invoke-TeamMembershipList**](TeamMembershipsApi.md#Invoke-TeamMembershipList) | **GET** /team_memberships | List team memberships
[**Invoke-TeamMembershipUpdate**](TeamMembershipsApi.md#Invoke-TeamMembershipUpdate) | **PUT** /team_memberships/{id} | Update a team membership
[**Invoke-TeamMemberships**](TeamMembershipsApi.md#Invoke-TeamMemberships) | **GET** /teams/{id}/memberships | List team memberships


<a id="Invoke-TeamMembershipCreate"></a>
# **Invoke-TeamMembershipCreate**
> PortainerTeamMembership Invoke-TeamMembershipCreate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Create a new team membership

Create a new team memberships. Access is only available to administrators leaders of the associated team. **Access policy**: administrator

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

$TeammembershipsTeamMembershipCreatePayload = Initialize-TeammembershipsTeamMembershipCreatePayload -Role 1 -TeamID 1 -UserID 1 # TeammembershipsTeamMembershipCreatePayload | Team membership details

# Create a new team membership
try {
    $Result = Invoke-TeamMembershipCreate -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-TeamMembershipCreate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**TeammembershipsTeamMembershipCreatePayload**](TeammembershipsTeamMembershipCreatePayload.md)| Team membership details | 

### Return type

[**PortainerTeamMembership**](PortainerTeamMembership.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-TeamMembershipDelete"></a>
# **Invoke-TeamMembershipDelete**
> void Invoke-TeamMembershipDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Remove a team membership

Remove a team membership. Access is only available to administrators leaders of the associated team. **Access policy**: administrator

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

$Id = 56 # Int32 | TeamMembership identifier

# Remove a team membership
try {
    $Result = Invoke-TeamMembershipDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-TeamMembershipDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| TeamMembership identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-TeamMembershipList"></a>
# **Invoke-TeamMembershipList**
> PortainerTeamMembership[] Invoke-TeamMembershipList<br>

List team memberships

List team memberships. Access is only available to administrators and team leaders. **Access policy**: administrator

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


# List team memberships
try {
    $Result = Invoke-TeamMembershipList
} catch {
    Write-Host ("Exception occurred when calling Invoke-TeamMembershipList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PortainerTeamMembership[]**](PortainerTeamMembership.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-TeamMembershipUpdate"></a>
# **Invoke-TeamMembershipUpdate**
> PortainerTeamMembership Invoke-TeamMembershipUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update a team membership

Update a team membership. Access is only available to administrators or leaders of the associated team. **Access policy**: administrator or leaders of the associated team

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

$Id = 56 # Int32 | Team membership identifier
$TeammembershipsTeamMembershipUpdatePayload = Initialize-TeammembershipsTeamMembershipUpdatePayload -Role 1 -TeamID 1 -UserID 1 # TeammembershipsTeamMembershipUpdatePayload | Team membership details

# Update a team membership
try {
    $Result = Invoke-TeamMembershipUpdate -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-TeamMembershipUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Team membership identifier | 
 **Body** | [**TeammembershipsTeamMembershipUpdatePayload**](TeammembershipsTeamMembershipUpdatePayload.md)| Team membership details | 

### Return type

[**PortainerTeamMembership**](PortainerTeamMembership.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-TeamMemberships"></a>
# **Invoke-TeamMemberships**
> PortainerTeamMembership[] Invoke-TeamMemberships<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

List team memberships

List team memberships. Access is only available to administrators and team leaders. **Access policy**: restricted

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

$Id = 56 # Int32 | Team Id

# List team memberships
try {
    $Result = Invoke-TeamMemberships -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-TeamMemberships: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Team Id | 

### Return type

[**PortainerTeamMembership[]**](PortainerTeamMembership.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

