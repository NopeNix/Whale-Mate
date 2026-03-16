# PSOpenAPITools.PSOpenAPITools\Api.EdgeJobsApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-EdgeJobCreateFile**](EdgeJobsApi.md#Invoke-EdgeJobCreateFile) | **POST** /edge_jobs/create/file | Create an EdgeJob from a file
[**Invoke-EdgeJobCreateString**](EdgeJobsApi.md#Invoke-EdgeJobCreateString) | **POST** /edge_jobs/create/string | Create an EdgeJob from a text
[**Invoke-EdgeJobDelete**](EdgeJobsApi.md#Invoke-EdgeJobDelete) | **DELETE** /edge_jobs/{id} | Delete an EdgeJob
[**Invoke-EdgeJobFile**](EdgeJobsApi.md#Invoke-EdgeJobFile) | **GET** /edge_jobs/{id}/file | Fetch a file of an EdgeJob
[**Invoke-EdgeJobInspect**](EdgeJobsApi.md#Invoke-EdgeJobInspect) | **GET** /edge_jobs/{id} | Inspect an EdgeJob
[**Invoke-EdgeJobList**](EdgeJobsApi.md#Invoke-EdgeJobList) | **GET** /edge_jobs | Fetch EdgeJobs list
[**Invoke-EdgeJobTaskLogsInspect**](EdgeJobsApi.md#Invoke-EdgeJobTaskLogsInspect) | **GET** /edge_jobs/{id}/tasks/{taskID}/logs | Fetch the log for a specifc task on an EdgeJob
[**Invoke-EdgeJobTasksClear**](EdgeJobsApi.md#Invoke-EdgeJobTasksClear) | **DELETE** /edge_jobs/{id}/tasks/{taskID}/logs | Clear the log for a specifc task on an EdgeJob
[**Invoke-EdgeJobTasksCollect**](EdgeJobsApi.md#Invoke-EdgeJobTasksCollect) | **POST** /edge_jobs/{id}/tasks/{taskID}/logs | Collect the log for a specifc task on an EdgeJob
[**Invoke-EdgeJobTasksList**](EdgeJobsApi.md#Invoke-EdgeJobTasksList) | **GET** /edge_jobs/{id}/tasks | Fetch the list of tasks on an EdgeJob
[**Invoke-EdgeJobUpdate**](EdgeJobsApi.md#Invoke-EdgeJobUpdate) | **PUT** /edge_jobs/{id} | Update an EdgeJob


<a id="Invoke-EdgeJobCreateFile"></a>
# **Invoke-EdgeJobCreateFile**
> PortainereeEdgeGroup Invoke-EdgeJobCreateFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CronExpression] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EdgeGroups] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Endpoints] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Recurring] <System.Nullable[Boolean]><br>

Create an EdgeJob from a file

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

$File =  # System.IO.FileInfo | Content of the Stack file
$Name = "MyName" # String | Name of the stack
$CronExpression = "MyCronExpression" # String | A cron expression to schedule this job
$EdgeGroups = "MyEdgeGroups" # String | JSON stringified array of Edge Groups ids
$Endpoints = "MyEndpoints" # String | JSON stringified array of Environment ids
$Recurring = $true # Boolean | If recurring (optional)

# Create an EdgeJob from a file
try {
    $Result = Invoke-EdgeJobCreateFile -File $File -Name $Name -CronExpression $CronExpression -EdgeGroups $EdgeGroups -Endpoints $Endpoints -Recurring $Recurring
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeJobCreateFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| Content of the Stack file | 
 **Name** | **String**| Name of the stack | 
 **CronExpression** | **String**| A cron expression to schedule this job | 
 **EdgeGroups** | **String**| JSON stringified array of Edge Groups ids | 
 **Endpoints** | **String**| JSON stringified array of Environment ids | 
 **Recurring** | **Boolean**| If recurring | [optional] 

### Return type

[**PortainereeEdgeGroup**](PortainereeEdgeGroup.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeJobCreateString"></a>
# **Invoke-EdgeJobCreateString**
> PortainereeEdgeGroup Invoke-EdgeJobCreateString<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Create an EdgeJob from a text

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

$EdgejobsEdgeJobCreateFromFileContentPayload = Initialize-EdgejobsEdgeJobCreateFromFileContentPayload -CronExpression "MyCronExpression" -EdgeGroups 0 -Endpoints 0 -FileContent "MyFileContent" -Name "MyName" -Recurring $false # EdgejobsEdgeJobCreateFromFileContentPayload | EdgeGroup data when method is string

# Create an EdgeJob from a text
try {
    $Result = Invoke-EdgeJobCreateString -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeJobCreateString: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**EdgejobsEdgeJobCreateFromFileContentPayload**](EdgejobsEdgeJobCreateFromFileContentPayload.md)| EdgeGroup data when method is string | 

### Return type

[**PortainereeEdgeGroup**](PortainereeEdgeGroup.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeJobDelete"></a>
# **Invoke-EdgeJobDelete**
> void Invoke-EdgeJobDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Delete an EdgeJob

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

$Id = 56 # Int32 | EdgeJob Id

# Delete an EdgeJob
try {
    $Result = Invoke-EdgeJobDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeJobDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeJob Id | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeJobFile"></a>
# **Invoke-EdgeJobFile**
> EdgejobsEdgeJobFileResponse Invoke-EdgeJobFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Fetch a file of an EdgeJob

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

$Id = 56 # Int32 | EdgeJob Id

# Fetch a file of an EdgeJob
try {
    $Result = Invoke-EdgeJobFile -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeJobFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeJob Id | 

### Return type

[**EdgejobsEdgeJobFileResponse**](EdgejobsEdgeJobFileResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeJobInspect"></a>
# **Invoke-EdgeJobInspect**
> PortainerEdgeJob Invoke-EdgeJobInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Inspect an EdgeJob

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

$Id = 56 # Int32 | EdgeJob Id

# Inspect an EdgeJob
try {
    $Result = Invoke-EdgeJobInspect -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeJobInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeJob Id | 

### Return type

[**PortainerEdgeJob**](PortainerEdgeJob.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeJobList"></a>
# **Invoke-EdgeJobList**
> PortainerEdgeJob[] Invoke-EdgeJobList<br>

Fetch EdgeJobs list

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


# Fetch EdgeJobs list
try {
    $Result = Invoke-EdgeJobList
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeJobList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PortainerEdgeJob[]**](PortainerEdgeJob.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeJobTaskLogsInspect"></a>
# **Invoke-EdgeJobTaskLogsInspect**
> EdgejobsFileResponse Invoke-EdgeJobTaskLogsInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TaskID] <Int32><br>

Fetch the log for a specifc task on an EdgeJob

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

$Id = 56 # Int32 | EdgeJob Id
$TaskID = 56 # Int32 | Task Id

# Fetch the log for a specifc task on an EdgeJob
try {
    $Result = Invoke-EdgeJobTaskLogsInspect -Id $Id -TaskID $TaskID
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeJobTaskLogsInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeJob Id | 
 **TaskID** | **Int32**| Task Id | 

### Return type

[**EdgejobsFileResponse**](EdgejobsFileResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeJobTasksClear"></a>
# **Invoke-EdgeJobTasksClear**
> void Invoke-EdgeJobTasksClear<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TaskID] <Int32><br>

Clear the log for a specifc task on an EdgeJob

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

$Id = 56 # Int32 | EdgeJob Id
$TaskID = 56 # Int32 | Task Id

# Clear the log for a specifc task on an EdgeJob
try {
    $Result = Invoke-EdgeJobTasksClear -Id $Id -TaskID $TaskID
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeJobTasksClear: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeJob Id | 
 **TaskID** | **Int32**| Task Id | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeJobTasksCollect"></a>
# **Invoke-EdgeJobTasksCollect**
> void Invoke-EdgeJobTasksCollect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TaskID] <Int32><br>

Collect the log for a specifc task on an EdgeJob

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

$Id = 56 # Int32 | EdgeJob Id
$TaskID = 56 # Int32 | Task Id

# Collect the log for a specifc task on an EdgeJob
try {
    $Result = Invoke-EdgeJobTasksCollect -Id $Id -TaskID $TaskID
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeJobTasksCollect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeJob Id | 
 **TaskID** | **Int32**| Task Id | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeJobTasksList"></a>
# **Invoke-EdgeJobTasksList**
> EdgejobsTaskContainer[] Invoke-EdgeJobTasksList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Fetch the list of tasks on an EdgeJob

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

$Id = 56 # Int32 | EdgeJob Id

# Fetch the list of tasks on an EdgeJob
try {
    $Result = Invoke-EdgeJobTasksList -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeJobTasksList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeJob Id | 

### Return type

[**EdgejobsTaskContainer[]**](EdgejobsTaskContainer.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeJobUpdate"></a>
# **Invoke-EdgeJobUpdate**
> PortainerEdgeJob Invoke-EdgeJobUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update an EdgeJob

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

$Id = 56 # Int32 | EdgeJob Id
$EdgejobsEdgeJobUpdatePayload = Initialize-EdgejobsEdgeJobUpdatePayload -CronExpression "MyCronExpression" -EdgeGroups 0 -Endpoints 0 -FileContent "MyFileContent" -Name "MyName" -Recurring $false # EdgejobsEdgeJobUpdatePayload | EdgeGroup data

# Update an EdgeJob
try {
    $Result = Invoke-EdgeJobUpdate -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeJobUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeJob Id | 
 **Body** | [**EdgejobsEdgeJobUpdatePayload**](EdgejobsEdgeJobUpdatePayload.md)| EdgeGroup data | 

### Return type

[**PortainerEdgeJob**](PortainerEdgeJob.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

