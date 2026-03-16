# PSOpenAPITools.PSOpenAPITools\Api.EdgeApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Stop-pointsEdgeGenerateKeyPost**](EdgeApi.md#Stop-pointsEdgeGenerateKeyPost) | **POST** /endpoints/edge/generate-key | Generate an EdgeKey
[**Stop-pointsIdEdgeJobsJobIDLogsPost**](EdgeApi.md#Stop-pointsIdEdgeJobsJobIDLogsPost) | **POST** /endpoints/{id}/edge/jobs/{jobID}/logs | Update the logs collected from an Edge Job
[**Stop-pointsIdEdgeStacksStackIdGet**](EdgeApi.md#Stop-pointsIdEdgeStacksStackIdGet) | **GET** /endpoints/{id}/edge/stacks/{stackId} | Inspect an Edge Stack for an Environment(Endpoint)


<a id="Stop-pointsEdgeGenerateKeyPost"></a>
# **Stop-pointsEdgeGenerateKeyPost**
> void Stop-pointsEdgeGenerateKeyPost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Generate an EdgeKey

Generates a general edge key **Access policy**: admin

### Example
```powershell
$EndpointedgeGenerateKeyResponse = Initialize-EndpointedgeGenerateKeyResponse -EdgeKey "MyEdgeKey" # EndpointedgeGenerateKeyResponse | Generate Key Info

# Generate an EdgeKey
try {
    $Result = Stop-pointsEdgeGenerateKeyPost -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Stop-pointsEdgeGenerateKeyPost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**EndpointedgeGenerateKeyResponse**](EndpointedgeGenerateKeyResponse.md)| Generate Key Info | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointsIdEdgeJobsJobIDLogsPost"></a>
# **Stop-pointsIdEdgeJobsJobIDLogsPost**
> void Stop-pointsIdEdgeJobsJobIDLogsPost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JobID] <Int32><br>

Update the logs collected from an Edge Job

Authorized only if the request is done by an Edge Environment(Endpoint)

### Example
```powershell
$Id = 56 # Int32 | Environment(Endpoint) Id
$JobID = 56 # Int32 | Job Id

# Update the logs collected from an Edge Job
try {
    $Result = Stop-pointsIdEdgeJobsJobIDLogsPost -Id $Id -JobID $JobID
} catch {
    Write-Host ("Exception occurred when calling Stop-pointsIdEdgeJobsJobIDLogsPost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) Id | 
 **JobID** | **Int32**| Job Id | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointsIdEdgeStacksStackIdGet"></a>
# **Stop-pointsIdEdgeStacksStackIdGet**
> EdgeStackPayload Stop-pointsIdEdgeStacksStackIdGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StackId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <System.Nullable[Int32]><br>

Inspect an Edge Stack for an Environment(Endpoint)

**Access policy**: public

### Example
```powershell
$Id = 56 # Int32 | Environment(Endpoint) Id
$StackId = 56 # Int32 | EdgeStack Id
$Version = 56 # Int32 | Stack file version maintained by Portainer (optional)

# Inspect an Edge Stack for an Environment(Endpoint)
try {
    $Result = Stop-pointsIdEdgeStacksStackIdGet -Id $Id -StackId $StackId -Version $Version
} catch {
    Write-Host ("Exception occurred when calling Stop-pointsIdEdgeStacksStackIdGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) Id | 
 **StackId** | **Int32**| EdgeStack Id | 
 **Version** | **Int32**| Stack file version maintained by Portainer | [optional] 

### Return type

[**EdgeStackPayload**](EdgeStackPayload.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

