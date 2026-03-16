# PSOpenAPITools.PSOpenAPITools\Api.WebsocketApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-WebsocketAttachGet**](WebsocketApi.md#Invoke-WebsocketAttachGet) | **GET** /websocket/attach | Attach a websocket
[**Invoke-WebsocketExecGet**](WebsocketApi.md#Invoke-WebsocketExecGet) | **GET** /websocket/exec | Execute a websocket
[**Invoke-WebsocketKubernetesShellGet**](WebsocketApi.md#Invoke-WebsocketKubernetesShellGet) | **GET** /websocket/kubernetes-shell | Execute a websocket on kubectl shell pod
[**Invoke-WebsocketMicrok8sShellGet**](WebsocketApi.md#Invoke-WebsocketMicrok8sShellGet) | **GET** /websocket/microk8s-shell | Connect to a remote SSH Shell via a websocket
[**Invoke-WebsocketPodGet**](WebsocketApi.md#Invoke-WebsocketPodGet) | **GET** /websocket/pod | Execute a websocket on pod


<a id="Invoke-WebsocketAttachGet"></a>
# **Invoke-WebsocketAttachGet**
> void Invoke-WebsocketAttachGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Token] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NodeName] <String><br>

Attach a websocket

If the nodeName query parameter is present, the request will be proxied to the underlying agent environment(endpoint). If the nodeName query parameter is not specified, the request will be upgraded to the websocket protocol and an AttachStart operation HTTP request will be created and hijacked. **Access policy**: authenticated

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

$EndpointId = 56 # Int32 | environment(endpoint) ID of the environment(endpoint) where the resource is located
$Token = "MyToken" # String | JWT token used for authentication against this environment(endpoint)
$NodeName = "MyNodeName" # String | node name (optional)

# Attach a websocket
try {
    $Result = Invoke-WebsocketAttachGet -EndpointId $EndpointId -Token $Token -NodeName $NodeName
} catch {
    Write-Host ("Exception occurred when calling Invoke-WebsocketAttachGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EndpointId** | **Int32**| environment(endpoint) ID of the environment(endpoint) where the resource is located | 
 **Token** | **String**| JWT token used for authentication against this environment(endpoint) | 
 **NodeName** | **String**| node name | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-WebsocketExecGet"></a>
# **Invoke-WebsocketExecGet**
> void Invoke-WebsocketExecGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Token] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NodeName] <String><br>

Execute a websocket

If the nodeName query parameter is present, the request will be proxied to the underlying agent environment(endpoint). If the nodeName query parameter is not specified, the request will be upgraded to the websocket protocol and an ExecStart operation HTTP request will be created and hijacked.

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

$EndpointId = 56 # Int32 | environment(endpoint) ID of the environment(endpoint) where the resource is located
$Token = "MyToken" # String | JWT token used for authentication against this environment(endpoint)
$NodeName = "MyNodeName" # String | node name (optional)

# Execute a websocket
try {
    $Result = Invoke-WebsocketExecGet -EndpointId $EndpointId -Token $Token -NodeName $NodeName
} catch {
    Write-Host ("Exception occurred when calling Invoke-WebsocketExecGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EndpointId** | **Int32**| environment(endpoint) ID of the environment(endpoint) where the resource is located | 
 **Token** | **String**| JWT token used for authentication against this environment(endpoint) | 
 **NodeName** | **String**| node name | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-WebsocketKubernetesShellGet"></a>
# **Invoke-WebsocketKubernetesShellGet**
> void Invoke-WebsocketKubernetesShellGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Token] <String><br>

Execute a websocket on kubectl shell pod

The request will be upgraded to the websocket protocol. The request will proxy input from the client to the pod via long-lived websocket connection. **Access policy**: authenticated

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

$EndpointId = 56 # Int32 | environment(endpoint) ID of the environment(endpoint) where the resource is located
$Token = "MyToken" # String | JWT token used for authentication against this environment(endpoint)

# Execute a websocket on kubectl shell pod
try {
    $Result = Invoke-WebsocketKubernetesShellGet -EndpointId $EndpointId -Token $Token
} catch {
    Write-Host ("Exception occurred when calling Invoke-WebsocketKubernetesShellGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EndpointId** | **Int32**| environment(endpoint) ID of the environment(endpoint) where the resource is located | 
 **Token** | **String**| JWT token used for authentication against this environment(endpoint) | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-WebsocketMicrok8sShellGet"></a>
# **Invoke-WebsocketMicrok8sShellGet**
> void Invoke-WebsocketMicrok8sShellGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NodeIp] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Token] <String><br>

Connect to a remote SSH Shell via a websocket

When called, an SSH session to a microk8s cluster node will be created an ssh session will be created and hijacked. **Access policy**: authenticated

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

$EndpointId = 56 # Int32 | environment(endpoint) ID of the environment(endpoint) where the resource is located
$NodeIp = "MyNodeIp" # String | node ip address
$Token = "MyToken" # String | JWT token used for authentication against this environment(endpoint)

# Connect to a remote SSH Shell via a websocket
try {
    $Result = Invoke-WebsocketMicrok8sShellGet -EndpointId $EndpointId -NodeIp $NodeIp -Token $Token
} catch {
    Write-Host ("Exception occurred when calling Invoke-WebsocketMicrok8sShellGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EndpointId** | **Int32**| environment(endpoint) ID of the environment(endpoint) where the resource is located | 
 **NodeIp** | **String**| node ip address | 
 **Token** | **String**| JWT token used for authentication against this environment(endpoint) | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-WebsocketPodGet"></a>
# **Invoke-WebsocketPodGet**
> void Invoke-WebsocketPodGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PodName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContainerName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Command] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Token] <String><br>

Execute a websocket on pod

The request will be upgraded to the websocket protocol. **Access policy**: authenticated

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

$EndpointId = 56 # Int32 | environment(endpoint) ID of the environment(endpoint) where the resource is located
$Namespace = "MyNamespace" # String | namespace where the container is located
$PodName = "MyPodName" # String | name of the pod containing the container
$ContainerName = "MyContainerName" # String | name of the container
$Command = "MyCommand" # String | command to execute in the container
$Token = "MyToken" # String | JWT token used for authentication against this environment(endpoint)

# Execute a websocket on pod
try {
    $Result = Invoke-WebsocketPodGet -EndpointId $EndpointId -Namespace $Namespace -PodName $PodName -ContainerName $ContainerName -Command $Command -Token $Token
} catch {
    Write-Host ("Exception occurred when calling Invoke-WebsocketPodGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EndpointId** | **Int32**| environment(endpoint) ID of the environment(endpoint) where the resource is located | 
 **Namespace** | **String**| namespace where the container is located | 
 **PodName** | **String**| name of the pod containing the container | 
 **ContainerName** | **String**| name of the container | 
 **Command** | **String**| command to execute in the container | 
 **Token** | **String**| JWT token used for authentication against this environment(endpoint) | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

