# PSOpenAPITools.PSOpenAPITools\Api.StatusApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-StatusInspect**](StatusApi.md#Invoke-StatusInspect) | **GET** /status | Check Portainer status


<a id="Invoke-StatusInspect"></a>
# **Invoke-StatusInspect**
> GithubComPortainerPortainerEeApiHttpHandlerSystemStatus Invoke-StatusInspect<br>

Check Portainer status

Deprecated: use the `/system/status` endpoint instead. Retrieve Portainer status **Access policy**: public

### Example
```powershell

# Check Portainer status
try {
    $Result = Invoke-StatusInspect
} catch {
    Write-Host ("Exception occurred when calling Invoke-StatusInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GithubComPortainerPortainerEeApiHttpHandlerSystemStatus**](GithubComPortainerPortainerEeApiHttpHandlerSystemStatus.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

