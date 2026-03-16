# PSOpenAPITools.PSOpenAPITools\Api.ResourceControlsApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ResourceControlCreate**](ResourceControlsApi.md#Invoke-ResourceControlCreate) | **POST** /resource_controls | Create a new resource control
[**Invoke-ResourceControlDelete**](ResourceControlsApi.md#Invoke-ResourceControlDelete) | **DELETE** /resource_controls/{id} | Remove a resource control
[**Invoke-ResourceControlUpdate**](ResourceControlsApi.md#Invoke-ResourceControlUpdate) | **PUT** /resource_controls/{id} | Update a resource control


<a id="Invoke-ResourceControlCreate"></a>
# **Invoke-ResourceControlCreate**
> PortainerResourceControl Invoke-ResourceControlCreate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Create a new resource control

Create a new resource control to restrict access to a Docker resource. **Access policy**: administrator

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

$ResourcecontrolsResourceControlCreatePayload = Initialize-ResourcecontrolsResourceControlCreatePayload -AdministratorsOnly $true -Public $true -ResourceID "617c5f22bb9b023d6daab7cba43a57576f83492867bc767d1c59416b065e5f08" -SubResourceIDs "MySubResourceIDs" -Teams 0 -Type "0" -Users 0 # ResourcecontrolsResourceControlCreatePayload | Resource control details

# Create a new resource control
try {
    $Result = Invoke-ResourceControlCreate -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-ResourceControlCreate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**ResourcecontrolsResourceControlCreatePayload**](ResourcecontrolsResourceControlCreatePayload.md)| Resource control details | 

### Return type

[**PortainerResourceControl**](PortainerResourceControl.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ResourceControlDelete"></a>
# **Invoke-ResourceControlDelete**
> void Invoke-ResourceControlDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Remove a resource control

Remove a resource control. **Access policy**: administrator

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

$Id = 56 # Int32 | Resource control identifier

# Remove a resource control
try {
    $Result = Invoke-ResourceControlDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-ResourceControlDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Resource control identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ResourceControlUpdate"></a>
# **Invoke-ResourceControlUpdate**
> PortainerResourceControl Invoke-ResourceControlUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update a resource control

Update a resource control **Access policy**: authenticated

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

$Id = 56 # Int32 | Resource control identifier
$ResourcecontrolsResourceControlUpdatePayload = Initialize-ResourcecontrolsResourceControlUpdatePayload -AdministratorsOnly $true -Public $true -Teams 0 -Users 0 # ResourcecontrolsResourceControlUpdatePayload | Resource control details

# Update a resource control
try {
    $Result = Invoke-ResourceControlUpdate -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-ResourceControlUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Resource control identifier | 
 **Body** | [**ResourcecontrolsResourceControlUpdatePayload**](ResourcecontrolsResourceControlUpdatePayload.md)| Resource control details | 

### Return type

[**PortainerResourceControl**](PortainerResourceControl.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

