# PSOpenAPITools.PSOpenAPITools\Api.EndpointsApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-AgentVersions**](EndpointsApi.md#Invoke-AgentVersions) | **GET** /endpoints/agent_versions | List agent versions
[**Stop-pointAssociationDelete**](EndpointsApi.md#Stop-pointAssociationDelete) | **PUT** /endpoints/{id}/association | De-association an edge environment(endpoint)
[**Stop-pointCreate**](EndpointsApi.md#Stop-pointCreate) | **POST** /endpoints | Create a new environment(endpoint)
[**Stop-pointCreateGlobalKey**](EndpointsApi.md#Stop-pointCreateGlobalKey) | **POST** /endpoints/global-key | Create or retrieve the endpoint for an EdgeID
[**Stop-pointDelete**](EndpointsApi.md#Stop-pointDelete) | **DELETE** /endpoints/{id} | Remove an environment
[**Stop-pointDeleteBatch**](EndpointsApi.md#Stop-pointDeleteBatch) | **POST** /endpoints/delete | Remove multiple environments
[**Stop-pointDeleteBatchDeprecated**](EndpointsApi.md#Stop-pointDeleteBatchDeprecated) | **DELETE** /endpoints | Remove multiple environments
[**Stop-pointDockerhubStatus**](EndpointsApi.md#Stop-pointDockerhubStatus) | **GET** /endpoints/{id}/dockerhub/{registryId} | fetch docker pull limits
[**Stop-pointEdgeAsync**](EndpointsApi.md#Stop-pointEdgeAsync) | **POST** /endpoints/edge/async | Get environment(endpoint) status
[**Stop-pointEdgeStatusInspect**](EndpointsApi.md#Stop-pointEdgeStatusInspect) | **GET** /endpoints/{id}/edge/status | Get environment(endpoint) status
[**Stop-pointForceUpdateService**](EndpointsApi.md#Stop-pointForceUpdateService) | **PUT** /endpoints/{id}/forceupdateservice | force update a docker service
[**Stop-pointGetCharts**](EndpointsApi.md#Stop-pointGetCharts) | **GET** /endpoints/{id}/edge/charts | Get environment(endpoint) charts to install
[**Stop-pointInspect**](EndpointsApi.md#Stop-pointInspect) | **GET** /endpoints/{id} | Inspect an environment(endpoint)
[**Stop-pointList**](EndpointsApi.md#Stop-pointList) | **GET** /endpoints | List environments(endpoints)
[**Stop-pointMTLSAgentCertificateError**](EndpointsApi.md#Stop-pointMTLSAgentCertificateError) | **GET** /endpoints/{id}/mtls_certificate_error | Get an agent(endpoint) mTLS certificate
[**Stop-pointMTLSCertificate**](EndpointsApi.md#Stop-pointMTLSCertificate) | **GET** /endpoints/{id}/mtls_certificate | Get an environment(endpoint) mTLS certificate
[**Stop-pointRegistriesList**](EndpointsApi.md#Stop-pointRegistriesList) | **GET** /endpoints/{id}/registries | List Registries on environment
[**Stop-pointRegistryAccess**](EndpointsApi.md#Stop-pointRegistryAccess) | **PUT** /endpoints/{id}/registries/{registryId} | update registry access for environment
[**Stop-pointSettingsUpdate**](EndpointsApi.md#Stop-pointSettingsUpdate) | **PUT** /endpoints/{id}/settings | Update settings for an environment(endpoint)
[**Stop-pointSnapshot**](EndpointsApi.md#Stop-pointSnapshot) | **POST** /endpoints/{id}/snapshot | Snapshots an environment(endpoint)
[**Stop-pointSnapshots**](EndpointsApi.md#Stop-pointSnapshots) | **POST** /endpoints/snapshot | Snapshot all environment(endpoint)
[**Stop-pointUpdate**](EndpointsApi.md#Stop-pointUpdate) | **PUT** /endpoints/{id} | Update an environment(endpoint)
[**Stop-pointUpdateChartStatuses**](EndpointsApi.md#Stop-pointUpdateChartStatuses) | **PUT** /endpoints/{id}/edge/charts/statuses | Update environment(endpoint) policy chart installation statuses
[**Stop-pointUpdateRelations**](EndpointsApi.md#Stop-pointUpdateRelations) | **PUT** /endpoints/relations | Update relations for a list of environments
[**Stop-pointsEdgeGenerateKeyPost**](EndpointsApi.md#Stop-pointsEdgeGenerateKeyPost) | **POST** /endpoints/edge/generate-key | Generate an EdgeKey
[**Stop-pointsIdDockerV2BrowsePutPost**](EndpointsApi.md#Stop-pointsIdDockerV2BrowsePutPost) | **POST** /endpoints/{id}/docker/v2/browse/put | Upload a file under a specific path on the file system of an environment (endpoint)
[**Stop-pointsIdEdgeJobsJobIDLogsPost**](EndpointsApi.md#Stop-pointsIdEdgeJobsJobIDLogsPost) | **POST** /endpoints/{id}/edge/jobs/{jobID}/logs | Update the logs collected from an Edge Job
[**Stop-pointsIdEdgeStacksStackIdGet**](EndpointsApi.md#Stop-pointsIdEdgeStacksStackIdGet) | **GET** /endpoints/{id}/edge/stacks/{stackId} | Inspect an Edge Stack for an Environment(Endpoint)
[**Move-spacesAccessUpdate**](EndpointsApi.md#Move-spacesAccessUpdate) | **PUT** /endpoints/{id}/pools/{rpn}/access | Update namespace access for a given namespace
[**Invoke-SnapshotContainerInspect**](EndpointsApi.md#Invoke-SnapshotContainerInspect) | **GET** /docker/{environmentId}/snapshot/containers/{containerId} | Fetch container from a snapshot
[**Invoke-SnapshotContainersList**](EndpointsApi.md#Invoke-SnapshotContainersList) | **GET** /docker/{environmentId}/snapshot/containers | Fetch containers list from a snapshot
[**Invoke-SnapshotInspect**](EndpointsApi.md#Invoke-SnapshotInspect) | **GET** /docker/{environmentId}/snapshot | Fetch latest snapshot of environment
[**Invoke-TrustEdgeEndpoints**](EndpointsApi.md#Invoke-TrustEdgeEndpoints) | **POST** /endpoints/edge/trust | Associate one or more Edge environments in the waiting room to environments


<a id="Invoke-AgentVersions"></a>
# **Invoke-AgentVersions**
> String[] Invoke-AgentVersions<br>

List agent versions

List all agent versions based on the current user authorizations and query parameters. **Access policy**: restricted

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


# List agent versions
try {
    $Result = Invoke-AgentVersions
} catch {
    Write-Host ("Exception occurred when calling Invoke-AgentVersions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String[]**

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointAssociationDelete"></a>
# **Stop-pointAssociationDelete**
> PortainereeEndpoint Stop-pointAssociationDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

De-association an edge environment(endpoint)

De-association an edge environment(endpoint). **Access policy**: administrator

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

$Id = 56 # Int32 | Environment(Endpoint) identifier

# De-association an edge environment(endpoint)
try {
    $Result = Stop-pointAssociationDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Stop-pointAssociationDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 

### Return type

[**PortainereeEndpoint**](PortainereeEndpoint.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointCreate"></a>
# **Stop-pointCreate**
> PortainereeEndpoint Stop-pointCreate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointCreationType] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContainerEngine] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-URL] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PublicURL] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupID] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TLS] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TLSSkipVerify] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TLSSkipClientVerify] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TLSCACertFile] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TLSCertFile] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TLSKeyFile] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AzureApplicationID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AzureTenantID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AzureAuthenticationKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TagIds] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EdgeCheckinInterval] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EdgeTunnelServerAddress] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EdgeAsyncMode] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Gpus] <String><br>

Create a new environment(endpoint)

Create a new environment(endpoint) that will be used to manage an environment(endpoint). **Access policy**: administrator

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

$Name = "MyName" # String | Name that will be used to identify this environment(endpoint) (example: my-environment)
$EndpointCreationType = 56 # Int32 | Environment(Endpoint) type. Value must be one of: 1 (Local Docker environment), 2 (Agent environment), 3 (Azure environment), 4 (Edge agent environment) or 5 (Local Kubernetes Environment)
$ContainerEngine = "MyContainerEngine" # String | Container engine used by the environment(endpoint). Value must be one of: 'docker' or 'podman' (optional)
$URL = "MyURL" # String | URL or IP address of a Docker host (example: docker.mydomain.tld:2375). Defaults to local if not specified (Linux: /var/run/docker.sock, Windows: //./pipe/docker_engine). Cannot be empty if EndpointCreationType is set to 4 (Edge agent environment) (optional)
$PublicURL = "MyPublicURL" # String | URL or IP address where exposed containers will be reachable. Defaults to URL if not specified (example: docker.mydomain.tld:2375) (optional)
$GroupID = 56 # Int32 | Environment(Endpoint) group identifier. If not specified will default to 1 (unassigned). (optional)
$TLS = $true # Boolean | Require TLS to connect against this environment(endpoint). Must be true if EndpointCreationType is set to 2 (Agent environment) (optional)
$TLSSkipVerify = $true # Boolean | Skip server verification when using TLS. Must be true if EndpointCreationType is set to 2 (Agent environment) (optional)
$TLSSkipClientVerify = $true # Boolean | Skip client verification when using TLS. Must be true if EndpointCreationType is set to 2 (Agent environment) (optional)
$TLSCACertFile =  # System.IO.FileInfo | TLS CA certificate file (optional)
$TLSCertFile =  # System.IO.FileInfo | TLS client certificate file (optional)
$TLSKeyFile =  # System.IO.FileInfo | TLS client key file (optional)
$AzureApplicationID = "MyAzureApplicationID" # String | Azure application ID. Required if environment(endpoint) type is set to 3 (optional)
$AzureTenantID = "MyAzureTenantID" # String | Azure tenant ID. Required if environment(endpoint) type is set to 3 (optional)
$AzureAuthenticationKey = "MyAzureAuthenticationKey" # String | Azure authentication key. Required if environment(endpoint) type is set to 3 (optional)
$TagIds = 0 # Int32[] | List of tag identifiers to which this environment(endpoint) is associated (optional)
$EdgeCheckinInterval = 56 # Int32 | The check in interval for edge agent (in seconds) (optional)
$EdgeTunnelServerAddress = "MyEdgeTunnelServerAddress" # String | URL or IP address that will be used to establish a reverse tunnel. Required when settings.EnableEdgeComputeFeatures is set to false or when settings.Edge.TunnelServerAddress is not set (optional)
$EdgeAsyncMode = $true # Boolean | Enable async mode for edge agent (optional)
$Gpus = "MyGpus" # String | List of GPUs - json stringified array of {name, value} structs (optional)

# Create a new environment(endpoint)
try {
    $Result = Stop-pointCreate -Name $Name -EndpointCreationType $EndpointCreationType -ContainerEngine $ContainerEngine -URL $URL -PublicURL $PublicURL -GroupID $GroupID -TLS $TLS -TLSSkipVerify $TLSSkipVerify -TLSSkipClientVerify $TLSSkipClientVerify -TLSCACertFile $TLSCACertFile -TLSCertFile $TLSCertFile -TLSKeyFile $TLSKeyFile -AzureApplicationID $AzureApplicationID -AzureTenantID $AzureTenantID -AzureAuthenticationKey $AzureAuthenticationKey -TagIds $TagIds -EdgeCheckinInterval $EdgeCheckinInterval -EdgeTunnelServerAddress $EdgeTunnelServerAddress -EdgeAsyncMode $EdgeAsyncMode -Gpus $Gpus
} catch {
    Write-Host ("Exception occurred when calling Stop-pointCreate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name that will be used to identify this environment(endpoint) (example: my-environment) | 
 **EndpointCreationType** | **Int32**| Environment(Endpoint) type. Value must be one of: 1 (Local Docker environment), 2 (Agent environment), 3 (Azure environment), 4 (Edge agent environment) or 5 (Local Kubernetes Environment) | 
 **ContainerEngine** | **String**| Container engine used by the environment(endpoint). Value must be one of: &#39;docker&#39; or &#39;podman&#39; | [optional] 
 **URL** | **String**| URL or IP address of a Docker host (example: docker.mydomain.tld:2375). Defaults to local if not specified (Linux: /var/run/docker.sock, Windows: //./pipe/docker_engine). Cannot be empty if EndpointCreationType is set to 4 (Edge agent environment) | [optional] 
 **PublicURL** | **String**| URL or IP address where exposed containers will be reachable. Defaults to URL if not specified (example: docker.mydomain.tld:2375) | [optional] 
 **GroupID** | **Int32**| Environment(Endpoint) group identifier. If not specified will default to 1 (unassigned). | [optional] 
 **TLS** | **Boolean**| Require TLS to connect against this environment(endpoint). Must be true if EndpointCreationType is set to 2 (Agent environment) | [optional] 
 **TLSSkipVerify** | **Boolean**| Skip server verification when using TLS. Must be true if EndpointCreationType is set to 2 (Agent environment) | [optional] 
 **TLSSkipClientVerify** | **Boolean**| Skip client verification when using TLS. Must be true if EndpointCreationType is set to 2 (Agent environment) | [optional] 
 **TLSCACertFile** | **System.IO.FileInfo****System.IO.FileInfo**| TLS CA certificate file | [optional] 
 **TLSCertFile** | **System.IO.FileInfo****System.IO.FileInfo**| TLS client certificate file | [optional] 
 **TLSKeyFile** | **System.IO.FileInfo****System.IO.FileInfo**| TLS client key file | [optional] 
 **AzureApplicationID** | **String**| Azure application ID. Required if environment(endpoint) type is set to 3 | [optional] 
 **AzureTenantID** | **String**| Azure tenant ID. Required if environment(endpoint) type is set to 3 | [optional] 
 **AzureAuthenticationKey** | **String**| Azure authentication key. Required if environment(endpoint) type is set to 3 | [optional] 
 **TagIds** | [**Int32[]**](Int32.md)| List of tag identifiers to which this environment(endpoint) is associated | [optional] 
 **EdgeCheckinInterval** | **Int32**| The check in interval for edge agent (in seconds) | [optional] 
 **EdgeTunnelServerAddress** | **String**| URL or IP address that will be used to establish a reverse tunnel. Required when settings.EnableEdgeComputeFeatures is set to false or when settings.Edge.TunnelServerAddress is not set | [optional] 
 **EdgeAsyncMode** | **Boolean**| Enable async mode for edge agent | [optional] 
 **Gpus** | **String**| List of GPUs - json stringified array of {name, value} structs | [optional] 

### Return type

[**PortainereeEndpoint**](PortainereeEndpoint.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointCreateGlobalKey"></a>
# **Stop-pointCreateGlobalKey**
> EndpointsEndpointCreateGlobalKeyResponse Stop-pointCreateGlobalKey<br>

Create or retrieve the endpoint for an EdgeID

### Example
```powershell

# Create or retrieve the endpoint for an EdgeID
try {
    $Result = Stop-pointCreateGlobalKey
} catch {
    Write-Host ("Exception occurred when calling Stop-pointCreateGlobalKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EndpointsEndpointCreateGlobalKeyResponse**](EndpointsEndpointCreateGlobalKeyResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointDelete"></a>
# **Stop-pointDelete**
> void Stop-pointDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Remove an environment

Remove the environment associated to the specified identifier and optionally clean-up associated resources. **Access policy**: Administrator only.

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

$Id = 56 # Int32 | Environment(Endpoint) identifier

# Remove an environment
try {
    $Result = Stop-pointDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Stop-pointDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointDeleteBatch"></a>
# **Stop-pointDeleteBatch**
> void Stop-pointDeleteBatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Remove multiple environments

Remove multiple environments and optionally clean-up associated resources. **Access policy**: Administrator only.

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

$EndpointsEndpointDeleteRequest = Initialize-EndpointsEndpointDeleteRequest -DeleteCluster $false -Id 0
$EndpointsEndpointDeleteBatchPayload = Initialize-EndpointsEndpointDeleteBatchPayload -Endpoints $EndpointsEndpointDeleteRequest # EndpointsEndpointDeleteBatchPayload | List of environments to delete, with optional deleteCluster flag to clean-up associated resources (cloud environments only)

# Remove multiple environments
try {
    $Result = Stop-pointDeleteBatch -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Stop-pointDeleteBatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**EndpointsEndpointDeleteBatchPayload**](EndpointsEndpointDeleteBatchPayload.md)| List of environments to delete, with optional deleteCluster flag to clean-up associated resources (cloud environments only) | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointDeleteBatchDeprecated"></a>
# **Stop-pointDeleteBatchDeprecated**
> void Stop-pointDeleteBatchDeprecated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Remove multiple environments

Deprecated: use the `POST` endpoint instead. Remove multiple environments and optionally clean-up associated resources. **Access policy**: Administrator only.

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

$EndpointsEndpointDeleteRequest = Initialize-EndpointsEndpointDeleteRequest -DeleteCluster $false -Id 0
$EndpointsEndpointDeleteBatchPayload = Initialize-EndpointsEndpointDeleteBatchPayload -Endpoints $EndpointsEndpointDeleteRequest # EndpointsEndpointDeleteBatchPayload | List of environments to delete, with optional deleteCluster flag to clean-up associated resources (cloud environments only)

# Remove multiple environments
try {
    $Result = Stop-pointDeleteBatchDeprecated -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Stop-pointDeleteBatchDeprecated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**EndpointsEndpointDeleteBatchPayload**](EndpointsEndpointDeleteBatchPayload.md)| List of environments to delete, with optional deleteCluster flag to clean-up associated resources (cloud environments only) | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointDockerhubStatus"></a>
# **Stop-pointDockerhubStatus**
> EndpointsDockerhubStatusResponse Stop-pointDockerhubStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RegistryId] <Int32><br>

fetch docker pull limits

get docker pull limits for a docker hub registry in the environment **Access policy**:

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

$Id = 56 # Int32 | endpoint ID
$RegistryId = 56 # Int32 | registry ID

# fetch docker pull limits
try {
    $Result = Stop-pointDockerhubStatus -Id $Id -RegistryId $RegistryId
} catch {
    Write-Host ("Exception occurred when calling Stop-pointDockerhubStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| endpoint ID | 
 **RegistryId** | **Int32**| registry ID | 

### Return type

[**EndpointsDockerhubStatusResponse**](EndpointsDockerhubStatusResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointEdgeAsync"></a>
# **Stop-pointEdgeAsync**
> EndpointedgeEdgeAsyncResponse Stop-pointEdgeAsync<br>

Get environment(endpoint) status

Environment(Endpoint) for edge agent to check status of environment(endpoint) **Access policy**: restricted only to Edge environments(endpoints)

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


# Get environment(endpoint) status
try {
    $Result = Stop-pointEdgeAsync
} catch {
    Write-Host ("Exception occurred when calling Stop-pointEdgeAsync: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EndpointedgeEdgeAsyncResponse**](EndpointedgeEdgeAsyncResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointEdgeStatusInspect"></a>
# **Stop-pointEdgeStatusInspect**
> EndpointedgeEndpointEdgeStatusInspectResponse Stop-pointEdgeStatusInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get environment(endpoint) status

environment(endpoint) for edge agent to check status of environment(endpoint) **Access policy**: restricted only to Edge environments(endpoints)

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

$Id = 56 # Int32 | Environment(Endpoint) identifier

# Get environment(endpoint) status
try {
    $Result = Stop-pointEdgeStatusInspect -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Stop-pointEdgeStatusInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 

### Return type

[**EndpointedgeEndpointEdgeStatusInspectResponse**](EndpointedgeEndpointEdgeStatusInspectResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointForceUpdateService"></a>
# **Stop-pointForceUpdateService**
> SwarmServiceUpdateResponse Stop-pointForceUpdateService<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

force update a docker service

force update a docker service **Access policy**: authenticated

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

$Id = 56 # Int32 | endpoint identifier
$EndpointsForceUpdateServicePayload = Initialize-EndpointsForceUpdateServicePayload -PullImage $false -ServiceID "MyServiceID" # EndpointsForceUpdateServicePayload | details

# force update a docker service
try {
    $Result = Stop-pointForceUpdateService -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Stop-pointForceUpdateService: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| endpoint identifier | 
 **Body** | [**EndpointsForceUpdateServicePayload**](EndpointsForceUpdateServicePayload.md)| details | 

### Return type

[**SwarmServiceUpdateResponse**](SwarmServiceUpdateResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointGetCharts"></a>
# **Stop-pointGetCharts**
> EndpointedgeEndpointGetChartsResponse Stop-pointGetCharts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChartNames] <String><br>

Get environment(endpoint) charts to install

environment(endpoint) for edge agent to get contents of requested Helm charts environment(endpoint) **Access policy**: restricted only to Edge environments(endpoints)

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

$Id = 56 # Int32 | Environment(Endpoint) identifier
$ChartNames = "MyChartNames" # String | JSON encoded list of charts to install (optional)

# Get environment(endpoint) charts to install
try {
    $Result = Stop-pointGetCharts -Id $Id -ChartNames $ChartNames
} catch {
    Write-Host ("Exception occurred when calling Stop-pointGetCharts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 
 **ChartNames** | **String**| JSON encoded list of charts to install | [optional] 

### Return type

[**EndpointedgeEndpointGetChartsResponse**](EndpointedgeEndpointGetChartsResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointInspect"></a>
# **Stop-pointInspect**
> PortainereeEndpoint Stop-pointInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExcludeSnapshot] <System.Nullable[Boolean]><br>

Inspect an environment(endpoint)

Retrieve details about an environment(endpoint). **Access policy**: restricted

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

$Id = 56 # Int32 | Environment(Endpoint) identifier
$ExcludeSnapshot = $true # Boolean | if true, the snapshot data won't be retrieved (optional)

# Inspect an environment(endpoint)
try {
    $Result = Stop-pointInspect -Id $Id -ExcludeSnapshot $ExcludeSnapshot
} catch {
    Write-Host ("Exception occurred when calling Stop-pointInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 
 **ExcludeSnapshot** | **Boolean**| if true, the snapshot data won&#39;t be retrieved | [optional] 

### Return type

[**PortainereeEndpoint**](PortainereeEndpoint.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointList"></a>
# **Stop-pointList**
> PortainereeEndpoint[] Stop-pointList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Start] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Order] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateInformation] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-K8sEnvAdmin] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupIds] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Types] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TagIds] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TagsPartialMatch] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointIds] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExcludeIds] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Provisioned] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AgentVersions] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EdgeAsync] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EdgeDeviceUntrusted] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EdgeCheckInPassedSeconds] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExcludeSnapshots] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NameFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EdgeStackStatus] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EdgeGroupIds] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExcludeEdgeGroupIds] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Policy] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyIds] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyStatus] <String[]><br>

List environments(endpoints)

List all environments(endpoints) based on the current user authorizations. Will return all environments(endpoints) if using an administrator or team leader account otherwise it will only return authorized environments(endpoints). **Access policy**: restricted

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

$Start = 56 # Int32 | Start searching from (optional)
$Limit = 56 # Int32 | Limit results to this value (optional)
$Sort = "Name" # String | Sort results by this value (optional)
$Order = 56 # Int32 | Order sorted results by desc/asc (optional)
$UpdateInformation = $true # Boolean | If true, an `X-Update-Available` header will be added to the response to indicate if an update is available (optional)
$K8sEnvAdmin = $true # Boolean | If true, an `X-K8S-Env-Admin` header will be added to the response to indicate if the user is a K8S environment admin for any of the returned environments (optional)
$Search = "MySearch" # String | Search query (optional)
$GroupIds = 0 # Int32[] | List environments(endpoints) of these groups (optional)
$Status = 0 # Int32[] | List environments(endpoints) by this status (optional)
$Types = 0 # Int32[] | List environments(endpoints) of this type (optional)
$TagIds = 0 # Int32[] | search environments(endpoints) with these tags (depends on tagsPartialMatch) (optional)
$TagsPartialMatch = $true # Boolean | If true, will return environment(endpoint) which has one of tagIds, if false (or missing) will return only environments(endpoints) that has all the tags (optional)
$EndpointIds = 0 # Int32[] | will return only these environments(endpoints) (optional)
$ExcludeIds = 0 # Int32[] | will exclude these environments(endpoints) (optional)
$Provisioned = $true # Boolean | If true, will return environment(endpoint) that were provisioned (optional)
$AgentVersions = "MyAgentVersions" # String[] | will return only environments with on of these agent versions (optional)
$EdgeAsync = $true # Boolean | if exists true show only edge async agents, false show only standard edge agents. if missing, will show both types (relevant only for edge agents) (optional)
$EdgeDeviceUntrusted = $true # Boolean | if true, show only untrusted edge agents, if false show only trusted edge agents (relevant only for edge agents) (optional)
$EdgeCheckInPassedSeconds = 8.14 # Decimal | if bigger then zero, show only edge agents that checked-in in the last provided seconds (relevant only for edge agents) (optional)
$ExcludeSnapshots = $true # Boolean | if true, the snapshot data won't be retrieved (optional)
$Name = "MyName" # String | will return only environments(endpoints) with this name (optional)
$NameFilter = "MyNameFilter" # String | Filter environments by partial name match (case-insensitive, searches name only) (optional)
$EdgeStackStatus = "MyEdgeStackStatus" # String | only applied when edgeStackId exists. Filter the returned environments based on their deployment status in the stack (not the environment status!) (optional)
$EdgeGroupIds = 0 # Int32[] | List environments(endpoints) of these edge groups (optional)
$ExcludeEdgeGroupIds = 0 # Int32[] | Exclude environments(endpoints) of these edge groups (optional)
$Policy = $true # Boolean | If true, will apply policy data to the returned environments(endpoints) (optional)
$PolicyIds = 0 # Int32[] | List environments(endpoints) associated with these policies (optional)
$PolicyStatus = "MyPolicyStatus" # String[] | Filter environments by policy status (applied, failed, in_progress, warning, not_supported). Only applies when policyIds is specified. (optional)

# List environments(endpoints)
try {
    $Result = Stop-pointList -Start $Start -Limit $Limit -Sort $Sort -Order $Order -UpdateInformation $UpdateInformation -K8sEnvAdmin $K8sEnvAdmin -Search $Search -GroupIds $GroupIds -Status $Status -Types $Types -TagIds $TagIds -TagsPartialMatch $TagsPartialMatch -EndpointIds $EndpointIds -ExcludeIds $ExcludeIds -Provisioned $Provisioned -AgentVersions $AgentVersions -EdgeAsync $EdgeAsync -EdgeDeviceUntrusted $EdgeDeviceUntrusted -EdgeCheckInPassedSeconds $EdgeCheckInPassedSeconds -ExcludeSnapshots $ExcludeSnapshots -Name $Name -NameFilter $NameFilter -EdgeStackStatus $EdgeStackStatus -EdgeGroupIds $EdgeGroupIds -ExcludeEdgeGroupIds $ExcludeEdgeGroupIds -Policy $Policy -PolicyIds $PolicyIds -PolicyStatus $PolicyStatus
} catch {
    Write-Host ("Exception occurred when calling Stop-pointList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Start** | **Int32**| Start searching from | [optional] 
 **Limit** | **Int32**| Limit results to this value | [optional] 
 **Sort** | **String**| Sort results by this value | [optional] 
 **Order** | **Int32**| Order sorted results by desc/asc | [optional] 
 **UpdateInformation** | **Boolean**| If true, an &#x60;X-Update-Available&#x60; header will be added to the response to indicate if an update is available | [optional] 
 **K8sEnvAdmin** | **Boolean**| If true, an &#x60;X-K8S-Env-Admin&#x60; header will be added to the response to indicate if the user is a K8S environment admin for any of the returned environments | [optional] 
 **Search** | **String**| Search query | [optional] 
 **GroupIds** | [**Int32[]**](Int32.md)| List environments(endpoints) of these groups | [optional] 
 **Status** | [**Int32[]**](Int32.md)| List environments(endpoints) by this status | [optional] 
 **Types** | [**Int32[]**](Int32.md)| List environments(endpoints) of this type | [optional] 
 **TagIds** | [**Int32[]**](Int32.md)| search environments(endpoints) with these tags (depends on tagsPartialMatch) | [optional] 
 **TagsPartialMatch** | **Boolean**| If true, will return environment(endpoint) which has one of tagIds, if false (or missing) will return only environments(endpoints) that has all the tags | [optional] 
 **EndpointIds** | [**Int32[]**](Int32.md)| will return only these environments(endpoints) | [optional] 
 **ExcludeIds** | [**Int32[]**](Int32.md)| will exclude these environments(endpoints) | [optional] 
 **Provisioned** | **Boolean**| If true, will return environment(endpoint) that were provisioned | [optional] 
 **AgentVersions** | [**String[]**](String.md)| will return only environments with on of these agent versions | [optional] 
 **EdgeAsync** | **Boolean**| if exists true show only edge async agents, false show only standard edge agents. if missing, will show both types (relevant only for edge agents) | [optional] 
 **EdgeDeviceUntrusted** | **Boolean**| if true, show only untrusted edge agents, if false show only trusted edge agents (relevant only for edge agents) | [optional] 
 **EdgeCheckInPassedSeconds** | **Decimal**| if bigger then zero, show only edge agents that checked-in in the last provided seconds (relevant only for edge agents) | [optional] 
 **ExcludeSnapshots** | **Boolean**| if true, the snapshot data won&#39;t be retrieved | [optional] 
 **Name** | **String**| will return only environments(endpoints) with this name | [optional] 
 **NameFilter** | **String**| Filter environments by partial name match (case-insensitive, searches name only) | [optional] 
 **EdgeStackStatus** | **String**| only applied when edgeStackId exists. Filter the returned environments based on their deployment status in the stack (not the environment status!) | [optional] 
 **EdgeGroupIds** | [**Int32[]**](Int32.md)| List environments(endpoints) of these edge groups | [optional] 
 **ExcludeEdgeGroupIds** | [**Int32[]**](Int32.md)| Exclude environments(endpoints) of these edge groups | [optional] 
 **Policy** | **Boolean**| If true, will apply policy data to the returned environments(endpoints) | [optional] 
 **PolicyIds** | [**Int32[]**](Int32.md)| List environments(endpoints) associated with these policies | [optional] 
 **PolicyStatus** | [**String[]**](String.md)| Filter environments by policy status (applied, failed, in_progress, warning, not_supported). Only applies when policyIds is specified. | [optional] 

### Return type

[**PortainereeEndpoint[]**](PortainereeEndpoint.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointMTLSAgentCertificateError"></a>
# **Stop-pointMTLSAgentCertificateError**
> EndpointsEndpointMTLSCertResponse Stop-pointMTLSAgentCertificateError<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get an agent(endpoint) mTLS certificate

Retrieve the mTLS certificate of an environment(endpoint). **Access policy**: administrator

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

$Id = 56 # Int32 | Environment(Endpoint) identifier

# Get an agent(endpoint) mTLS certificate
try {
    $Result = Stop-pointMTLSAgentCertificateError -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Stop-pointMTLSAgentCertificateError: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 

### Return type

[**EndpointsEndpointMTLSCertResponse**](EndpointsEndpointMTLSCertResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointMTLSCertificate"></a>
# **Stop-pointMTLSCertificate**
> EndpointsEndpointMTLSCertResponse Stop-pointMTLSCertificate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get an environment(endpoint) mTLS certificate

Retrieve the mTLS certificate of an environment(endpoint). **Access policy**: administrator

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

$Id = 56 # Int32 | Environment(Endpoint) identifier

# Get an environment(endpoint) mTLS certificate
try {
    $Result = Stop-pointMTLSCertificate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Stop-pointMTLSCertificate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 

### Return type

[**EndpointsEndpointMTLSCertResponse**](EndpointsEndpointMTLSCertResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointRegistriesList"></a>
# **Stop-pointRegistriesList**
> PortainereeRegistry[] Stop-pointRegistriesList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>

List Registries on environment

List all registries based on the current user authorizations in current environment. **Access policy**: authenticated

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

$Id = 56 # Int32 | Environment(Endpoint) identifier
$Namespace = "MyNamespace" # String | required if kubernetes environment, will show registries by namespace (optional)

# List Registries on environment
try {
    $Result = Stop-pointRegistriesList -Id $Id -Namespace $Namespace
} catch {
    Write-Host ("Exception occurred when calling Stop-pointRegistriesList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 
 **Namespace** | **String**| required if kubernetes environment, will show registries by namespace | [optional] 

### Return type

[**PortainereeRegistry[]**](PortainereeRegistry.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointRegistryAccess"></a>
# **Stop-pointRegistryAccess**
> void Stop-pointRegistryAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RegistryId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

update registry access for environment

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

$Id = 56 # Int32 | Environment(Endpoint) identifier
$RegistryId = 56 # Int32 | Registry identifier
$PortainerAccessPolicy = Initialize-PortainerAccessPolicy -Namespaces "MyNamespaces" -RoleId 1
$EndpointsRegistryAccessPayload = Initialize-EndpointsRegistryAccessPayload -Namespaces "MyNamespaces" -TeamAccessPolicies @{ key_example = $PortainerAccessPolicy } -UserAccessPolicies @{ key_example = $PortainerAccessPolicy } # EndpointsRegistryAccessPayload | details

# update registry access for environment
try {
    $Result = Stop-pointRegistryAccess -Id $Id -RegistryId $RegistryId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Stop-pointRegistryAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 
 **RegistryId** | **Int32**| Registry identifier | 
 **Body** | [**EndpointsRegistryAccessPayload**](EndpointsRegistryAccessPayload.md)| details | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointSettingsUpdate"></a>
# **Stop-pointSettingsUpdate**
> PortainereeEndpoint Stop-pointSettingsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update settings for an environment(endpoint)

Update settings for an environment(endpoint). **Access policy**: authenticated

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

$Id = 56 # Int32 | Environment(Endpoint) identifier
$PortainereeEndpointChangeWindow = Initialize-PortainereeEndpointChangeWindow -Enabled $true -EndTime "02:00" -StartTime "22:00"
$PortainereeDeploymentOptions = Initialize-PortainereeDeploymentOptions -HideAddWithForm $true -HideFileUpload $false -HideWebEditor $false -OverrideGlobalOptions $false
$PortainerPair = Initialize-PortainerPair -Name "name" -Value "value"
$EndpointsEndpointSettingsUpdatePayloadSecuritySettings = Initialize-EndpointsEndpointSettingsUpdatePayloadSecuritySettings -AllowBindMountsForRegularUsers $false -AllowContainerCapabilitiesForRegularUsers $true -AllowDeviceMappingForRegularUsers $true -AllowHostNamespaceForRegularUsers $true -AllowPrivilegedModeForRegularUsers $false -AllowStackManagementForRegularUsers $true -AllowSysctlSettingForRegularUsers $true -AllowVolumeBrowserForRegularUsers $true -EnableHostManagementFeatures $true
$EndpointsEndpointSettingsUpdatePayload = Initialize-EndpointsEndpointSettingsUpdatePayload -ChangeWindow $PortainereeEndpointChangeWindow -DeploymentOptions $PortainereeDeploymentOptions -EnableGPUManagement $false -EnableImageNotification $true -Gpus $PortainerPair -SecuritySettings $EndpointsEndpointSettingsUpdatePayloadSecuritySettings # EndpointsEndpointSettingsUpdatePayload | Environment(Endpoint) details

# Update settings for an environment(endpoint)
try {
    $Result = Stop-pointSettingsUpdate -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Stop-pointSettingsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 
 **Body** | [**EndpointsEndpointSettingsUpdatePayload**](EndpointsEndpointSettingsUpdatePayload.md)| Environment(Endpoint) details | 

### Return type

[**PortainereeEndpoint**](PortainereeEndpoint.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointSnapshot"></a>
# **Stop-pointSnapshot**
> void Stop-pointSnapshot<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Snapshots an environment(endpoint)

Snapshots an environment(endpoint) **Access policy**: authenticated

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

$Id = 56 # Int32 | Environment(Endpoint) identifier

# Snapshots an environment(endpoint)
try {
    $Result = Stop-pointSnapshot -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Stop-pointSnapshot: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointSnapshots"></a>
# **Stop-pointSnapshots**
> void Stop-pointSnapshots<br>

Snapshot all environment(endpoint)

Snapshot all environments(endpoints) **Access policy**: administrator

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


# Snapshot all environment(endpoint)
try {
    $Result = Stop-pointSnapshots
} catch {
    Write-Host ("Exception occurred when calling Stop-pointSnapshots: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Stop-pointUpdate"></a>
# **Stop-pointUpdate**
> PortainereeEndpoint Stop-pointUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update an environment(endpoint)

Update an environment(endpoint). **Access policy**: authenticated

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

$Id = 56 # Int32 | Environment(Endpoint) identifier
$PortainereeEndpointChangeWindow = Initialize-PortainereeEndpointChangeWindow -Enabled $true -EndTime "02:00" -StartTime "22:00"
$PortainereeDeploymentOptions = Initialize-PortainereeDeploymentOptions -HideAddWithForm $true -HideFileUpload $false -HideWebEditor $false -OverrideGlobalOptions $false
$EndpointsEndpointUpdatePayloadEdge = Initialize-EndpointsEndpointUpdatePayloadEdge -CommandInterval 5 -PingInterval 5 -SnapshotInterval 5
$PortainerPair = Initialize-PortainerPair -Name "name" -Value "value"

$PortainerKubernetesIngressClassConfig = Initialize-PortainerKubernetesIngressClassConfig -Blocked $false -BlockedNamespaces "MyBlockedNamespaces" -Name "MyName" -Type "MyType"
$PortainerKubernetesStorageClassConfig = Initialize-PortainerKubernetesStorageClassConfig -AccessModes "MyAccessModes" -AllowVolumeExpansion $false -Name "MyName" -Provisioner "MyProvisioner"
$PortainereeKubernetesConfiguration = Initialize-PortainereeKubernetesConfiguration -AllowNoneIngressClass $false -EnableResourceOverCommit $false -IngressAvailabilityPerNamespace $false -IngressClasses $PortainerKubernetesIngressClassConfig -ResourceOverCommitPercentage 0 -RestrictDefaultNamespace $false -RestrictSecrets $false -RestrictStandardUserIngressW $false -StorageClasses $PortainerKubernetesStorageClassConfig -UseLoadBalancer $false -UseServerMetrics $false

$PortainerKubernetesFlags = Initialize-PortainerKubernetesFlags -IsServerIngressClassDetected $false -IsServerMetricsDetected $false -IsServerStorageDetected $false

$PortainerDiagnosticsData = Initialize-PortainerDiagnosticsData -DNS @{ key_example = "MyInner" } -Log "MyLog" -Proxy @{ key_example = "MyInner" } -Telnet @{ key_example = "MyInner" }
$PortainerPerformanceMetrics = Initialize-PortainerPerformanceMetrics -CPUUsage 0 -MemoryUsage 0 -NetworkUsage 0
$PortainerKubernetesSnapshot = Initialize-PortainerKubernetesSnapshot -DiagnosticsData $PortainerDiagnosticsData -KubernetesVersion "MyKubernetesVersion" -NodeCount 0 -PerformanceMetrics $PortainerPerformanceMetrics -Time 0 -TotalCPU 0 -TotalMemory 0

$PortainereeKubernetesData = Initialize-PortainereeKubernetesData -Configuration $PortainereeKubernetesConfiguration -Flags $PortainerKubernetesFlags -Snapshots $PortainerKubernetesSnapshot

$EndpointsEndpointUpdatePayloadStatusMessage = Initialize-EndpointsEndpointUpdatePayloadStatusMessage -Detail "Error message" -Summary "Error" -Operation "scale" -OperationStatus "processing"
$PortainerAccessPolicy = Initialize-PortainerAccessPolicy -Namespaces "MyNamespaces" -RoleId 1
$EndpointsEndpointUpdatePayload = Initialize-EndpointsEndpointUpdatePayload -AzureApplicationID "eag7cdo9-o09l-9i83-9dO9-f0b23oe78db4" -AzureAuthenticationKey "cOrXoK/1D35w8YQ8nH1/8ZGwzz45JIYD5jxHKXEQknk=" -AzureTenantID "34ddc78d-4fel-2358-8cc1-df84c8o839f5" -ChangeWindow $PortainereeEndpointChangeWindow -DeploymentOptions $PortainereeDeploymentOptions -Edge $EndpointsEndpointUpdatePayloadEdge -EdgeCheckinInterval 5 -Gpus $PortainerPair -GroupID 1 -IsSetStatusMessage $false -Kubernetes $PortainereeKubernetesData -Name "my-environment" -PublicURL "docker.mydomain.tld:2375" -Status 1 -StatusMessage $EndpointsEndpointUpdatePayloadStatusMessage -TLS $true -TLSSkipClientVerify $false -TLSSkipVerify $false -TagIDs 0 -TeamAccessPolicies @{ key_example = $PortainerAccessPolicy } -URL "docker.mydomain.tld:2375" -UserAccessPolicies @{ key_example = $PortainerAccessPolicy } # EndpointsEndpointUpdatePayload | Environment(Endpoint) details

# Update an environment(endpoint)
try {
    $Result = Stop-pointUpdate -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Stop-pointUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 
 **Body** | [**EndpointsEndpointUpdatePayload**](EndpointsEndpointUpdatePayload.md)| Environment(Endpoint) details | 

### Return type

[**PortainereeEndpoint**](PortainereeEndpoint.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointUpdateChartStatuses"></a>
# **Stop-pointUpdateChartStatuses**
> void Stop-pointUpdateChartStatuses<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Update environment(endpoint) policy chart installation statuses

environment(endpoint) for edge agent to report back installation statuses of Helm charts **Access policy**: restricted only to Edge environments(endpoints)

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

$Id = 56 # Int32 | Environment(Endpoint) identifier

# Update environment(endpoint) policy chart installation statuses
try {
    $Result = Stop-pointUpdateChartStatuses -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Stop-pointUpdateChartStatuses: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-pointUpdateRelations"></a>
# **Stop-pointUpdateRelations**
> void Stop-pointUpdateRelations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update relations for a list of environments

Update relations for a list of environments Edge groups, tags and environment group can be updated.  **Access policy**: administrator

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$EndpointsEndpointUpdateRelation = Initialize-EndpointsEndpointUpdateRelation -EdgeGroups 0 -Group 0 -Tags 0
$EndpointsEndpointUpdateRelationsPayload = Initialize-EndpointsEndpointUpdateRelationsPayload -Relations @{ key_example = $EndpointsEndpointUpdateRelation } # EndpointsEndpointUpdateRelationsPayload | Environment relations data

# Update relations for a list of environments
try {
    $Result = Stop-pointUpdateRelations -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Stop-pointUpdateRelations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**EndpointsEndpointUpdateRelationsPayload**](EndpointsEndpointUpdateRelationsPayload.md)| Environment relations data | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

<a id="Stop-pointsIdDockerV2BrowsePutPost"></a>
# **Stop-pointsIdDockerV2BrowsePutPost**
> void Stop-pointsIdDockerV2BrowsePutPost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Path] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VolumeID] <String><br>

Upload a file under a specific path on the file system of an environment (endpoint)

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

$Id = 56 # Int32 | Environment(Endpoint) identifier
$Path = "MyPath" # String | The destination path to upload the file to
$File =  # System.IO.FileInfo | The file to upload
$VolumeID = "MyVolumeID" # String | Optional volume identifier to upload the file (optional)

# Upload a file under a specific path on the file system of an environment (endpoint)
try {
    $Result = Stop-pointsIdDockerV2BrowsePutPost -Id $Id -Path $Path -File $File -VolumeID $VolumeID
} catch {
    Write-Host ("Exception occurred when calling Stop-pointsIdDockerV2BrowsePutPost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 
 **Path** | **String**| The destination path to upload the file to | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| The file to upload | 
 **VolumeID** | **String**| Optional volume identifier to upload the file | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
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

<a id="Move-spacesAccessUpdate"></a>
# **Move-spacesAccessUpdate**
> void Move-spacesAccessUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Rpn] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update namespace access for a given namespace

Update the access permissions on a namespace in the given environment. This endpoint allows adding or removing users and teams that can access the specified namespace. Please note that users or teams must be added to the environment before they can be added to the namespace. **Access policy**: Restricted. User must be an administrator or have appropriate permissions to modify namespace access.

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

$Id = 56 # Int32 | Environment identifier
$Rpn = 56 # Int32 | Namespace identifier
$EndpointsResourcePoolUpdatePayload = Initialize-EndpointsResourcePoolUpdatePayload -TeamsToAdd 0 -TeamsToRemove 0 -UsersToAdd 0 -UsersToRemove 0 # EndpointsResourcePoolUpdatePayload | Payload containing lists of users and teams to add or remove access for

# Update namespace access for a given namespace
try {
    $Result = Move-spacesAccessUpdate -Id $Id -Rpn $Rpn -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Move-spacesAccessUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Rpn** | **Int32**| Namespace identifier | 
 **Body** | [**EndpointsResourcePoolUpdatePayload**](EndpointsResourcePoolUpdatePayload.md)| Payload containing lists of users and teams to add or remove access for | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
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

<a id="Invoke-TrustEdgeEndpoints"></a>
# **Invoke-TrustEdgeEndpoints**
> void Invoke-TrustEdgeEndpoints<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Associate one or more Edge environments in the waiting room to environments

Associate one or more Edge environments, currently in the waiting room, with Portainer environments. This action effectively grants trust to these environments. **Access policy**: Administrator only.

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

$EndpointedgeEndpointTrustUpdateRelation = Initialize-EndpointedgeEndpointTrustUpdateRelation -EdgeGroups 0 -Group 0 -Tags 0
$EndpointedgeEndpointsTrustPayload = Initialize-EndpointedgeEndpointsTrustPayload -EndpointIDs 0 -Relations @{ key_example = $EndpointedgeEndpointTrustUpdateRelation } # EndpointedgeEndpointsTrustPayload | Information about the environments to trust

# Associate one or more Edge environments in the waiting room to environments
try {
    $Result = Invoke-TrustEdgeEndpoints -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-TrustEdgeEndpoints: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**EndpointedgeEndpointsTrustPayload**](EndpointedgeEndpointsTrustPayload.md)| Information about the environments to trust | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

