# PSOpenAPITools.PSOpenAPITools\Api.WebhooksApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-WebhooksGet**](WebhooksApi.md#Invoke-WebhooksGet) | **GET** /webhooks | List webhooks
[**Invoke-WebhooksIdDelete**](WebhooksApi.md#Invoke-WebhooksIdDelete) | **DELETE** /webhooks/{id} | Delete a webhook
[**Invoke-WebhooksIdPost**](WebhooksApi.md#Invoke-WebhooksIdPost) | **POST** /webhooks/{id} | Execute a webhook
[**Invoke-WebhooksIdPut**](WebhooksApi.md#Invoke-WebhooksIdPut) | **PUT** /webhooks/{id} | Update a webhook
[**Invoke-WebhooksIdReassignPut**](WebhooksApi.md#Invoke-WebhooksIdReassignPut) | **PUT** /webhooks/{id}/reassign | Reassign a webhook to another resource
[**Invoke-WebhooksPost**](WebhooksApi.md#Invoke-WebhooksPost) | **POST** /webhooks | Create a webhook


<a id="Invoke-WebhooksGet"></a>
# **Invoke-WebhooksGet**
> PortainerWebhook[] Invoke-WebhooksGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List webhooks

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

$Filters = "MyFilters" # String | Filters (json-string) (optional)

# List webhooks
try {
    $Result = Invoke-WebhooksGet -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Invoke-WebhooksGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filters** | **String**| Filters (json-string) | [optional] 

### Return type

[**PortainerWebhook[]**](PortainerWebhook.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-WebhooksIdDelete"></a>
# **Invoke-WebhooksIdDelete**
> void Invoke-WebhooksIdDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Delete a webhook

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

$Id = 56 # Int32 | Webhook id

# Delete a webhook
try {
    $Result = Invoke-WebhooksIdDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-WebhooksIdDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Webhook id | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-WebhooksIdPost"></a>
# **Invoke-WebhooksIdPost**
> void Invoke-WebhooksIdPost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Execute a webhook

Acts on a passed in token UUID to restart the docker service **Access policy**: public

### Example
```powershell
$Id = "MyId" # String | Webhook token

# Execute a webhook
try {
    $Result = Invoke-WebhooksIdPost -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-WebhooksIdPost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Webhook token | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-WebhooksIdPut"></a>
# **Invoke-WebhooksIdPut**
> PortainerWebhook Invoke-WebhooksIdPut<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update a webhook

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

$Id = 56 # Int32 | Webhook id
$WebhooksWebhookUpdatePayload = Initialize-WebhooksWebhookUpdatePayload -RegistryID 0 # WebhooksWebhookUpdatePayload | Webhook data

# Update a webhook
try {
    $Result = Invoke-WebhooksIdPut -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-WebhooksIdPut: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Webhook id | 
 **Body** | [**WebhooksWebhookUpdatePayload**](WebhooksWebhookUpdatePayload.md)| Webhook data | 

### Return type

[**PortainerWebhook**](PortainerWebhook.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-WebhooksIdReassignPut"></a>
# **Invoke-WebhooksIdReassignPut**
> PortainerWebhook Invoke-WebhooksIdReassignPut<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Reassign a webhook to another resource

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

$Id = 56 # Int32 | Webhook id
$WebhooksWebhookReassignPayload = Initialize-WebhooksWebhookReassignPayload -ResourceID "MyResourceID" -WebhookType "0" # WebhooksWebhookReassignPayload | Webhook data

# Reassign a webhook to another resource
try {
    $Result = Invoke-WebhooksIdReassignPut -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-WebhooksIdReassignPut: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Webhook id | 
 **Body** | [**WebhooksWebhookReassignPayload**](WebhooksWebhookReassignPayload.md)| Webhook data | 

### Return type

[**PortainerWebhook**](PortainerWebhook.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-WebhooksPost"></a>
# **Invoke-WebhooksPost**
> PortainerWebhook Invoke-WebhooksPost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Create a webhook

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

$WebhooksWebhookCreatePayload = Initialize-WebhooksWebhookCreatePayload -EndpointID 0 -RegistryID 0 -ResourceID "MyResourceID" -WebhookType "0" # WebhooksWebhookCreatePayload | Webhook data

# Create a webhook
try {
    $Result = Invoke-WebhooksPost -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-WebhooksPost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**WebhooksWebhookCreatePayload**](WebhooksWebhookCreatePayload.md)| Webhook data | 

### Return type

[**PortainerWebhook**](PortainerWebhook.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

