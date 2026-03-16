# PSOpenAPITools.PSOpenAPITools\Api.EdgeStacksApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-EdgeStackCreateFile**](EdgeStacksApi.md#Invoke-EdgeStackCreateFile) | **POST** /edge_stacks/create/file | Create an EdgeStack from file
[**Invoke-EdgeStackCreateRepository**](EdgeStacksApi.md#Invoke-EdgeStackCreateRepository) | **POST** /edge_stacks/create/repository | Create an EdgeStack from a git repository
[**Invoke-EdgeStackCreateString**](EdgeStacksApi.md#Invoke-EdgeStackCreateString) | **POST** /edge_stacks/create/string | Create an EdgeStack from a text
[**Invoke-EdgeStackDelete**](EdgeStacksApi.md#Invoke-EdgeStackDelete) | **DELETE** /edge_stacks/{id} | Delete an EdgeStack
[**Invoke-EdgeStackFile**](EdgeStacksApi.md#Invoke-EdgeStackFile) | **GET** /edge_stacks/{id}/file | Fetches the stack file for an EdgeStack
[**Invoke-EdgeStackInspect**](EdgeStacksApi.md#Invoke-EdgeStackInspect) | **GET** /edge_stacks/{id} | Inspect an EdgeStack
[**Invoke-EdgeStackList**](EdgeStacksApi.md#Invoke-EdgeStackList) | **GET** /edge_stacks | Fetches the list of EdgeStacks
[**Invoke-EdgeStackLogsCollect**](EdgeStacksApi.md#Invoke-EdgeStackLogsCollect) | **PUT** /edge_stacks/{id}/logs/{endpoint_id} | Schedule the collection of logs for a given endpoint and edge stack
[**Invoke-EdgeStackLogsDelete**](EdgeStacksApi.md#Invoke-EdgeStackLogsDelete) | **DELETE** /edge_stacks/{id}/logs/{endpoint_id} | Deletes the available logs for a given edge stack and endpoint
[**Invoke-EdgeStackLogsDownload**](EdgeStacksApi.md#Invoke-EdgeStackLogsDownload) | **GET** /edge_stacks/{id}/logs/{endpoint_id}/file | Downloads the available logs for a given edge stack and endpoint
[**Invoke-EdgeStackLogsStatusGet**](EdgeStacksApi.md#Invoke-EdgeStackLogsStatusGet) | **GET** /edge_stacks/{id}/logs/{endpoint_id} | Gets the status of the log collection for a given edgestack and environment
[**Invoke-EdgeStackParseRegistries**](EdgeStacksApi.md#Invoke-EdgeStackParseRegistries) | **POST** /edge_stacks/parse_registries | Parse registries from a stack file
[**Invoke-EdgeStackStaggerStatusInspect**](EdgeStacksApi.md#Invoke-EdgeStackStaggerStatusInspect) | **GET** /edge_stacks/{id}/stagger/status | Inspect an EdgeStack&#39;s parallel update status
[**Invoke-EdgeStackStatusUpdate**](EdgeStacksApi.md#Invoke-EdgeStackStatusUpdate) | **PUT** /edge_stacks/{id}/status | Update an EdgeStack status
[**Invoke-EdgeStackUpdate**](EdgeStacksApi.md#Invoke-EdgeStackUpdate) | **PUT** /edge_stacks/{id} | Update an EdgeStack
[**Invoke-EdgeStackUpdateFromGit**](EdgeStacksApi.md#Invoke-EdgeStackUpdateFromGit) | **PUT** /edge_stacks/{id}/git | Update git configuration and pulls the repository
[**Stop-pointsIdEdgeStacksStackIdGet**](EdgeStacksApi.md#Stop-pointsIdEdgeStacksStackIdGet) | **GET** /endpoints/{id}/edge/stacks/{stackId} | Inspect an Edge Stack for an Environment(Endpoint)


<a id="Invoke-EdgeStackCreateFile"></a>
# **Invoke-EdgeStackCreateFile**
> PortainereeEdgeStack Invoke-EdgeStackCreateFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EdgeGroups] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeploymentType] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Webhook] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Dryrun] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Registries] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UseManifestNamespaces] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PrePullImage] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RetryDeploy] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RetryPeriod] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvVars] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StaggerConfig] <String><br>

Create an EdgeStack from file

**Access policy**: administrator

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

$Name = "MyName" # String | Name of the stack. it must only consist of lowercase alphanumeric characters, hyphens, or underscores as well as start with a letter or number
$File =  # System.IO.FileInfo | Content of the Stack file
$EdgeGroups = "MyEdgeGroups" # String | JSON stringified array of Edge Groups ids
$DeploymentType = 56 # Int32 | deploy type 0 - 'compose', 1 - 'kubernetes'
$Webhook = "MyWebhook" # String | unique webhook id
$Dryrun = "MyDryrun" # String | if true, will not create an edge stack, but just will check the settings and return a non-persisted edge stack object (optional)
$Registries = "MyRegistries" # String | JSON stringified array of Registry ids to use for this stack (optional)
$UseManifestNamespaces = $true # Boolean | Uses the manifest's namespaces instead of the default one, relevant only for kube environments (optional)
$PrePullImage = $true # Boolean | Pre Pull image (optional)
$RetryDeploy = $true # Boolean | Retry deploy (optional)
$RetryPeriod = 56 # Int32 | Duration, in seconds, for which the agent should continue attempting to deploy the stack after a failure (optional)
$EnvVars = "MyEnvVars" # String | JSON stringified array of environment variables {name, value} (optional)
$StaggerConfig = "MyStaggerConfig" # String | JSON stringified object of stagger config (optional)

# Create an EdgeStack from file
try {
    $Result = Invoke-EdgeStackCreateFile -Name $Name -File $File -EdgeGroups $EdgeGroups -DeploymentType $DeploymentType -Webhook $Webhook -Dryrun $Dryrun -Registries $Registries -UseManifestNamespaces $UseManifestNamespaces -PrePullImage $PrePullImage -RetryDeploy $RetryDeploy -RetryPeriod $RetryPeriod -EnvVars $EnvVars -StaggerConfig $StaggerConfig
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeStackCreateFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the stack. it must only consist of lowercase alphanumeric characters, hyphens, or underscores as well as start with a letter or number | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| Content of the Stack file | 
 **EdgeGroups** | **String**| JSON stringified array of Edge Groups ids | 
 **DeploymentType** | **Int32**| deploy type 0 - &#39;compose&#39;, 1 - &#39;kubernetes&#39; | 
 **Webhook** | **String**| unique webhook id | 
 **Dryrun** | **String**| if true, will not create an edge stack, but just will check the settings and return a non-persisted edge stack object | [optional] 
 **Registries** | **String**| JSON stringified array of Registry ids to use for this stack | [optional] 
 **UseManifestNamespaces** | **Boolean**| Uses the manifest&#39;s namespaces instead of the default one, relevant only for kube environments | [optional] 
 **PrePullImage** | **Boolean**| Pre Pull image | [optional] 
 **RetryDeploy** | **Boolean**| Retry deploy | [optional] 
 **RetryPeriod** | **Int32**| Duration, in seconds, for which the agent should continue attempting to deploy the stack after a failure | [optional] 
 **EnvVars** | **String**| JSON stringified array of environment variables {name, value} | [optional] 
 **StaggerConfig** | **String**| JSON stringified object of stagger config | [optional] 

### Return type

[**PortainereeEdgeStack**](PortainereeEdgeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeStackCreateRepository"></a>
# **Invoke-EdgeStackCreateRepository**
> PortainereeEdgeStack Invoke-EdgeStackCreateRepository<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Dryrun] <String><br>

Create an EdgeStack from a git repository

**Access policy**: administrator

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

$PortainerAutoUpdateSettings = Initialize-PortainerAutoUpdateSettings -ForcePullImage $false -ForceUpdate $false -Interval "1m30s" -JobID "15" -Webhook "05de31a2-79fa-4644-9c12-faa67e5c49f0"
$PortainerPair = Initialize-PortainerPair -Name "name" -Value "value"
$PortainerHelmConfig = Initialize-PortainerHelmConfig -Atomic $true -ChartPath "charts/my-app" -Timeout "5m0s" -ValuesFiles "MyValuesFiles" -Version "1.2.3"
$PortainereeEdgeStaggerConfig = Initialize-PortainereeEdgeStaggerConfig -DeviceNumber 0 -DeviceNumberIncrementBy 0 -DeviceNumberStartFrom 0 -StaggerOption "0" -StaggerParallelOption "0" -Timeout "5" -UpdateDelay "5" -UpdateFailureAction "0"
$GithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackFromGitRepositoryPayload = Initialize-GithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackFromGitRepositoryPayload -AlwaysCloneGitRepoForRelativePath $false -AutoUpdate $PortainerAutoUpdateSettings -CreatedFromCustomTemplateID 0 -DeploymentType "0" -EdgeGroups 0 -EnvVars $PortainerPair -FilePathInRepository "docker-compose.yml" -FilesystemPath "/mnt" -HelmConfig $PortainerHelmConfig -Name "stack-name" -PerDeviceConfigsGroupMatchType "file" -PerDeviceConfigsMatchType "file" -PerDeviceConfigsPath "configs" -PrePullImage $false -Registries 0 -RepositoryAuthentication $true -RepositoryAuthorizationType "0" -RepositoryGitCredentialID 0 -RepositoryPassword "myGitPassword" -RepositoryReferenceName "refs/heads/master" -RepositoryURL "https://github.com/openfaas/faas" -RepositoryUsername "myGitUsername" -RetryDeploy $false -RetryPeriod 0 -StaggerConfig $PortainereeEdgeStaggerConfig -SupportPerDeviceConfigs $false -SupportRelativePath $false -TLSSkipVerify $false -UseManifestNamespaces $false # GithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackFromGitRepositoryPayload | stack config
$Dryrun = "MyDryrun" # String | if true, will not create an edge stack, but just will check the settings and return a non-persisted edge stack object (optional)

# Create an EdgeStack from a git repository
try {
    $Result = Invoke-EdgeStackCreateRepository -Body $Body -Dryrun $Dryrun
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeStackCreateRepository: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**GithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackFromGitRepositoryPayload**](GithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackFromGitRepositoryPayload.md)| stack config | 
 **Dryrun** | **String**| if true, will not create an edge stack, but just will check the settings and return a non-persisted edge stack object | [optional] 

### Return type

[**PortainereeEdgeStack**](PortainereeEdgeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeStackCreateString"></a>
# **Invoke-EdgeStackCreateString**
> PortainereeEdgeStack Invoke-EdgeStackCreateString<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Dryrun] <String><br>

Create an EdgeStack from a text

**Access policy**: administrator

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

$PortainerPair = Initialize-PortainerPair -Name "name" -Value "value"
$PortainereeEdgeStaggerConfig = Initialize-PortainereeEdgeStaggerConfig -DeviceNumber 0 -DeviceNumberIncrementBy 0 -DeviceNumberStartFrom 0 -StaggerOption "0" -StaggerParallelOption "0" -Timeout "5" -UpdateDelay "5" -UpdateFailureAction "0"
$GithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackFromStringPayload = Initialize-GithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackFromStringPayload -DeploymentType "0" -EdgeGroups 0 -EnvVars $PortainerPair -Name "stack-name" -PrePullImage $false -Registries 0 -RetryDeploy $false -RetryPeriod 0 -StackFileContent "version: 3
 services:
 web:
 image:nginx" -StaggerConfig $PortainereeEdgeStaggerConfig -UseManifestNamespaces $false -Webhook "c11fdf23-183e-428a-9bb6-16db01032174" # GithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackFromStringPayload | stack config
$Dryrun = "MyDryrun" # String | if true, will not create an edge stack, but just will check the settings and return a non-persisted edge stack object (optional)

# Create an EdgeStack from a text
try {
    $Result = Invoke-EdgeStackCreateString -Body $Body -Dryrun $Dryrun
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeStackCreateString: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**GithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackFromStringPayload**](GithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackFromStringPayload.md)| stack config | 
 **Dryrun** | **String**| if true, will not create an edge stack, but just will check the settings and return a non-persisted edge stack object | [optional] 

### Return type

[**PortainereeEdgeStack**](PortainereeEdgeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeStackDelete"></a>
# **Invoke-EdgeStackDelete**
> void Invoke-EdgeStackDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Delete an EdgeStack

**Access policy**: administrator

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

$Id = 56 # Int32 | EdgeStack Id

# Delete an EdgeStack
try {
    $Result = Invoke-EdgeStackDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeStackDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeStack Id | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeStackFile"></a>
# **Invoke-EdgeStackFile**
> GithubComPortainerPortainerEeApiHttpHandlerEdgestacksStackFileResponse Invoke-EdgeStackFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CommitHash] <String><br>

Fetches the stack file for an EdgeStack

**Access policy**: administrator

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

$Id = 56 # Int32 | EdgeStack Id
$Version = 56 # Int32 | Stack file version maintained by Portainer. If both version and commitHash are provided, the commitHash will be used (optional)
$CommitHash = "MyCommitHash" # String | Git repository commit hash. If both version and commitHash are provided, the commitHash will be used (optional)

# Fetches the stack file for an EdgeStack
try {
    $Result = Invoke-EdgeStackFile -Id $Id -Version $Version -CommitHash $CommitHash
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeStackFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeStack Id | 
 **Version** | **Int32**| Stack file version maintained by Portainer. If both version and commitHash are provided, the commitHash will be used | [optional] 
 **CommitHash** | **String**| Git repository commit hash. If both version and commitHash are provided, the commitHash will be used | [optional] 

### Return type

[**GithubComPortainerPortainerEeApiHttpHandlerEdgestacksStackFileResponse**](GithubComPortainerPortainerEeApiHttpHandlerEdgestacksStackFileResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeStackInspect"></a>
# **Invoke-EdgeStackInspect**
> PortainereeEdgeStack Invoke-EdgeStackInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Inspect an EdgeStack

**Access policy**: administrator

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

$Id = 56 # Int32 | EdgeStack Id

# Inspect an EdgeStack
try {
    $Result = Invoke-EdgeStackInspect -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeStackInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeStack Id | 

### Return type

[**PortainereeEdgeStack**](PortainereeEdgeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeStackList"></a>
# **Invoke-EdgeStackList**
> GithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackListResponseItem[] Invoke-EdgeStackList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SummarizeStatuses] <System.Nullable[Boolean]><br>

Fetches the list of EdgeStacks

**Access policy**: administrator

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

$SummarizeStatuses = $true # Boolean | when true summarize the edge stack statuses in the StatusSummary field and void the Status field. (optional)

# Fetches the list of EdgeStacks
try {
    $Result = Invoke-EdgeStackList -SummarizeStatuses $SummarizeStatuses
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeStackList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SummarizeStatuses** | **Boolean**| when true summarize the edge stack statuses in the StatusSummary field and void the Status field. | [optional] 

### Return type

[**GithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackListResponseItem[]**](GithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackListResponseItem.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeStackLogsCollect"></a>
# **Invoke-EdgeStackLogsCollect**
> void Invoke-EdgeStackLogsCollect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Tail] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContainerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Until] <String><br>

Schedule the collection of logs for a given endpoint and edge stack

**Access policy**: administrator

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

$Id = 56 # Int32 | EdgeStack Id
$EndpointId = 56 # Int32 | Environment Id
$Tail = 56 # Int32 | Number of lines to request for the logs (optional)
$ContainerId = "MyContainerId" # String | Container Id (optional)
$Since = "MySince" # String | Start time to request for the logs (optional)
$Until = "MyUntil" # String | End time to request for the logs (optional)

# Schedule the collection of logs for a given endpoint and edge stack
try {
    $Result = Invoke-EdgeStackLogsCollect -Id $Id -EndpointId $EndpointId -Tail $Tail -ContainerId $ContainerId -Since $Since -Until $Until
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeStackLogsCollect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeStack Id | 
 **EndpointId** | **Int32**| Environment Id | 
 **Tail** | **Int32**| Number of lines to request for the logs | [optional] 
 **ContainerId** | **String**| Container Id | [optional] 
 **Since** | **String**| Start time to request for the logs | [optional] 
 **Until** | **String**| End time to request for the logs | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeStackLogsDelete"></a>
# **Invoke-EdgeStackLogsDelete**
> void Invoke-EdgeStackLogsDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>

Deletes the available logs for a given edge stack and endpoint

**Access policy**: administrator

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

$Id = 56 # Int32 | EdgeStack Id
$EndpointId = 56 # Int32 | Endpoint Id

# Deletes the available logs for a given edge stack and endpoint
try {
    $Result = Invoke-EdgeStackLogsDelete -Id $Id -EndpointId $EndpointId
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeStackLogsDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeStack Id | 
 **EndpointId** | **Int32**| Endpoint Id | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeStackLogsDownload"></a>
# **Invoke-EdgeStackLogsDownload**
> void Invoke-EdgeStackLogsDownload<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>

Downloads the available logs for a given edge stack and endpoint

**Access policy**: administrator

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

$Id = 56 # Int32 | EdgeStack Id
$EndpointId = 56 # Int32 | Endpoint Id

# Downloads the available logs for a given edge stack and endpoint
try {
    $Result = Invoke-EdgeStackLogsDownload -Id $Id -EndpointId $EndpointId
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeStackLogsDownload: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeStack Id | 
 **EndpointId** | **Int32**| Endpoint Id | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeStackLogsStatusGet"></a>
# **Invoke-EdgeStackLogsStatusGet**
> void Invoke-EdgeStackLogsStatusGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>

Gets the status of the log collection for a given edgestack and environment

**Access policy**: administrator

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

$Id = 56 # Int32 | EdgeStack Id
$EndpointId = 56 # Int32 | Environment Id

# Gets the status of the log collection for a given edgestack and environment
try {
    $Result = Invoke-EdgeStackLogsStatusGet -Id $Id -EndpointId $EndpointId
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeStackLogsStatusGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeStack Id | 
 **EndpointId** | **Int32**| Environment Id | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeStackParseRegistries"></a>
# **Invoke-EdgeStackParseRegistries**
> Int32[] Invoke-EdgeStackParseRegistries<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Parse registries from a stack file

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

$File =  # System.IO.FileInfo | stack file

# Parse registries from a stack file
try {
    $Result = Invoke-EdgeStackParseRegistries -File $File
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeStackParseRegistries: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| stack file | 

### Return type

**Int32[]**

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeStackStaggerStatusInspect"></a>
# **Invoke-EdgeStackStaggerStatusInspect**
> EdgestacksEdgeStackStaggerStatusResponse Invoke-EdgeStackStaggerStatusInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Inspect an EdgeStack's parallel update status

**Access policy**: administrator

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

$Id = 56 # Int32 | EdgeStack Id

# Inspect an EdgeStack's parallel update status
try {
    $Result = Invoke-EdgeStackStaggerStatusInspect -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeStackStaggerStatusInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeStack Id | 

### Return type

[**EdgestacksEdgeStackStaggerStatusResponse**](EdgestacksEdgeStackStaggerStatusResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeStackStatusUpdate"></a>
# **Invoke-EdgeStackStatusUpdate**
> PortainereeEdgeStack Invoke-EdgeStackStatusUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update an EdgeStack status

Authorized only if the request is done by an Edge Environment(Endpoint)

### Example
```powershell
$Id = 56 # Int32 | EdgeStack Id
$GithubComPortainerPortainerEeApiHttpHandlerEdgestacksUpdateStatusPayload = Initialize-GithubComPortainerPortainerEeApiHttpHandlerEdgestacksUpdateStatusPayload -EndpointID 0 -VarError "MyVarError" -RollbackTo 0 -Status "0" -Time 0 -Version 0 # GithubComPortainerPortainerEeApiHttpHandlerEdgestacksUpdateStatusPayload | EdgeStack status payload

# Update an EdgeStack status
try {
    $Result = Invoke-EdgeStackStatusUpdate -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeStackStatusUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeStack Id | 
 **Body** | [**GithubComPortainerPortainerEeApiHttpHandlerEdgestacksUpdateStatusPayload**](GithubComPortainerPortainerEeApiHttpHandlerEdgestacksUpdateStatusPayload.md)| EdgeStack status payload | 

### Return type

[**PortainereeEdgeStack**](PortainereeEdgeStack.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeStackUpdate"></a>
# **Invoke-EdgeStackUpdate**
> PortainereeEdgeStack Invoke-EdgeStackUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update an EdgeStack

**Access policy**: administrator

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

$Id = 56 # Int32 | EdgeStack Id
$EdgestacksDeployerOptionsPayload = Initialize-EdgestacksDeployerOptionsPayload -Prune $false -RemoveVolumes $false
$PortainerPair = Initialize-PortainerPair -Name "name" -Value "value"
$PortainereeEdgeStaggerConfig = Initialize-PortainereeEdgeStaggerConfig -DeviceNumber 0 -DeviceNumberIncrementBy 0 -DeviceNumberStartFrom 0 -StaggerOption "0" -StaggerParallelOption "0" -Timeout "5" -UpdateDelay "5" -UpdateFailureAction "0"
$GithubComPortainerPortainerEeApiHttpHandlerEdgestacksUpdateEdgeStackPayload = Initialize-GithubComPortainerPortainerEeApiHttpHandlerEdgestacksUpdateEdgeStackPayload -DeployerOptions $EdgestacksDeployerOptionsPayload -DeploymentType "0" -EdgeGroups 0 -EnvVars $PortainerPair -PrePullImage $false -RePullImage $false -Registries 0 -RepullImageAndRedeploy $false -RetryDeploy $false -RetryPeriod 0 -RollbackTo 0 -StackFileContent "MyStackFileContent" -StaggerConfig $PortainereeEdgeStaggerConfig -UpdateVersion $false -UseManifestNamespaces $false -Webhook "c11fdf23-183e-428a-9bb6-16db01032174" # GithubComPortainerPortainerEeApiHttpHandlerEdgestacksUpdateEdgeStackPayload | EdgeStack data

# Update an EdgeStack
try {
    $Result = Invoke-EdgeStackUpdate -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeStackUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeStack Id | 
 **Body** | [**GithubComPortainerPortainerEeApiHttpHandlerEdgestacksUpdateEdgeStackPayload**](GithubComPortainerPortainerEeApiHttpHandlerEdgestacksUpdateEdgeStackPayload.md)| EdgeStack data | 

### Return type

[**PortainereeEdgeStack**](PortainereeEdgeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeStackUpdateFromGit"></a>
# **Invoke-EdgeStackUpdateFromGit**
> void Invoke-EdgeStackUpdateFromGit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update git configuration and pulls the repository

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

$Id = 56 # Int32 | Stack identifier
$GittypesGitAuthentication = Initialize-GittypesGitAuthentication -AuthorizationType "0" -GitCredentialID 0 -Password "MyPassword" -Username "MyUsername"
$PortainerAutoUpdateSettings = Initialize-PortainerAutoUpdateSettings -ForcePullImage $false -ForceUpdate $false -Interval "1m30s" -JobID "15" -Webhook "05de31a2-79fa-4644-9c12-faa67e5c49f0"
$EdgestacksDeployerOptionsPayload = Initialize-EdgestacksDeployerOptionsPayload -Prune $false -RemoveVolumes $false
$PortainerPair = Initialize-PortainerPair -Name "name" -Value "value"
$PortainereeEdgeStaggerConfig = Initialize-PortainereeEdgeStaggerConfig -DeviceNumber 0 -DeviceNumberIncrementBy 0 -DeviceNumberStartFrom 0 -StaggerOption "0" -StaggerParallelOption "0" -Timeout "5" -UpdateDelay "5" -UpdateFailureAction "0"
$EdgestacksStackGitUpdatePayload = Initialize-EdgestacksStackGitUpdatePayload -Atomic $true -Authentication $GittypesGitAuthentication -AutoUpdate $PortainerAutoUpdateSettings -DeployerOptions $EdgestacksDeployerOptionsPayload -DeploymentType "0" -EnvVars $PortainerPair -GroupIds 0 -PrePullImage $false -RePullImage $false -RefName "MyRefName" -Registries 0 -RepullImageAndRedeploy $false -RetryDeploy $false -RetryPeriod 0 -StaggerConfig $PortainereeEdgeStaggerConfig -Timeout "5m0s" -UpdateVersion $false -ValuesFiles "MyValuesFiles" # EdgestacksStackGitUpdatePayload | Git configurations

# Update git configuration and pulls the repository
try {
    $Result = Invoke-EdgeStackUpdateFromGit -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeStackUpdateFromGit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Stack identifier | 
 **Body** | [**EdgestacksStackGitUpdatePayload**](EdgestacksStackGitUpdatePayload.md)| Git configurations | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
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

