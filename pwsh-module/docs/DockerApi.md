# PSOpenAPITools.PSOpenAPITools\Api.DockerApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ContainerImageStatus**](DockerApi.md#Invoke-ContainerImageStatus) | **GET** /docker/{environmentId}/containers/{containerId}/image_status | Fetch image status for container
[**Invoke-ContainersImageStatusClear**](DockerApi.md#Invoke-ContainersImageStatusClear) | **POST** /docker/{environmentId}/containers/image_status/clear | Clear container image status cache
[**Invoke-DockerContainerGpusInspect**](DockerApi.md#Invoke-DockerContainerGpusInspect) | **GET** /docker/{environmentId}/containers/{containerId}/gpus | Fetch container gpus data
[**Invoke-DockerDashboard**](DockerApi.md#Invoke-DockerDashboard) | **GET** /docker/{environmentId}/dashboard | Get counters for the dashboard
[**Invoke-DockerImagesList**](DockerApi.md#Invoke-DockerImagesList) | **GET** /docker/{environmentId}/images | Fetch images
[**Invoke-ServiceImageStatus**](DockerApi.md#Invoke-ServiceImageStatus) | **GET** /docker/{environmentId}/services/{serviceId}/image_status | Fetch image status for service
[**Invoke-ServiceImageStatusClear**](DockerApi.md#Invoke-ServiceImageStatusClear) | **POST** /docker/{environmentId}/services/image_status/clear | Clear service image status cache
[**Invoke-SnapshotContainerInspect**](DockerApi.md#Invoke-SnapshotContainerInspect) | **GET** /docker/{environmentId}/snapshot/containers/{containerId} | Fetch container from a snapshot
[**Invoke-SnapshotContainersList**](DockerApi.md#Invoke-SnapshotContainersList) | **GET** /docker/{environmentId}/snapshot/containers | Fetch containers list from a snapshot
[**Invoke-SnapshotInspect**](DockerApi.md#Invoke-SnapshotInspect) | **GET** /docker/{environmentId}/snapshot | Fetch latest snapshot of environment
[**Invoke-StacksImageStatusClear**](DockerApi.md#Invoke-StacksImageStatusClear) | **POST** /stacks/image_status/clear | Clear stack image status cache


<a id="Invoke-ContainerImageStatus"></a>
# **Invoke-ContainerImageStatus**
> ImagesStatusResponse Invoke-ContainerImageStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContainerId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Refresh] <System.Nullable[Boolean]><br>

Fetch image status for container

**Access policy**:

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$EnvironmentId = 56 # Int32 | Environment identifier
$ContainerId = 56 # Int32 | Container identifier
$Refresh = $true # Boolean | Refresh will force a refresh of the image status cache (optional)

# Fetch image status for container
try {
    $Result = Invoke-ContainerImageStatus -EnvironmentId $EnvironmentId -ContainerId $ContainerId -Refresh $Refresh
} catch {
    Write-Host ("Exception occurred when calling Invoke-ContainerImageStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Environment identifier | 
 **ContainerId** | **Int32**| Container identifier | 
 **Refresh** | **Boolean**| Refresh will force a refresh of the image status cache | [optional] 

### Return type

[**ImagesStatusResponse**](ImagesStatusResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ContainersImageStatusClear"></a>
# **Invoke-ContainersImageStatusClear**
> void Invoke-ContainersImageStatusClear<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <Int32><br>

Clear container image status cache

Clear the image status cache for all containers in the environment **Access policy**:

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$EnvironmentId = 56 # Int32 | Environment identifier

# Clear container image status cache
try {
    $Result = Invoke-ContainersImageStatusClear -EnvironmentId $EnvironmentId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ContainersImageStatusClear: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Environment identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DockerContainerGpusInspect"></a>
# **Invoke-DockerContainerGpusInspect**
> ContainersContainerGpusResponse Invoke-DockerContainerGpusInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContainerId] <Int32><br>

Fetch container gpus data

**Access policy**:

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$EnvironmentId = 56 # Int32 | Environment identifier
$ContainerId = 56 # Int32 | Container identifier

# Fetch container gpus data
try {
    $Result = Invoke-DockerContainerGpusInspect -EnvironmentId $EnvironmentId -ContainerId $ContainerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DockerContainerGpusInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Environment identifier | 
 **ContainerId** | **Int32**| Container identifier | 

### Return type

[**ContainersContainerGpusResponse**](ContainersContainerGpusResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DockerDashboard"></a>
# **Invoke-DockerDashboard**
> DockerDashboardResponse Invoke-DockerDashboard<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <Int32><br>

Get counters for the dashboard

**Access policy**: restricted

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$EnvironmentId = 56 # Int32 | Environment identifier

# Get counters for the dashboard
try {
    $Result = Invoke-DockerDashboard -EnvironmentId $EnvironmentId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DockerDashboard: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Environment identifier | 

### Return type

[**DockerDashboardResponse**](DockerDashboardResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DockerImagesList"></a>
# **Invoke-DockerImagesList**
> ImagesImageResponse[] Invoke-DockerImagesList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WithUsage] <System.Nullable[Boolean]><br>

Fetch images

**Access policy**:

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$EnvironmentId = 56 # Int32 | Environment identifier
$WithUsage = $true # Boolean | Include image usage information (optional)

# Fetch images
try {
    $Result = Invoke-DockerImagesList -EnvironmentId $EnvironmentId -WithUsage $WithUsage
} catch {
    Write-Host ("Exception occurred when calling Invoke-DockerImagesList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Environment identifier | 
 **WithUsage** | **Boolean**| Include image usage information | [optional] 

### Return type

[**ImagesImageResponse[]**](ImagesImageResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ServiceImageStatus"></a>
# **Invoke-ServiceImageStatus**
> ImagesStatusResponse Invoke-ServiceImageStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ServiceId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Refresh] <System.Nullable[Boolean]><br>

Fetch image status for service

**Access policy**:

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$EnvironmentId = 56 # Int32 | Environment identifier
$ServiceId = 56 # Int32 | Service identifier
$Refresh = $true # Boolean | Refresh will force a refresh of the image status cache (optional)

# Fetch image status for service
try {
    $Result = Invoke-ServiceImageStatus -EnvironmentId $EnvironmentId -ServiceId $ServiceId -Refresh $Refresh
} catch {
    Write-Host ("Exception occurred when calling Invoke-ServiceImageStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Environment identifier | 
 **ServiceId** | **Int32**| Service identifier | 
 **Refresh** | **Boolean**| Refresh will force a refresh of the image status cache | [optional] 

### Return type

[**ImagesStatusResponse**](ImagesStatusResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ServiceImageStatusClear"></a>
# **Invoke-ServiceImageStatusClear**
> void Invoke-ServiceImageStatusClear<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <Int32><br>

Clear service image status cache

Clear the image status cache for all services in the environment **Access policy**:

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$EnvironmentId = 56 # Int32 | Environment identifier

# Clear service image status cache
try {
    $Result = Invoke-ServiceImageStatusClear -EnvironmentId $EnvironmentId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ServiceImageStatusClear: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Environment identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-SnapshotContainerInspect"></a>
# **Invoke-SnapshotContainerInspect**
> PortainerDockerContainerSnapshot Invoke-SnapshotContainerInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContainerId] <Int32><br>

Fetch container from a snapshot

**Access policy**:

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$EnvironmentId = 56 # Int32 | Environment identifier
$ContainerId = 56 # Int32 | Container identifier

# Fetch container from a snapshot
try {
    $Result = Invoke-SnapshotContainerInspect -EnvironmentId $EnvironmentId -ContainerId $ContainerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-SnapshotContainerInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Environment identifier | 
 **ContainerId** | **Int32**| Container identifier | 

### Return type

[**PortainerDockerContainerSnapshot**](PortainerDockerContainerSnapshot.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-SnapshotContainersList"></a>
# **Invoke-SnapshotContainersList**
> PortainerDockerContainerSnapshot Invoke-SnapshotContainersList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EdgeStackId] <System.Nullable[Int32]><br>

Fetch containers list from a snapshot

**Access policy**:

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$EnvironmentId = 56 # Int32 | Environment identifier
$EdgeStackId = 56 # Int32 | Edge stack identifier, will return only containers for this edge stack (optional)

# Fetch containers list from a snapshot
try {
    $Result = Invoke-SnapshotContainersList -EnvironmentId $EnvironmentId -EdgeStackId $EdgeStackId
} catch {
    Write-Host ("Exception occurred when calling Invoke-SnapshotContainersList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Environment identifier | 
 **EdgeStackId** | **Int32**| Edge stack identifier, will return only containers for this edge stack | [optional] 

### Return type

[**PortainerDockerContainerSnapshot**](PortainerDockerContainerSnapshot.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-SnapshotInspect"></a>
# **Invoke-SnapshotInspect**
> SystemCollectionsHashtable Invoke-SnapshotInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <Int32><br>

Fetch latest snapshot of environment

**Access policy**:

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$EnvironmentId = 56 # Int32 | Environment identifier

# Fetch latest snapshot of environment
try {
    $Result = Invoke-SnapshotInspect -EnvironmentId $EnvironmentId
} catch {
    Write-Host ("Exception occurred when calling Invoke-SnapshotInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Environment identifier | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StacksImageStatusClear"></a>
# **Invoke-StacksImageStatusClear**
> void Invoke-StacksImageStatusClear<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SwarmId] <String><br>

Clear stack image status cache

Clear the image status cache for all stacks in the environment **Access policy**:

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$EnvironmentId = 56 # Int32 | Identifier of the environment(endpoint) that will be used to filter the stacks to clear the image status cache for (optional)
$SwarmId = "MySwarmId" # String | Identifier of the swarm cluster that will be used to filter the stacks to clear the image status cache for (optional)

# Clear stack image status cache
try {
    $Result = Invoke-StacksImageStatusClear -EnvironmentId $EnvironmentId -SwarmId $SwarmId
} catch {
    Write-Host ("Exception occurred when calling Invoke-StacksImageStatusClear: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Identifier of the environment(endpoint) that will be used to filter the stacks to clear the image status cache for | [optional] 
 **SwarmId** | **String**| Identifier of the swarm cluster that will be used to filter the stacks to clear the image status cache for | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

