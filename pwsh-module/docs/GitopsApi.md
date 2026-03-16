# PSOpenAPITools.PSOpenAPITools\Api.GitopsApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GitOperationRepoFilePreview**](GitopsApi.md#Invoke-GitOperationRepoFilePreview) | **POST** /gitops/repo/file/preview | preview the content of target file in the git repository
[**Invoke-GitOperationRepoFilesSearch**](GitopsApi.md#Invoke-GitOperationRepoFilesSearch) | **POST** /gitops/repo/files/search | Search the file path from a git repository files with specified extensions
[**Invoke-GitOperationRepoHelmValues**](GitopsApi.md#Invoke-GitOperationRepoHelmValues) | **POST** /gitops/repo/helm/values | Preview merged Helm values files from git repository
[**Invoke-GitOperationRepoRefs**](GitopsApi.md#Invoke-GitOperationRepoRefs) | **POST** /gitops/repo/refs | List the refs of a git repository


<a id="Invoke-GitOperationRepoFilePreview"></a>
# **Invoke-GitOperationRepoFilePreview**
> GitopsFileResponse Invoke-GitOperationRepoFilePreview<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

preview the content of target file in the git repository

Retrieve the compose file content based on git repository configuration **Access policy**: authenticated

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

$GitopsRepositoryFilePreviewPayload = Initialize-GitopsRepositoryFilePreviewPayload -TLSSkipVerify $false -AuthorizationType "0" -GitCredentialID 0 -Password "myGitPassword" -Reference "refs/heads/master" -Repository "https://github.com/openfaas/faas" -TargetFile "docker-compose.yml" -Username "myGitUsername" # GitopsRepositoryFilePreviewPayload | Template details

# preview the content of target file in the git repository
try {
    $Result = Invoke-GitOperationRepoFilePreview -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-GitOperationRepoFilePreview: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**GitopsRepositoryFilePreviewPayload**](GitopsRepositoryFilePreviewPayload.md)| Template details | 

### Return type

[**GitopsFileResponse**](GitopsFileResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GitOperationRepoFilesSearch"></a>
# **Invoke-GitOperationRepoFilesSearch**
> String[] Invoke-GitOperationRepoFilesSearch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Force] <System.Nullable[Boolean]><br>

Search the file path from a git repository files with specified extensions

Search the file path from the git repository based on partial or completed filename **Access policy**: authenticated

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

$GitopsRepositoryFileSearchPayload = Initialize-GitopsRepositoryFileSearchPayload -TLSSkipVerify $false -AuthorizationType "0" -CreatedFromCustomTemplateID 0 -DirOnly $false -GitCredentialID 0 -Include "json,yml" -Keyword "docker-compose" -Password "MyPassword" -Reference "refs/heads/develop" -Repository "MyRepository" -Username "MyUsername" # GitopsRepositoryFileSearchPayload | details
$Force = $true # Boolean | list the results without using cache (optional)

# Search the file path from a git repository files with specified extensions
try {
    $Result = Invoke-GitOperationRepoFilesSearch -Body $Body -Force $Force
} catch {
    Write-Host ("Exception occurred when calling Invoke-GitOperationRepoFilesSearch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**GitopsRepositoryFileSearchPayload**](GitopsRepositoryFileSearchPayload.md)| details | 
 **Force** | **Boolean**| list the results without using cache | [optional] 

### Return type

**String[]**

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GitOperationRepoHelmValues"></a>
# **Invoke-GitOperationRepoHelmValues**
> GitopsHelmValuesPreviewResponse Invoke-GitOperationRepoHelmValues<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Preview merged Helm values files from git repository

Load and merge multiple Helm values files from a Git repository, mimicking Helm CLI behavior **Access policy**: authenticated

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

$GitopsHelmValuesPreviewPayload = Initialize-GitopsHelmValuesPreviewPayload -AuthorizationType "0" -GitCredentialID 0 -Password "myGitPassword" -Reference "refs/heads/main" -Repository "https://github.com/example/charts" -TlsSkipVerify $false -Username "myGitUsername" -ValuesFiles "MyValuesFiles" # GitopsHelmValuesPreviewPayload | Helm values preview request

# Preview merged Helm values files from git repository
try {
    $Result = Invoke-GitOperationRepoHelmValues -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-GitOperationRepoHelmValues: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**GitopsHelmValuesPreviewPayload**](GitopsHelmValuesPreviewPayload.md)| Helm values preview request | 

### Return type

[**GitopsHelmValuesPreviewResponse**](GitopsHelmValuesPreviewResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GitOperationRepoRefs"></a>
# **Invoke-GitOperationRepoRefs**
> String[] Invoke-GitOperationRepoRefs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Force] <System.Nullable[Boolean]><br>

List the refs of a git repository

List all the refs of a git repository Will return all refs of a git repository **Access policy**: authenticated

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

$GitopsRepositoryReferenceListPayload = Initialize-GitopsRepositoryReferenceListPayload -TLSSkipVerify $false -AuthorizationType "0" -CreatedFromCustomTemplateID 0 -GitCredentialID 0 -Password "MyPassword" -Repository "MyRepository" -StackID 0 -Username "MyUsername" # GitopsRepositoryReferenceListPayload | details
$Force = $true # Boolean | list the results without using cache (optional)

# List the refs of a git repository
try {
    $Result = Invoke-GitOperationRepoRefs -Body $Body -Force $Force
} catch {
    Write-Host ("Exception occurred when calling Invoke-GitOperationRepoRefs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**GitopsRepositoryReferenceListPayload**](GitopsRepositoryReferenceListPayload.md)| details | 
 **Force** | **Boolean**| list the results without using cache | [optional] 

### Return type

**String[]**

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

