# PSOpenAPITools.PSOpenAPITools\Api.HelmApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-HelmDelete**](HelmApi.md#Invoke-HelmDelete) | **DELETE** /endpoints/{id}/kubernetes/helm/{release} | Delete Helm Release
[**Invoke-HelmGet**](HelmApi.md#Invoke-HelmGet) | **GET** /endpoints/{id}/kubernetes/helm/{name} | Get a helm release
[**Invoke-HelmGetHistory**](HelmApi.md#Invoke-HelmGetHistory) | **GET** /endpoints/{id}/kubernetes/helm/{release}/history | Get a historical list of releases
[**Invoke-HelmGitDryRun**](HelmApi.md#Invoke-HelmGitDryRun) | **POST** /endpoints/{id}/kubernetes/helm/git/dryrun | Helm Git Dry Run
[**Invoke-HelmInstall**](HelmApi.md#Invoke-HelmInstall) | **POST** /endpoints/{id}/kubernetes/helm | Install Helm Chart
[**Invoke-HelmList**](HelmApi.md#Invoke-HelmList) | **GET** /endpoints/{id}/kubernetes/helm | List Helm Releases
[**Invoke-HelmRepoSearch**](HelmApi.md#Invoke-HelmRepoSearch) | **GET** /templates/helm | Search Helm Charts
[**Invoke-HelmRollback**](HelmApi.md#Invoke-HelmRollback) | **POST** /endpoints/{id}/kubernetes/helm/{release}/rollback | Rollback a helm release
[**Invoke-HelmShow**](HelmApi.md#Invoke-HelmShow) | **GET** /templates/helm/{command} | Show Helm Chart Information
[**Invoke-HelmUserRepositoriesList**](HelmApi.md#Invoke-HelmUserRepositoriesList) | **GET** /users/{id}/helm/repositories | List a users helm repositories
[**Invoke-HelmUserRepositoryCreate**](HelmApi.md#Invoke-HelmUserRepositoryCreate) | **POST** /users/{id}/helm/repositories | Create a user helm repository
[**Invoke-HelmUserRepositoryDelete**](HelmApi.md#Invoke-HelmUserRepositoryDelete) | **DELETE** /users/{id}/helm/repositories/{repositoryID} | Delete a users helm repository


<a id="Invoke-HelmDelete"></a>
# **Invoke-HelmDelete**
> void Invoke-HelmDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Release] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>

Delete Helm Release

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
$Release = "MyRelease" # String | The name of the release/application to uninstall
$Namespace = "MyNamespace" # String | An optional namespace (optional)

# Delete Helm Release
try {
    $Result = Invoke-HelmDelete -Id $Id -Release $Release -Namespace $Namespace
} catch {
    Write-Host ("Exception occurred when calling Invoke-HelmDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 
 **Release** | **String**| The name of the release/application to uninstall | 
 **Namespace** | **String**| An optional namespace | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-HelmGet"></a>
# **Invoke-HelmGet**
> GithubComPortainerPortainerPkgLibhelmReleaseRelease Invoke-HelmGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ShowResources] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Revision] <System.Nullable[Int32]><br>

Get a helm release

Get details of a helm release by release name **Access policy**: authenticated

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
$Name = "MyName" # String | Helm release name
$Namespace = "MyNamespace" # String | specify an optional namespace (optional)
$ShowResources = $true # Boolean | show resources of the release (optional)
$Revision = 56 # Int32 | specify an optional revision (optional)

# Get a helm release
try {
    $Result = Invoke-HelmGet -Id $Id -Name $Name -Namespace $Namespace -ShowResources $ShowResources -Revision $Revision
} catch {
    Write-Host ("Exception occurred when calling Invoke-HelmGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 
 **Name** | **String**| Helm release name | 
 **Namespace** | **String**| specify an optional namespace | [optional] 
 **ShowResources** | **Boolean**| show resources of the release | [optional] 
 **Revision** | **Int32**| specify an optional revision | [optional] 

### Return type

[**GithubComPortainerPortainerPkgLibhelmReleaseRelease**](GithubComPortainerPortainerPkgLibhelmReleaseRelease.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-HelmGetHistory"></a>
# **Invoke-HelmGetHistory**
> GithubComPortainerPortainerPkgLibhelmReleaseRelease[] Invoke-HelmGetHistory<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>

Get a historical list of releases

Get a historical list of releases by release name **Access policy**: authenticated

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
$Name = "MyName" # String | Helm release name
$Namespace = "MyNamespace" # String | specify an optional namespace (optional)

# Get a historical list of releases
try {
    $Result = Invoke-HelmGetHistory -Id $Id -Name $Name -Namespace $Namespace
} catch {
    Write-Host ("Exception occurred when calling Invoke-HelmGetHistory: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 
 **Name** | **String**| Helm release name | 
 **Namespace** | **String**| specify an optional namespace | [optional] 

### Return type

[**GithubComPortainerPortainerPkgLibhelmReleaseRelease[]**](GithubComPortainerPortainerPkgLibhelmReleaseRelease.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-HelmGitDryRun"></a>
# **Invoke-HelmGitDryRun**
> GithubComPortainerPortainerPkgLibhelmReleaseRelease Invoke-HelmGitDryRun<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Payload] <PSCustomObject><br>

Helm Git Dry Run

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
$HelmGitHelmDryRunPayload = Initialize-HelmGitHelmDryRunPayload -HelmChartPath "MyHelmChartPath" -HelmValuesFiles "MyHelmValuesFiles" -Name "MyName" -Namespace "MyNamespace" -RepositoryAuthentication $false -RepositoryAuthorizationType "0" -RepositoryGitCredentialID 0 -RepositoryPassword "MyRepositoryPassword" -RepositoryReferenceName "MyRepositoryReferenceName" -RepositoryURL "MyRepositoryURL" -RepositoryUsername "MyRepositoryUsername" -TlsSkipVerify $false # HelmGitHelmDryRunPayload | Git Helm dry run details

# Helm Git Dry Run
try {
    $Result = Invoke-HelmGitDryRun -Id $Id -Payload $Payload
} catch {
    Write-Host ("Exception occurred when calling Invoke-HelmGitDryRun: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 
 **Payload** | [**HelmGitHelmDryRunPayload**](HelmGitHelmDryRunPayload.md)| Git Helm dry run details | 

### Return type

[**GithubComPortainerPortainerPkgLibhelmReleaseRelease**](GithubComPortainerPortainerPkgLibhelmReleaseRelease.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-HelmInstall"></a>
# **Invoke-HelmInstall**
> GithubComPortainerPortainerPkgLibhelmReleaseRelease Invoke-HelmInstall<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Payload] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DryRun] <System.Nullable[Boolean]><br>

Install Helm Chart

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
$HelmInstallChartPayload = Initialize-HelmInstallChartPayload -Atomic $false -Chart "MyChart" -Name "MyName" -Namespace "MyNamespace" -RegistryId 0 -Repo "MyRepo" -Values "MyValues" -Version "MyVersion" # HelmInstallChartPayload | Chart details
$DryRun = $true # Boolean | Dry run (optional)

# Install Helm Chart
try {
    $Result = Invoke-HelmInstall -Id $Id -Payload $Payload -DryRun $DryRun
} catch {
    Write-Host ("Exception occurred when calling Invoke-HelmInstall: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 
 **Payload** | [**HelmInstallChartPayload**](HelmInstallChartPayload.md)| Chart details | 
 **DryRun** | **Boolean**| Dry run | [optional] 

### Return type

[**GithubComPortainerPortainerPkgLibhelmReleaseRelease**](GithubComPortainerPortainerPkgLibhelmReleaseRelease.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-HelmList"></a>
# **Invoke-HelmList**
> ReleaseReleaseElement[] Invoke-HelmList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Selector] <String><br>

List Helm Releases

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
$Namespace = "MyNamespace" # String | specify an optional namespace (optional)
$Filter = "MyFilter" # String | specify an optional filter (optional)
$Selector = "MySelector" # String | specify an optional selector (optional)

# List Helm Releases
try {
    $Result = Invoke-HelmList -Id $Id -Namespace $Namespace -Filter $Filter -Selector $Selector
} catch {
    Write-Host ("Exception occurred when calling Invoke-HelmList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 
 **Namespace** | **String**| specify an optional namespace | [optional] 
 **Filter** | **String**| specify an optional filter | [optional] 
 **Selector** | **String**| specify an optional selector | [optional] 

### Return type

[**ReleaseReleaseElement[]**](ReleaseReleaseElement.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-HelmRepoSearch"></a>
# **Invoke-HelmRepoSearch**
> String Invoke-HelmRepoSearch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Repo] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RegistryId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Chart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UseCache] <String><br>

Search Helm Charts

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

$Repo = "MyRepo" # String | Helm repository URL (required if registryId not provided) (optional)
$RegistryId = "MyRegistryId" # String | Helm registry ID (required if repo not provided) (optional)
$Chart = "MyChart" # String | Helm chart name (optional)
$UseCache = "MyUseCache" # String | If true will use cache to search (optional)

# Search Helm Charts
try {
    $Result = Invoke-HelmRepoSearch -Repo $Repo -RegistryId $RegistryId -Chart $Chart -UseCache $UseCache
} catch {
    Write-Host ("Exception occurred when calling Invoke-HelmRepoSearch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Repo** | **String**| Helm repository URL (required if registryId not provided) | [optional] 
 **RegistryId** | **String**| Helm registry ID (required if repo not provided) | [optional] 
 **Chart** | **String**| Helm chart name | [optional] 
 **UseCache** | **String**| If true will use cache to search | [optional] 

### Return type

**String**

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-HelmRollback"></a>
# **Invoke-HelmRollback**
> GithubComPortainerPortainerPkgLibhelmReleaseRelease Invoke-HelmRollback<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Release] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Revision] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Wait] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WaitForJobs] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Recreate] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Force] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Timeout] <System.Nullable[Int32]><br>

Rollback a helm release

Rollback a helm release to a previous revision **Access policy**: authenticated

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
$Release = "MyRelease" # String | Helm release name
$Namespace = "MyNamespace" # String | specify an optional namespace (optional)
$Revision = 56 # Int32 | specify the revision to rollback to (defaults to previous revision if not specified) (optional)
$Wait = $true # Boolean | wait for resources to be ready (default: false) (optional)
$WaitForJobs = $true # Boolean | wait for jobs to complete before marking the release as successful (default: false) (optional)
$Recreate = $true # Boolean | performs pods restart for the resource if applicable (default: true) (optional)
$Force = $true # Boolean | force resource update through delete/recreate if needed (default: false) (optional)
$Timeout = 56 # Int32 | time to wait for any individual Kubernetes operation in seconds (default: 300) (optional)

# Rollback a helm release
try {
    $Result = Invoke-HelmRollback -Id $Id -Release $Release -Namespace $Namespace -Revision $Revision -Wait $Wait -WaitForJobs $WaitForJobs -Recreate $Recreate -Force $Force -Timeout $Timeout
} catch {
    Write-Host ("Exception occurred when calling Invoke-HelmRollback: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 
 **Release** | **String**| Helm release name | 
 **Namespace** | **String**| specify an optional namespace | [optional] 
 **Revision** | **Int32**| specify the revision to rollback to (defaults to previous revision if not specified) | [optional] 
 **Wait** | **Boolean**| wait for resources to be ready (default: false) | [optional] 
 **WaitForJobs** | **Boolean**| wait for jobs to complete before marking the release as successful (default: false) | [optional] 
 **Recreate** | **Boolean**| performs pods restart for the resource if applicable (default: true) | [optional] 
 **Force** | **Boolean**| force resource update through delete/recreate if needed (default: false) | [optional] 
 **Timeout** | **Int32**| time to wait for any individual Kubernetes operation in seconds (default: 300) | [optional] 

### Return type

[**GithubComPortainerPortainerPkgLibhelmReleaseRelease**](GithubComPortainerPortainerPkgLibhelmReleaseRelease.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-HelmShow"></a>
# **Invoke-HelmShow**
> String Invoke-HelmShow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Chart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Command] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Repo] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RegistryId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <String><br>

Show Helm Chart Information

**Access policy**: authenticated Either `repo` or `registryId` parameter is required (but not both)

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

$Chart = "MyChart" # String | Chart name
$Version = "MyVersion" # String | Chart version
$Command = "MyCommand" # String | chart/values/readme
$Repo = "MyRepo" # String | Helm repository URL (required if registryId not provided) (optional)
$RegistryId = "MyRegistryId" # String | Helm registry ID (required if repo not provided) (optional)
$EnvironmentId = "MyEnvironmentId" # String | Environment ID (required if registryId is provided and user is not an admin) (optional)

# Show Helm Chart Information
try {
    $Result = Invoke-HelmShow -Chart $Chart -Version $Version -Command $Command -Repo $Repo -RegistryId $RegistryId -EnvironmentId $EnvironmentId
} catch {
    Write-Host ("Exception occurred when calling Invoke-HelmShow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Chart** | **String**| Chart name | 
 **Version** | **String**| Chart version | 
 **Command** | **String**| chart/values/readme | 
 **Repo** | **String**| Helm repository URL (required if registryId not provided) | [optional] 
 **RegistryId** | **String**| Helm registry ID (required if repo not provided) | [optional] 
 **EnvironmentId** | **String**| Environment ID (required if registryId is provided and user is not an admin) | [optional] 

### Return type

**String**

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-HelmUserRepositoriesList"></a>
# **Invoke-HelmUserRepositoriesList**
> UsersHelmUserRepositoryResponse Invoke-HelmUserRepositoriesList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

List a users helm repositories

Inspect a user helm repositories. **Access policy**: authenticated

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

$Id = 56 # Int32 | User identifier

# List a users helm repositories
try {
    $Result = Invoke-HelmUserRepositoriesList -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-HelmUserRepositoriesList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| User identifier | 

### Return type

[**UsersHelmUserRepositoryResponse**](UsersHelmUserRepositoryResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-HelmUserRepositoryCreate"></a>
# **Invoke-HelmUserRepositoryCreate**
> PortainerHelmUserRepository Invoke-HelmUserRepositoryCreate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Payload] <PSCustomObject><br>

Create a user helm repository

Create a user helm repository. **Access policy**: authenticated

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

$Id = 56 # Int32 | User identifier
$UsersAddHelmRepoUrlPayload = Initialize-UsersAddHelmRepoUrlPayload -Url "MyUrl" # UsersAddHelmRepoUrlPayload | Helm Repository

# Create a user helm repository
try {
    $Result = Invoke-HelmUserRepositoryCreate -Id $Id -Payload $Payload
} catch {
    Write-Host ("Exception occurred when calling Invoke-HelmUserRepositoryCreate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| User identifier | 
 **Payload** | [**UsersAddHelmRepoUrlPayload**](UsersAddHelmRepoUrlPayload.md)| Helm Repository | 

### Return type

[**PortainerHelmUserRepository**](PortainerHelmUserRepository.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-HelmUserRepositoryDelete"></a>
# **Invoke-HelmUserRepositoryDelete**
> void Invoke-HelmUserRepositoryDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RepositoryID] <Int32><br>

Delete a users helm repository

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

$Id = 56 # Int32 | User identifier
$RepositoryID = 56 # Int32 | Repository identifier

# Delete a users helm repository
try {
    $Result = Invoke-HelmUserRepositoryDelete -Id $Id -RepositoryID $RepositoryID
} catch {
    Write-Host ("Exception occurred when calling Invoke-HelmUserRepositoryDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| User identifier | 
 **RepositoryID** | **Int32**| Repository identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

