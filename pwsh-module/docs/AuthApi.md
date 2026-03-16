# PSOpenAPITools.PSOpenAPITools\Api.AuthApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-AuthenticateUser**](AuthApi.md#Invoke-AuthenticateUser) | **POST** /auth | Authenticate
[**Invoke-Logout**](AuthApi.md#Invoke-Logout) | **POST** /auth/logout | Logout
[**Confirm-OAuth**](AuthApi.md#Confirm-OAuth) | **POST** /auth/oauth/validate | Authenticate with OAuth


<a id="Invoke-AuthenticateUser"></a>
# **Invoke-AuthenticateUser**
> AuthAuthenticateResponse Invoke-AuthenticateUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Authenticate

**Access policy**: public Use this environment(endpoint) to authenticate against Portainer using a username and password.

### Example
```powershell
$AuthAuthenticatePayload = Initialize-AuthAuthenticatePayload -ApiKey "1234567890" -Password "mypassword" -Username "admin" # AuthAuthenticatePayload | Credentials used for authentication

# Authenticate
try {
    $Result = Invoke-AuthenticateUser -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-AuthenticateUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**AuthAuthenticatePayload**](AuthAuthenticatePayload.md)| Credentials used for authentication | 

### Return type

[**AuthAuthenticateResponse**](AuthAuthenticateResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-Logout"></a>
# **Invoke-Logout**
> void Invoke-Logout<br>

Logout

**Access policy**: public

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


# Logout
try {
    $Result = Invoke-Logout
} catch {
    Write-Host ("Exception occurred when calling Invoke-Logout: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Confirm-OAuth"></a>
# **Confirm-OAuth**
> AuthAuthenticateResponse Confirm-OAuth<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Authenticate with OAuth

**Access policy**: public

### Example
```powershell
$AuthOauthPayload = Initialize-AuthOauthPayload -Code "MyCode" # AuthOauthPayload | OAuth Credentials used for authentication

# Authenticate with OAuth
try {
    $Result = Confirm-OAuth -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Confirm-OAuth: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**AuthOauthPayload**](AuthOauthPayload.md)| OAuth Credentials used for authentication | 

### Return type

[**AuthAuthenticateResponse**](AuthAuthenticateResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

