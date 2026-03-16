# PSOpenAPITools.PSOpenAPITools\Api.UploadApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-UploadTLS**](UploadApi.md#Invoke-UploadTLS) | **POST** /upload/tls/{certificate} | Upload TLS files


<a id="Invoke-UploadTLS"></a>
# **Invoke-UploadTLS**
> void Invoke-UploadTLS<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Certificate] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Folder] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Upload TLS files

Use this environment(endpoint) to upload TLS files. **Access policy**: administrator

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

$Certificate = "ca" # String | TLS file type. Valid values are 'ca', 'cert' or 'key'.
$Folder = "MyFolder" # String | Folder where the TLS file will be stored. Will be created if not existing
$File =  # System.IO.FileInfo | The file to upload

# Upload TLS files
try {
    $Result = Invoke-UploadTLS -Certificate $Certificate -Folder $Folder -File $File
} catch {
    Write-Host ("Exception occurred when calling Invoke-UploadTLS: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Certificate** | **String**| TLS file type. Valid values are &#39;ca&#39;, &#39;cert&#39; or &#39;key&#39;. | 
 **Folder** | **String**| Folder where the TLS file will be stored. Will be created if not existing | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| The file to upload | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

