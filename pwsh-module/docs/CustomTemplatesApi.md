# PSOpenAPITools.PSOpenAPITools\Api.CustomTemplatesApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-CustomTemplateCreate**](CustomTemplatesApi.md#Invoke-CustomTemplateCreate) | **POST** /custom_templates | Create a custom template
[**Invoke-CustomTemplateCreateFile**](CustomTemplatesApi.md#Invoke-CustomTemplateCreateFile) | **POST** /custom_templates/create/file | Create a custom template
[**Invoke-CustomTemplateCreateRepository**](CustomTemplatesApi.md#Invoke-CustomTemplateCreateRepository) | **POST** /custom_templates/create/repository | Create a custom template
[**Invoke-CustomTemplateCreateString**](CustomTemplatesApi.md#Invoke-CustomTemplateCreateString) | **POST** /custom_templates/create/string | Create a custom template
[**Invoke-CustomTemplateDelete**](CustomTemplatesApi.md#Invoke-CustomTemplateDelete) | **DELETE** /custom_templates/{id} | Remove a template
[**Invoke-CustomTemplateFile**](CustomTemplatesApi.md#Invoke-CustomTemplateFile) | **GET** /custom_templates/{id}/file | Get Template stack file content.
[**Invoke-CustomTemplateGitFetch**](CustomTemplatesApi.md#Invoke-CustomTemplateGitFetch) | **PUT** /custom_templates/{id}/git_fetch | Fetch the latest config file content based on custom template&#39;s git repository configuration
[**Invoke-CustomTemplateInspect**](CustomTemplatesApi.md#Invoke-CustomTemplateInspect) | **GET** /custom_templates/{id} | Inspect a custom template
[**Invoke-CustomTemplateList**](CustomTemplatesApi.md#Invoke-CustomTemplateList) | **GET** /custom_templates | List available custom templates
[**Invoke-CustomTemplateUpdate**](CustomTemplatesApi.md#Invoke-CustomTemplateUpdate) | **PUT** /custom_templates/{id} | Update a template


<a id="Invoke-CustomTemplateCreate"></a>
# **Invoke-CustomTemplateCreate**
> PortainereeCustomTemplate Invoke-CustomTemplateCreate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Method] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <SystemCollectionsHashtable><br>

Create a custom template

Create a custom template. **Access policy**: authenticated

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

$Method = "string" # String | method for creating template
$Body = @{ key_example = ... } # SystemCollectionsHashtable | for body documentation see the relevant /custom_templates/{method} endpoint

# Create a custom template
try {
    $Result = Invoke-CustomTemplateCreate -Method $Method -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-CustomTemplateCreate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Method** | **String**| method for creating template | 
 **Body** | **SystemCollectionsHashtable**| for body documentation see the relevant /custom_templates/{method} endpoint | 

### Return type

[**PortainereeCustomTemplate**](PortainereeCustomTemplate.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CustomTemplateCreateFile"></a>
# **Invoke-CustomTemplateCreateFile**
> PortainereeCustomTemplate Invoke-CustomTemplateCreateFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Title] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Description] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Note] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Platform] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Logo] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Variables] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EdgeTemplate] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EdgeSettings] <String><br>

Create a custom template

Create a custom template. **Access policy**: authenticated

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

$Title = "MyTitle" # String | Title of the template
$Description = "MyDescription" # String | Description of the template
$Note = "MyNote" # String | A note that will be displayed in the UI. Supports HTML content
$Platform = "1" # Int32 | Platform associated to the template (1 - 'linux', 2 - 'windows')
$Type = "1" # Int32 | Type of created stack (1 - swarm, 2 - compose, 3 - kubernetes)
$File =  # System.IO.FileInfo | File
$Logo = "MyLogo" # String | URL of the template's logo (optional)
$Variables = "MyVariables" # String | A json array of variables definitions (optional)
$EdgeTemplate = $true # Boolean | Indicates if this template purpose for Edge Stack (optional)
$EdgeSettings = "MyEdgeSettings" # String | A json object of edge config (optional)

# Create a custom template
try {
    $Result = Invoke-CustomTemplateCreateFile -Title $Title -Description $Description -Note $Note -Platform $Platform -Type $Type -File $File -Logo $Logo -Variables $Variables -EdgeTemplate $EdgeTemplate -EdgeSettings $EdgeSettings
} catch {
    Write-Host ("Exception occurred when calling Invoke-CustomTemplateCreateFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Title** | **String**| Title of the template | 
 **Description** | **String**| Description of the template | 
 **Note** | **String**| A note that will be displayed in the UI. Supports HTML content | 
 **Platform** | **Int32**| Platform associated to the template (1 - &#39;linux&#39;, 2 - &#39;windows&#39;) | 
 **Type** | **Int32**| Type of created stack (1 - swarm, 2 - compose, 3 - kubernetes) | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| File | 
 **Logo** | **String**| URL of the template&#39;s logo | [optional] 
 **Variables** | **String**| A json array of variables definitions | [optional] 
 **EdgeTemplate** | **Boolean**| Indicates if this template purpose for Edge Stack | [optional] 
 **EdgeSettings** | **String**| A json object of edge config | [optional] 

### Return type

[**PortainereeCustomTemplate**](PortainereeCustomTemplate.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CustomTemplateCreateRepository"></a>
# **Invoke-CustomTemplateCreateRepository**
> PortainereeCustomTemplate Invoke-CustomTemplateCreateRepository<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Create a custom template

Create a custom template. **Access policy**: authenticated

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

$PortainereeCustomTemplateRelativePathSettings = Initialize-PortainereeCustomTemplateRelativePathSettings -FilesystemPath "/tmp" -PerDeviceConfigsGroupMatchType "file" -PerDeviceConfigsMatchType "file" -PerDeviceConfigsPath "configs" -SupportPerDeviceConfigs $false -SupportRelativePath $false
$PortainereeEdgeStaggerConfig = Initialize-PortainereeEdgeStaggerConfig -DeviceNumber 0 -DeviceNumberIncrementBy 0 -DeviceNumberStartFrom 0 -StaggerOption "0" -StaggerParallelOption "0" -Timeout "5" -UpdateDelay "5" -UpdateFailureAction "0"
$PortainereeCustomTemplateEdgeSettings = Initialize-PortainereeCustomTemplateEdgeSettings -PrePullImage $false -PrivateRegistryId 0 -RelativePathSettings $PortainereeCustomTemplateRelativePathSettings -RetryDeploy $false -RetryPeriod 0 -StaggerConfig $PortainereeEdgeStaggerConfig

$PortainerCustomTemplateVariableDefinition = Initialize-PortainerCustomTemplateVariableDefinition -DefaultValue "default value" -Description "Description" -Label "My Variable" -Name "MY_VAR"
$CustomtemplatesCustomTemplateFromGitRepositoryPayload = Initialize-CustomtemplatesCustomTemplateFromGitRepositoryPayload -ComposeFilePathInRepository "docker-compose.yml" -Description "High performance web server" -EdgeSettings $PortainereeCustomTemplateEdgeSettings -EdgeTemplate $false -IsComposeFormat $false -Logo "https://portainer.io/img/logo.svg" -Note "This is my <b>custom</b> template" -Platform "0" -RepositoryAuthentication $true -RepositoryAuthorizationType "0" -RepositoryGitCredentialID 0 -RepositoryPassword "myGitPassword" -RepositoryReferenceName "refs/heads/master" -RepositoryURL "https://github.com/openfaas/faas" -RepositoryUsername "myGitUsername" -TLSSkipVerify $false -Title "Nginx" -Type "0" -Variables $PortainerCustomTemplateVariableDefinition # CustomtemplatesCustomTemplateFromGitRepositoryPayload | Required when using method=repository

# Create a custom template
try {
    $Result = Invoke-CustomTemplateCreateRepository -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-CustomTemplateCreateRepository: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**CustomtemplatesCustomTemplateFromGitRepositoryPayload**](CustomtemplatesCustomTemplateFromGitRepositoryPayload.md)| Required when using method&#x3D;repository | 

### Return type

[**PortainereeCustomTemplate**](PortainereeCustomTemplate.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CustomTemplateCreateString"></a>
# **Invoke-CustomTemplateCreateString**
> PortainereeCustomTemplate Invoke-CustomTemplateCreateString<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Create a custom template

Create a custom template. **Access policy**: authenticated

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

$PortainereeCustomTemplateRelativePathSettings = Initialize-PortainereeCustomTemplateRelativePathSettings -FilesystemPath "/tmp" -PerDeviceConfigsGroupMatchType "file" -PerDeviceConfigsMatchType "file" -PerDeviceConfigsPath "configs" -SupportPerDeviceConfigs $false -SupportRelativePath $false
$PortainereeEdgeStaggerConfig = Initialize-PortainereeEdgeStaggerConfig -DeviceNumber 0 -DeviceNumberIncrementBy 0 -DeviceNumberStartFrom 0 -StaggerOption "0" -StaggerParallelOption "0" -Timeout "5" -UpdateDelay "5" -UpdateFailureAction "0"
$PortainereeCustomTemplateEdgeSettings = Initialize-PortainereeCustomTemplateEdgeSettings -PrePullImage $false -PrivateRegistryId 0 -RelativePathSettings $PortainereeCustomTemplateRelativePathSettings -RetryDeploy $false -RetryPeriod 0 -StaggerConfig $PortainereeEdgeStaggerConfig

$PortainerCustomTemplateVariableDefinition = Initialize-PortainerCustomTemplateVariableDefinition -DefaultValue "default value" -Description "Description" -Label "My Variable" -Name "MY_VAR"
$CustomtemplatesCustomTemplateFromFileContentPayload = Initialize-CustomtemplatesCustomTemplateFromFileContentPayload -Description "High performance web server" -EdgeSettings $PortainereeCustomTemplateEdgeSettings -EdgeTemplate $false -FileContent "MyFileContent" -Logo "https://portainer.io/img/logo.svg" -Note "This is my <b>custom</b> template" -Platform "0" -Title "Nginx" -Type "0" -Variables $PortainerCustomTemplateVariableDefinition # CustomtemplatesCustomTemplateFromFileContentPayload | body

# Create a custom template
try {
    $Result = Invoke-CustomTemplateCreateString -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-CustomTemplateCreateString: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**CustomtemplatesCustomTemplateFromFileContentPayload**](CustomtemplatesCustomTemplateFromFileContentPayload.md)| body | 

### Return type

[**PortainereeCustomTemplate**](PortainereeCustomTemplate.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CustomTemplateDelete"></a>
# **Invoke-CustomTemplateDelete**
> void Invoke-CustomTemplateDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Remove a template

Remove a template. **Access policy**: authenticated

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

$Id = 56 # Int32 | Template identifier

# Remove a template
try {
    $Result = Invoke-CustomTemplateDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-CustomTemplateDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Template identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CustomTemplateFile"></a>
# **Invoke-CustomTemplateFile**
> CustomtemplatesFileResponse Invoke-CustomTemplateFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get Template stack file content.

Retrieve the content of the Stack file for the specified custom template **Access policy**: authenticated

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

$Id = 56 # Int32 | Template identifier

# Get Template stack file content.
try {
    $Result = Invoke-CustomTemplateFile -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-CustomTemplateFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Template identifier | 

### Return type

[**CustomtemplatesFileResponse**](CustomtemplatesFileResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CustomTemplateGitFetch"></a>
# **Invoke-CustomTemplateGitFetch**
> CustomtemplatesFileResponse Invoke-CustomTemplateGitFetch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Fetch the latest config file content based on custom template's git repository configuration

Retrieve details about a template created from git repository method. **Access policy**: authenticated

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

$Id = 56 # Int32 | Template identifier

# Fetch the latest config file content based on custom template's git repository configuration
try {
    $Result = Invoke-CustomTemplateGitFetch -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-CustomTemplateGitFetch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Template identifier | 

### Return type

[**CustomtemplatesFileResponse**](CustomtemplatesFileResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CustomTemplateInspect"></a>
# **Invoke-CustomTemplateInspect**
> PortainereeCustomTemplate Invoke-CustomTemplateInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Inspect a custom template

Retrieve details about a template. **Access policy**: authenticated

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

$Id = 56 # Int32 | Template identifier

# Inspect a custom template
try {
    $Result = Invoke-CustomTemplateInspect -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-CustomTemplateInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Template identifier | 

### Return type

[**PortainereeCustomTemplate**](PortainereeCustomTemplate.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CustomTemplateList"></a>
# **Invoke-CustomTemplateList**
> PortainereeCustomTemplate[] Invoke-CustomTemplateList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Edge] <System.Nullable[Boolean]><br>

List available custom templates

List available custom templates. **Access policy**: authenticated

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

$Type = 0 # Int32[] | Template types
$Edge = $true # Boolean | Filter by edge templates (optional)

# List available custom templates
try {
    $Result = Invoke-CustomTemplateList -Type $Type -Edge $Edge
} catch {
    Write-Host ("Exception occurred when calling Invoke-CustomTemplateList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Type** | [**Int32[]**](Int32.md)| Template types | 
 **Edge** | **Boolean**| Filter by edge templates | [optional] 

### Return type

[**PortainereeCustomTemplate[]**](PortainereeCustomTemplate.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CustomTemplateUpdate"></a>
# **Invoke-CustomTemplateUpdate**
> PortainereeCustomTemplate Invoke-CustomTemplateUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update a template

Update a template. **Access policy**: authenticated

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

$Id = 56 # Int32 | Template identifier
$PortainereeCustomTemplateRelativePathSettings = Initialize-PortainereeCustomTemplateRelativePathSettings -FilesystemPath "/tmp" -PerDeviceConfigsGroupMatchType "file" -PerDeviceConfigsMatchType "file" -PerDeviceConfigsPath "configs" -SupportPerDeviceConfigs $false -SupportRelativePath $false
$PortainereeEdgeStaggerConfig = Initialize-PortainereeEdgeStaggerConfig -DeviceNumber 0 -DeviceNumberIncrementBy 0 -DeviceNumberStartFrom 0 -StaggerOption "0" -StaggerParallelOption "0" -Timeout "5" -UpdateDelay "5" -UpdateFailureAction "0"
$PortainereeCustomTemplateEdgeSettings = Initialize-PortainereeCustomTemplateEdgeSettings -PrePullImage $false -PrivateRegistryId 0 -RelativePathSettings $PortainereeCustomTemplateRelativePathSettings -RetryDeploy $false -RetryPeriod 0 -StaggerConfig $PortainereeEdgeStaggerConfig

$PortainerCustomTemplateVariableDefinition = Initialize-PortainerCustomTemplateVariableDefinition -DefaultValue "default value" -Description "Description" -Label "My Variable" -Name "MY_VAR"
$CustomtemplatesCustomTemplateUpdatePayload = Initialize-CustomtemplatesCustomTemplateUpdatePayload -ComposeFilePathInRepository "docker-compose.yml" -Description "High performance web server" -EdgeSettings $PortainereeCustomTemplateEdgeSettings -EdgeTemplate $false -FileContent "MyFileContent" -IsComposeFormat $false -Logo "https://portainer.io/img/logo.svg" -Note "This is my <b>custom</b> template" -Platform "0" -RepositoryAuthentication $true -RepositoryAuthorizationType "0" -RepositoryGitCredentialID 0 -RepositoryPassword "myGitPassword" -RepositoryReferenceName "refs/heads/master" -RepositoryURL "https://github.com/openfaas/faas" -RepositoryUsername "myGitUsername" -TLSSkipVerify $false -Title "Nginx" -Type "0" -Variables $PortainerCustomTemplateVariableDefinition # CustomtemplatesCustomTemplateUpdatePayload | Template details

# Update a template
try {
    $Result = Invoke-CustomTemplateUpdate -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-CustomTemplateUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Template identifier | 
 **Body** | [**CustomtemplatesCustomTemplateUpdatePayload**](CustomtemplatesCustomTemplateUpdatePayload.md)| Template details | 

### Return type

[**PortainereeCustomTemplate**](PortainereeCustomTemplate.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

