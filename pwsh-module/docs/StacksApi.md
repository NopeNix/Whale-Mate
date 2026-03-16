# PSOpenAPITools.PSOpenAPITools\Api.StacksApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-EdgeStackWebhookInvoke**](StacksApi.md#Invoke-EdgeStackWebhookInvoke) | **POST** /edge_stacks/webhooks/{webhookID} | Webhook for triggering edge stack updates from git
[**Invoke-StackAssociate**](StacksApi.md#Invoke-StackAssociate) | **PUT** /stacks/{id}/associate | Associate an orphaned stack to a new environment(endpoint)
[**Invoke-StackCreateDockerStandaloneFile**](StacksApi.md#Invoke-StackCreateDockerStandaloneFile) | **POST** /stacks/create/standalone/file | Deploy a new compose stack from a file
[**Invoke-StackCreateDockerStandaloneRepository**](StacksApi.md#Invoke-StackCreateDockerStandaloneRepository) | **POST** /stacks/create/standalone/repository | Deploy a new compose stack from repository
[**Invoke-StackCreateDockerStandaloneString**](StacksApi.md#Invoke-StackCreateDockerStandaloneString) | **POST** /stacks/create/standalone/string | Deploy a new compose stack from a text
[**Invoke-StackCreateDockerSwarmFile**](StacksApi.md#Invoke-StackCreateDockerSwarmFile) | **POST** /stacks/create/swarm/file | Deploy a new swarm stack from a file
[**Invoke-StackCreateDockerSwarmRepository**](StacksApi.md#Invoke-StackCreateDockerSwarmRepository) | **POST** /stacks/create/swarm/repository | Deploy a new swarm stack from a git repository
[**Invoke-StackCreateDockerSwarmString**](StacksApi.md#Invoke-StackCreateDockerSwarmString) | **POST** /stacks/create/swarm/string | Deploy a new swarm stack from a text
[**Invoke-StackCreateKubernetesFile**](StacksApi.md#Invoke-StackCreateKubernetesFile) | **POST** /stacks/create/kubernetes/string | Deploy a new kubernetes stack from a file
[**Invoke-StackCreateKubernetesGit**](StacksApi.md#Invoke-StackCreateKubernetesGit) | **POST** /stacks/create/kubernetes/repository | Deploy a new kubernetes stack from a git repository
[**Invoke-StackCreateKubernetesUrl**](StacksApi.md#Invoke-StackCreateKubernetesUrl) | **POST** /stacks/create/kubernetes/url | Deploy a new kubernetes stack from a url
[**Invoke-StackDelete**](StacksApi.md#Invoke-StackDelete) | **DELETE** /stacks/{id} | Remove a stack
[**Invoke-StackDeleteKubernetesByName**](StacksApi.md#Invoke-StackDeleteKubernetesByName) | **DELETE** /stacks/name/{name} | Remove Kubernetes stacks by name
[**Invoke-StackFileInspect**](StacksApi.md#Invoke-StackFileInspect) | **GET** /stacks/{id}/file | Retrieve the content of the Stack file for the specified stack
[**Invoke-StackGitRedeploy**](StacksApi.md#Invoke-StackGitRedeploy) | **PUT** /stacks/{id}/git/redeploy | Redeploy a stack
[**Invoke-StackImagesStatus**](StacksApi.md#Invoke-StackImagesStatus) | **GET** /stacks/{id}/images_status | Fetch image status for stack
[**Invoke-StackInspect**](StacksApi.md#Invoke-StackInspect) | **GET** /stacks/{id} | Inspect a stack
[**Invoke-StackList**](StacksApi.md#Invoke-StackList) | **GET** /stacks | List stacks
[**Invoke-StackMigrate**](StacksApi.md#Invoke-StackMigrate) | **POST** /stacks/{id}/migrate | Migrate a stack to another environment(endpoint)
[**Invoke-StackStart**](StacksApi.md#Invoke-StackStart) | **POST** /stacks/{id}/start | Starts a stopped Stack
[**Invoke-StackStop**](StacksApi.md#Invoke-StackStop) | **POST** /stacks/{id}/stop | Stops a stopped Stack
[**Invoke-StackUpdate**](StacksApi.md#Invoke-StackUpdate) | **PUT** /stacks/{id} | Update a stack
[**Invoke-StackUpdateGit**](StacksApi.md#Invoke-StackUpdateGit) | **POST** /stacks/{id}/git | Update a stack&#39;s Git configs
[**Invoke-StacksWebhookInvoke**](StacksApi.md#Invoke-StacksWebhookInvoke) | **POST** /stacks/webhooks/{webhookID} | Webhook for triggering stack updates from git


<a id="Invoke-EdgeStackWebhookInvoke"></a>
# **Invoke-EdgeStackWebhookInvoke**
> void Invoke-EdgeStackWebhookInvoke<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WebhookID] <String><br>

Webhook for triggering edge stack updates from git

**Access policy**: public

### Example
```powershell
$WebhookID = "MyWebhookID" # String | Stack identifier

# Webhook for triggering edge stack updates from git
try {
    $Result = Invoke-EdgeStackWebhookInvoke -WebhookID $WebhookID
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeStackWebhookInvoke: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WebhookID** | **String**| Stack identifier | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackAssociate"></a>
# **Invoke-StackAssociate**
> PortainereeStack Invoke-StackAssociate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SwarmId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrphanedRunning] <Boolean><br>

Associate an orphaned stack to a new environment(endpoint)

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

$Id = 56 # Int32 | Stack identifier
$EndpointId = 56 # Int32 | Environment identifier
$SwarmId = 56 # Int32 | Swarm identifier
$OrphanedRunning = $true # Boolean | Indicates whether the stack is orphaned

# Associate an orphaned stack to a new environment(endpoint)
try {
    $Result = Invoke-StackAssociate -Id $Id -EndpointId $EndpointId -SwarmId $SwarmId -OrphanedRunning $OrphanedRunning
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackAssociate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Stack identifier | 
 **EndpointId** | **Int32**| Environment identifier | 
 **SwarmId** | **Int32**| Swarm identifier | 
 **OrphanedRunning** | **Boolean**| Indicates whether the stack is orphaned | 

### Return type

[**PortainereeStack**](PortainereeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackCreateDockerStandaloneFile"></a>
# **Invoke-StackCreateDockerStandaloneFile**
> PortainereeStack Invoke-StackCreateDockerStandaloneFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Env] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Deploy a new compose stack from a file

Deploy a new stack into a Docker environment specified via the environment identifier. **Access policy**: authenticated

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

$EndpointId = 56 # Int32 | Identifier of the environment that will be used to deploy the stack
$Name = "MyName" # String | Name of the stack
$Env = "MyEnv" # String | Environment variables passed during deployment, represented as a JSON array [{'name': 'name', 'value': 'value'}]. (optional)
$File =  # System.IO.FileInfo | Stack file (optional)

# Deploy a new compose stack from a file
try {
    $Result = Invoke-StackCreateDockerStandaloneFile -EndpointId $EndpointId -Name $Name -Env $Env -File $File
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackCreateDockerStandaloneFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EndpointId** | **Int32**| Identifier of the environment that will be used to deploy the stack | 
 **Name** | **String**| Name of the stack | 
 **Env** | **String**| Environment variables passed during deployment, represented as a JSON array [{&#39;name&#39;: &#39;name&#39;, &#39;value&#39;: &#39;value&#39;}]. | [optional] 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| Stack file | [optional] 

### Return type

[**PortainereeStack**](PortainereeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackCreateDockerStandaloneRepository"></a>
# **Invoke-StackCreateDockerStandaloneRepository**
> PortainereeStack Invoke-StackCreateDockerStandaloneRepository<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Deploy a new compose stack from repository

Deploy a new stack into a Docker environment specified via the environment identifier. **Access policy**: authenticated

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

$EndpointId = 56 # Int32 | Identifier of the environment that will be used to deploy the stack
$PortainerAutoUpdateSettings = Initialize-PortainerAutoUpdateSettings -ForcePullImage $false -ForceUpdate $false -Interval "1m30s" -JobID "15" -Webhook "05de31a2-79fa-4644-9c12-faa67e5c49f0"
$PortainerPair = Initialize-PortainerPair -Name "name" -Value "value"
$StacksComposeStackFromGitRepositoryPayload = Initialize-StacksComposeStackFromGitRepositoryPayload -AdditionalFiles "MyAdditionalFiles" -AutoUpdate $PortainerAutoUpdateSettings -ComposeFile "docker-compose.yml" -Env $PortainerPair -FilesystemPath "/tmp" -FromAppTemplate $false -Name "myStack" -Registries 0 -RepositoryAuthentication $true -RepositoryAuthorizationType "0" -RepositoryGitCredentialID 0 -RepositoryPassword "myGitPassword" -RepositoryReferenceName "refs/heads/master" -RepositoryURL "https://github.com/openfaas/faas" -RepositoryUsername "myGitUsername" -SupportRelativePath $false -TLSSkipVerify $false # StacksComposeStackFromGitRepositoryPayload | stack config

# Deploy a new compose stack from repository
try {
    $Result = Invoke-StackCreateDockerStandaloneRepository -EndpointId $EndpointId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackCreateDockerStandaloneRepository: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EndpointId** | **Int32**| Identifier of the environment that will be used to deploy the stack | 
 **Body** | [**StacksComposeStackFromGitRepositoryPayload**](StacksComposeStackFromGitRepositoryPayload.md)| stack config | 

### Return type

[**PortainereeStack**](PortainereeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackCreateDockerStandaloneString"></a>
# **Invoke-StackCreateDockerStandaloneString**
> PortainereeStack Invoke-StackCreateDockerStandaloneString<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Deploy a new compose stack from a text

Deploy a new stack into a Docker environment specified via the environment identifier. **Access policy**: authenticated

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

$EndpointId = 56 # Int32 | Identifier of the environment that will be used to deploy the stack
$PortainerPair = Initialize-PortainerPair -Name "name" -Value "value"
$StacksComposeStackFromFileContentPayload = Initialize-StacksComposeStackFromFileContentPayload -Env $PortainerPair -FromAppTemplate $false -Name "myStack" -Registries 0 -StackFileContent "version: 3
 services:
 web:
 image:nginx" -Webhook "c11fdf23-183e-428a-9bb6-16db01032174" # StacksComposeStackFromFileContentPayload | stack config

# Deploy a new compose stack from a text
try {
    $Result = Invoke-StackCreateDockerStandaloneString -EndpointId $EndpointId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackCreateDockerStandaloneString: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EndpointId** | **Int32**| Identifier of the environment that will be used to deploy the stack | 
 **Body** | [**StacksComposeStackFromFileContentPayload**](StacksComposeStackFromFileContentPayload.md)| stack config | 

### Return type

[**PortainereeStack**](PortainereeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackCreateDockerSwarmFile"></a>
# **Invoke-StackCreateDockerSwarmFile**
> PortainereeStack Invoke-StackCreateDockerSwarmFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SwarmID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Env] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Deploy a new swarm stack from a file

Deploy a new stack into a Docker environment specified via the environment identifier. **Access policy**: authenticated

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

$EndpointId = 56 # Int32 | Identifier of the environment that will be used to deploy the stack
$Name = "MyName" # String | Name of the stack (optional)
$SwarmID = "MySwarmID" # String | Swarm cluster identifier. (optional)
$Env = "MyEnv" # String | Environment variables passed during deployment, represented as a JSON array [{'name': 'name', 'value': 'value'}]. Optional (optional)
$File =  # System.IO.FileInfo | Stack file (optional)

# Deploy a new swarm stack from a file
try {
    $Result = Invoke-StackCreateDockerSwarmFile -EndpointId $EndpointId -Name $Name -SwarmID $SwarmID -Env $Env -File $File
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackCreateDockerSwarmFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EndpointId** | **Int32**| Identifier of the environment that will be used to deploy the stack | 
 **Name** | **String**| Name of the stack | [optional] 
 **SwarmID** | **String**| Swarm cluster identifier. | [optional] 
 **Env** | **String**| Environment variables passed during deployment, represented as a JSON array [{&#39;name&#39;: &#39;name&#39;, &#39;value&#39;: &#39;value&#39;}]. Optional | [optional] 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| Stack file | [optional] 

### Return type

[**PortainereeStack**](PortainereeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackCreateDockerSwarmRepository"></a>
# **Invoke-StackCreateDockerSwarmRepository**
> PortainereeStack Invoke-StackCreateDockerSwarmRepository<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Deploy a new swarm stack from a git repository

Deploy a new stack into a Docker environment specified via the environment identifier. **Access policy**: authenticated

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

$EndpointId = 56 # Int32 | Identifier of the environment that will be used to deploy the stack
$PortainerAutoUpdateSettings = Initialize-PortainerAutoUpdateSettings -ForcePullImage $false -ForceUpdate $false -Interval "1m30s" -JobID "15" -Webhook "05de31a2-79fa-4644-9c12-faa67e5c49f0"
$PortainerPair = Initialize-PortainerPair -Name "name" -Value "value"
$StacksSwarmStackFromGitRepositoryPayload = Initialize-StacksSwarmStackFromGitRepositoryPayload -AdditionalFiles "MyAdditionalFiles" -AutoUpdate $PortainerAutoUpdateSettings -ComposeFile "docker-compose.yml" -Env $PortainerPair -FilesystemPath "/tmp" -FromAppTemplate $false -Name "myStack" -Registries 0 -RepositoryAuthentication $true -RepositoryAuthorizationType "0" -RepositoryGitCredentialID 0 -RepositoryPassword "myGitPassword" -RepositoryReferenceName "refs/heads/master" -RepositoryURL "https://github.com/openfaas/faas" -RepositoryUsername "myGitUsername" -SupportRelativePath $false -SwarmID "jpofkc0i9uo9wtx1zesuk649w" -TLSSkipVerify $false # StacksSwarmStackFromGitRepositoryPayload | stack config

# Deploy a new swarm stack from a git repository
try {
    $Result = Invoke-StackCreateDockerSwarmRepository -EndpointId $EndpointId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackCreateDockerSwarmRepository: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EndpointId** | **Int32**| Identifier of the environment that will be used to deploy the stack | 
 **Body** | [**StacksSwarmStackFromGitRepositoryPayload**](StacksSwarmStackFromGitRepositoryPayload.md)| stack config | 

### Return type

[**PortainereeStack**](PortainereeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackCreateDockerSwarmString"></a>
# **Invoke-StackCreateDockerSwarmString**
> PortainereeStack Invoke-StackCreateDockerSwarmString<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Deploy a new swarm stack from a text

Deploy a new stack into a Docker environment specified via the environment identifier. **Access policy**: authenticated

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

$EndpointId = 56 # Int32 | Identifier of the environment that will be used to deploy the stack
$PortainerPair = Initialize-PortainerPair -Name "name" -Value "value"
$StacksSwarmStackFromFileContentPayload = Initialize-StacksSwarmStackFromFileContentPayload -Env $PortainerPair -FromAppTemplate $false -Name "myStack" -Registries 0 -StackFileContent "version: 3
 services:
 web:
 image:nginx" -SwarmID "jpofkc0i9uo9wtx1zesuk649w" -Webhook "c11fdf23-183e-428a-9bb6-16db01032174" # StacksSwarmStackFromFileContentPayload | stack config

# Deploy a new swarm stack from a text
try {
    $Result = Invoke-StackCreateDockerSwarmString -EndpointId $EndpointId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackCreateDockerSwarmString: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EndpointId** | **Int32**| Identifier of the environment that will be used to deploy the stack | 
 **Body** | [**StacksSwarmStackFromFileContentPayload**](StacksSwarmStackFromFileContentPayload.md)| stack config | 

### Return type

[**PortainereeStack**](PortainereeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackCreateKubernetesFile"></a>
# **Invoke-StackCreateKubernetesFile**
> PortainereeStack Invoke-StackCreateKubernetesFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Deploy a new kubernetes stack from a file

Deploy a new stack into a Docker environment specified via the environment identifier. **Access policy**: authenticated

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

$EndpointId = 56 # Int32 | Identifier of the environment that will be used to deploy the stack
$StacksKubernetesStringDeploymentPayload = Initialize-StacksKubernetesStringDeploymentPayload -ComposeFormat $false -FromAppTemplate $false -Namespace "MyNamespace" -StackFileContent "MyStackFileContent" -StackName "MyStackName" # StacksKubernetesStringDeploymentPayload | stack config

# Deploy a new kubernetes stack from a file
try {
    $Result = Invoke-StackCreateKubernetesFile -EndpointId $EndpointId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackCreateKubernetesFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EndpointId** | **Int32**| Identifier of the environment that will be used to deploy the stack | 
 **Body** | [**StacksKubernetesStringDeploymentPayload**](StacksKubernetesStringDeploymentPayload.md)| stack config | 

### Return type

[**PortainereeStack**](PortainereeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackCreateKubernetesGit"></a>
# **Invoke-StackCreateKubernetesGit**
> PortainereeStack Invoke-StackCreateKubernetesGit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Deploy a new kubernetes stack from a git repository

Deploy a new stack into a Docker environment specified via the environment identifier. **Access policy**: authenticated

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

$EndpointId = 56 # Int32 | Identifier of the environment that will be used to deploy the stack
$PortainerAutoUpdateSettings = Initialize-PortainerAutoUpdateSettings -ForcePullImage $false -ForceUpdate $false -Interval "1m30s" -JobID "15" -Webhook "05de31a2-79fa-4644-9c12-faa67e5c49f0"
$StacksKubernetesGitDeploymentPayload = Initialize-StacksKubernetesGitDeploymentPayload -AdditionalFiles "MyAdditionalFiles" -AutoUpdate $PortainerAutoUpdateSettings -ComposeFormat $false -HelmChartPath "MyHelmChartPath" -HelmValuesFiles "MyHelmValuesFiles" -ManifestFile "MyManifestFile" -Namespace "MyNamespace" -RepositoryAuthentication $false -RepositoryAuthorizationType "0" -RepositoryGitCredentialID 0 -RepositoryPassword "MyRepositoryPassword" -RepositoryReferenceName "MyRepositoryReferenceName" -RepositoryURL "MyRepositoryURL" -RepositoryUsername "MyRepositoryUsername" -StackName "MyStackName" -TLSSkipVerify $false # StacksKubernetesGitDeploymentPayload | stack config

# Deploy a new kubernetes stack from a git repository
try {
    $Result = Invoke-StackCreateKubernetesGit -EndpointId $EndpointId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackCreateKubernetesGit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EndpointId** | **Int32**| Identifier of the environment that will be used to deploy the stack | 
 **Body** | [**StacksKubernetesGitDeploymentPayload**](StacksKubernetesGitDeploymentPayload.md)| stack config | 

### Return type

[**PortainereeStack**](PortainereeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackCreateKubernetesUrl"></a>
# **Invoke-StackCreateKubernetesUrl**
> PortainereeStack Invoke-StackCreateKubernetesUrl<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Deploy a new kubernetes stack from a url

Deploy a new stack into a Docker environment specified via the environment identifier. **Access policy**: authenticated

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

$EndpointId = 56 # Int32 | Identifier of the environment that will be used to deploy the stack
$StacksKubernetesManifestURLDeploymentPayload = Initialize-StacksKubernetesManifestURLDeploymentPayload -ComposeFormat $false -ManifestURL "MyManifestURL" -Namespace "MyNamespace" -StackName "MyStackName" # StacksKubernetesManifestURLDeploymentPayload | stack config

# Deploy a new kubernetes stack from a url
try {
    $Result = Invoke-StackCreateKubernetesUrl -EndpointId $EndpointId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackCreateKubernetesUrl: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EndpointId** | **Int32**| Identifier of the environment that will be used to deploy the stack | 
 **Body** | [**StacksKubernetesManifestURLDeploymentPayload**](StacksKubernetesManifestURLDeploymentPayload.md)| stack config | 

### Return type

[**PortainereeStack**](PortainereeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackDelete"></a>
# **Invoke-StackDelete**
> void Invoke-StackDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-External] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RemoveVolumes] <System.Nullable[Boolean]><br>

Remove a stack

Remove a stack. **Access policy**: restricted

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
$EndpointId = 56 # Int32 | Environment identifier
$External = $true # Boolean | Set to true to delete an external stack. Only external Swarm stacks are supported (optional)
$RemoveVolumes = $true # Boolean | Set to true to delete named volumes declared in the stack file and anonymous volumes attached to containers. Only affects Docker Standalone stacks. (optional)

# Remove a stack
try {
    $Result = Invoke-StackDelete -Id $Id -EndpointId $EndpointId -External $External -RemoveVolumes $RemoveVolumes
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Stack identifier | 
 **EndpointId** | **Int32**| Environment identifier | 
 **External** | **Boolean**| Set to true to delete an external stack. Only external Swarm stacks are supported | [optional] 
 **RemoveVolumes** | **Boolean**| Set to true to delete named volumes declared in the stack file and anonymous volumes attached to containers. Only affects Docker Standalone stacks. | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackDeleteKubernetesByName"></a>
# **Invoke-StackDeleteKubernetesByName**
> void Invoke-StackDeleteKubernetesByName<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-External] <System.Nullable[Boolean]><br>

Remove Kubernetes stacks by name

Remove a stack. **Access policy**: restricted

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

$Name = "MyName" # String | Stack name
$EndpointId = 56 # Int32 | Environment identifier
$External = $true # Boolean | Set to true to delete an external stack. Only external Swarm stacks are supported (optional)

# Remove Kubernetes stacks by name
try {
    $Result = Invoke-StackDeleteKubernetesByName -Name $Name -EndpointId $EndpointId -External $External
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackDeleteKubernetesByName: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Stack name | 
 **EndpointId** | **Int32**| Environment identifier | 
 **External** | **Boolean**| Set to true to delete an external stack. Only external Swarm stacks are supported | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackFileInspect"></a>
# **Invoke-StackFileInspect**
> StacksStackFileResponse Invoke-StackFileInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CommitHash] <String><br>

Retrieve the content of the Stack file for the specified stack

Get Stack file content. **Access policy**: restricted

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
$Version = 56 # Int32 | Stack file version maintained by Portainer. If both version and commitHash are provided, the commitHash will be used (optional)
$CommitHash = "MyCommitHash" # String | Git repository commit hash. If both version and commitHash are provided, the commitHash will be used (optional)

# Retrieve the content of the Stack file for the specified stack
try {
    $Result = Invoke-StackFileInspect -Id $Id -Version $Version -CommitHash $CommitHash
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackFileInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Stack identifier | 
 **Version** | **Int32**| Stack file version maintained by Portainer. If both version and commitHash are provided, the commitHash will be used | [optional] 
 **CommitHash** | **String**| Git repository commit hash. If both version and commitHash are provided, the commitHash will be used | [optional] 

### Return type

[**StacksStackFileResponse**](StacksStackFileResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackGitRedeploy"></a>
# **Invoke-StackGitRedeploy**
> PortainereeStack Invoke-StackGitRedeploy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <System.Nullable[Int32]><br>

Redeploy a stack

Pull and redeploy a stack via Git **Access policy**: authenticated

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
$PortainerPair = Initialize-PortainerPair -Name "name" -Value "value"
$StacksStackGitRedployPayload = Initialize-StacksStackGitRedployPayload -Env $PortainerPair -Prune $false -PullImage $false -RepositoryAuthentication $false -RepositoryAuthorizationType "0" -RepositoryGitCredentialID 0 -RepositoryPassword "MyRepositoryPassword" -RepositoryReferenceName "MyRepositoryReferenceName" -RepositoryUsername "MyRepositoryUsername" -RepullImageAndRedeploy $false -StackName "MyStackName" # StacksStackGitRedployPayload | Git configs for pull and redeploy of a stack. **StackName** may only be populated for Kuberenetes stacks, and if specified with a blank string, it will be set to blank
$EndpointId = 56 # Int32 | Stacks created before version 1.18.0 might not have an associated environment(endpoint) identifier. Use this optional parameter to set the environment(endpoint) identifier used by the stack. (optional)

# Redeploy a stack
try {
    $Result = Invoke-StackGitRedeploy -Id $Id -Body $Body -EndpointId $EndpointId
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackGitRedeploy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Stack identifier | 
 **Body** | [**StacksStackGitRedployPayload**](StacksStackGitRedployPayload.md)| Git configs for pull and redeploy of a stack. **StackName** may only be populated for Kuberenetes stacks, and if specified with a blank string, it will be set to blank | 
 **EndpointId** | **Int32**| Stacks created before version 1.18.0 might not have an associated environment(endpoint) identifier. Use this optional parameter to set the environment(endpoint) identifier used by the stack. | [optional] 

### Return type

[**PortainereeStack**](PortainereeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackImagesStatus"></a>
# **Invoke-StackImagesStatus**
> ImagesStatusResponse Invoke-StackImagesStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Refresh] <System.Nullable[Boolean]><br>

Fetch image status for stack

**Access policy**:

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$Id = 56 # Int32 | Stack identifier
$Refresh = $true # Boolean | Refresh will force a refresh of the image status cache (optional)

# Fetch image status for stack
try {
    $Result = Invoke-StackImagesStatus -Id $Id -Refresh $Refresh
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackImagesStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Stack identifier | 
 **Refresh** | **Boolean**| Refresh will force a refresh of the image status cache | [optional] 

### Return type

[**ImagesStatusResponse**](ImagesStatusResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackInspect"></a>
# **Invoke-StackInspect**
> PortainereeStack Invoke-StackInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Inspect a stack

Retrieve details about a stack. **Access policy**: restricted

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

# Inspect a stack
try {
    $Result = Invoke-StackInspect -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Stack identifier | 

### Return type

[**PortainereeStack**](PortainereeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackList"></a>
# **Invoke-StackList**
> PortainereeStack[] Invoke-StackList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List stacks

List all stacks based on the current user authorizations. Will return all stacks if using an administrator account otherwise it will only return the list of stacks the user have access to. Limited stacks will not be returned by this endpoint. **Access policy**: authenticated

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

$Filters = "MyFilters" # String | Filters to process on the stack list. Encoded as JSON (a map[string]string). For example, {'SwarmID': 'jpofkc0i9uo9wtx1zesuk649w'} will only return stacks that are part of the specified Swarm cluster. Available filters: EndpointID, SwarmID. (optional)

# List stacks
try {
    $Result = Invoke-StackList -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filters** | **String**| Filters to process on the stack list. Encoded as JSON (a map[string]string). For example, {&#39;SwarmID&#39;: &#39;jpofkc0i9uo9wtx1zesuk649w&#39;} will only return stacks that are part of the specified Swarm cluster. Available filters: EndpointID, SwarmID. | [optional] 

### Return type

[**PortainereeStack[]**](PortainereeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackMigrate"></a>
# **Invoke-StackMigrate**
> PortainereeStack Invoke-StackMigrate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <System.Nullable[Int32]><br>

Migrate a stack to another environment(endpoint)

Migrate a stack from an environment(endpoint) to another environment(endpoint). It will re-create the stack inside the target environment(endpoint) before removing the original stack. **Access policy**: authenticated

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
$StacksStackMigratePayload = Initialize-StacksStackMigratePayload -EndpointID 2 -Name "new-stack" -SwarmID "jpofkc0i9uo9wtx1zesuk649w" # StacksStackMigratePayload | Stack migration details
$EndpointId = 56 # Int32 | Stacks created before version 1.18.0 might not have an associated environment(endpoint) identifier. Use this optional parameter to set the environment(endpoint) identifier used by the stack. (optional)

# Migrate a stack to another environment(endpoint)
try {
    $Result = Invoke-StackMigrate -Id $Id -Body $Body -EndpointId $EndpointId
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackMigrate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Stack identifier | 
 **Body** | [**StacksStackMigratePayload**](StacksStackMigratePayload.md)| Stack migration details | 
 **EndpointId** | **Int32**| Stacks created before version 1.18.0 might not have an associated environment(endpoint) identifier. Use this optional parameter to set the environment(endpoint) identifier used by the stack. | [optional] 

### Return type

[**PortainereeStack**](PortainereeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackStart"></a>
# **Invoke-StackStart**
> PortainereeStack Invoke-StackStart<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>

Starts a stopped Stack

Starts a stopped Stack. **Access policy**: authenticated

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
$EndpointId = 56 # Int32 | Environment identifier

# Starts a stopped Stack
try {
    $Result = Invoke-StackStart -Id $Id -EndpointId $EndpointId
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackStart: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Stack identifier | 
 **EndpointId** | **Int32**| Environment identifier | 

### Return type

[**PortainereeStack**](PortainereeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackStop"></a>
# **Invoke-StackStop**
> PortainereeStack Invoke-StackStop<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>

Stops a stopped Stack

Stops a stopped Stack. **Access policy**: authenticated

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
$EndpointId = 56 # Int32 | Environment identifier

# Stops a stopped Stack
try {
    $Result = Invoke-StackStop -Id $Id -EndpointId $EndpointId
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackStop: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Stack identifier | 
 **EndpointId** | **Int32**| Environment identifier | 

### Return type

[**PortainereeStack**](PortainereeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackUpdate"></a>
# **Invoke-StackUpdate**
> PortainereeStack Invoke-StackUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update a stack

Update a stack, only for file based stacks. **Access policy**: authenticated

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
$EndpointId = 56 # Int32 | Environment identifier
$PortainerPair = Initialize-PortainerPair -Name "name" -Value "value"
$StacksUpdateStackPayload = Initialize-StacksUpdateStackPayload -Env $PortainerPair -Prune $true -PullImage $false -Registries 0 -RepullImageAndRedeploy $false -RollbackTo 0 -StackFileContent "version: 3
 services:
 web:
 image:nginx" -Webhook "c11fdf23-183e-428a-9bb6-16db01032174" # StacksUpdateStackPayload | Stack details

# Update a stack
try {
    $Result = Invoke-StackUpdate -Id $Id -EndpointId $EndpointId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Stack identifier | 
 **EndpointId** | **Int32**| Environment identifier | 
 **Body** | [**StacksUpdateStackPayload**](StacksUpdateStackPayload.md)| Stack details | 

### Return type

[**PortainereeStack**](PortainereeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StackUpdateGit"></a>
# **Invoke-StackUpdateGit**
> PortainereeStack Invoke-StackUpdateGit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndpointId] <System.Nullable[Int32]><br>

Update a stack's Git configs

Update the Git settings in a stack, e.g., RepositoryReferenceName and AutoUpdate **Access policy**: authenticated

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
$PortainerAutoUpdateSettings = Initialize-PortainerAutoUpdateSettings -ForcePullImage $false -ForceUpdate $false -Interval "1m30s" -JobID "15" -Webhook "05de31a2-79fa-4644-9c12-faa67e5c49f0"
$PortainerPair = Initialize-PortainerPair -Name "name" -Value "value"
$StacksStackGitUpdatePayload = Initialize-StacksStackGitUpdatePayload -Atomic $false -AutoUpdate $PortainerAutoUpdateSettings -Env $PortainerPair -HelmChartPath "MyHelmChartPath" -HelmValuesFiles "MyHelmValuesFiles" -Prune $false -Registries 0 -RepositoryAuthentication $false -RepositoryAuthorizationType "0" -RepositoryGitCredentialID 0 -RepositoryPassword "MyRepositoryPassword" -RepositoryReferenceName "MyRepositoryReferenceName" -RepositoryUsername "MyRepositoryUsername" -TLSSkipVerify $false # StacksStackGitUpdatePayload | Git configs for pull and redeploy a stack
$EndpointId = 56 # Int32 | Stacks created before version 1.18.0 might not have an associated environment(endpoint) identifier. Use this optional parameter to set the environment(endpoint) identifier used by the stack. (optional)

# Update a stack's Git configs
try {
    $Result = Invoke-StackUpdateGit -Id $Id -Body $Body -EndpointId $EndpointId
} catch {
    Write-Host ("Exception occurred when calling Invoke-StackUpdateGit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Stack identifier | 
 **Body** | [**StacksStackGitUpdatePayload**](StacksStackGitUpdatePayload.md)| Git configs for pull and redeploy a stack | 
 **EndpointId** | **Int32**| Stacks created before version 1.18.0 might not have an associated environment(endpoint) identifier. Use this optional parameter to set the environment(endpoint) identifier used by the stack. | [optional] 

### Return type

[**PortainereeStack**](PortainereeStack.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-StacksWebhookInvoke"></a>
# **Invoke-StacksWebhookInvoke**
> void Invoke-StacksWebhookInvoke<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WebhookID] <String><br>

Webhook for triggering stack updates from git

**Access policy**: public

### Example
```powershell
$WebhookID = "MyWebhookID" # String | Stack identifier

# Webhook for triggering stack updates from git
try {
    $Result = Invoke-StacksWebhookInvoke -WebhookID $WebhookID
} catch {
    Write-Host ("Exception occurred when calling Invoke-StacksWebhookInvoke: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WebhookID** | **String**| Stack identifier | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

