# PSOpenAPITools.PSOpenAPITools\Api.TemplatesApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-TemplateFile**](TemplatesApi.md#Invoke-TemplateFile) | **POST** /templates/{id}/file | Get a template&#39;s file
[**Invoke-TemplateList**](TemplatesApi.md#Invoke-TemplateList) | **GET** /templates | List available templates


<a id="Invoke-TemplateFile"></a>
# **Invoke-TemplateFile**
> TemplatesFileResponse Invoke-TemplateFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get a template's file

Get a template's file **Access policy**: authenticated

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

$Id = 56 # Int32 | Template identifier

# Get a template's file
try {
    $Result = Invoke-TemplateFile -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-TemplateFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Template identifier | 

### Return type

[**TemplatesFileResponse**](TemplatesFileResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-TemplateList"></a>
# **Invoke-TemplateList**
> TemplatesListResponse Invoke-TemplateList<br>

List available templates

List available templates. **Access policy**: authenticated

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


# List available templates
try {
    $Result = Invoke-TemplateList
} catch {
    Write-Host ("Exception occurred when calling Invoke-TemplateList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TemplatesListResponse**](TemplatesListResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

