# PSOpenAPITools.PSOpenAPITools\Api.EdgeUpdateSchedulesApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-EdgeUpdatePreviousVersions**](EdgeUpdateSchedulesApi.md#Invoke-EdgeUpdatePreviousVersions) | **GET** /edge_update_schedules/previous_versions | Fetches the previous versions of updated agents
[**Invoke-EdgeUpdateScheduleActiveSchedulesList**](EdgeUpdateSchedulesApi.md#Invoke-EdgeUpdateScheduleActiveSchedulesList) | **POST** /edge_update_schedules/active | Fetches the list of Active Edge Update Schedules
[**Invoke-EdgeUpdateScheduleCreate**](EdgeUpdateSchedulesApi.md#Invoke-EdgeUpdateScheduleCreate) | **POST** /edge_update_schedules | Creates a scheduled remote update procedure for Edge agents
[**Invoke-EdgeUpdateScheduleDelete**](EdgeUpdateSchedulesApi.md#Invoke-EdgeUpdateScheduleDelete) | **DELETE** /edge_update_schedules/{id} | Deletes an Edge Update Schedule
[**Invoke-EdgeUpdateScheduleInfo**](EdgeUpdateSchedulesApi.md#Invoke-EdgeUpdateScheduleInfo) | **GET** /edge_update_schedules/info | Returns informations the help create edge update schedules
[**Invoke-EdgeUpdateScheduleInspect**](EdgeUpdateSchedulesApi.md#Invoke-EdgeUpdateScheduleInspect) | **GET** /edge_update_schedules/{id} | Returns the Edge Update Schedule with the given ID
[**Invoke-EdgeUpdateScheduleList**](EdgeUpdateSchedulesApi.md#Invoke-EdgeUpdateScheduleList) | **GET** /edge_update_schedules | Fetches the list of Edge Update Schedules
[**Invoke-EdgeUpdateScheduleUpdate**](EdgeUpdateSchedulesApi.md#Invoke-EdgeUpdateScheduleUpdate) | **POST** /edge_update_schedules/{id} | Update a scheduled remote update procedure for Edge agents
[**Invoke-RemoteUpdatesAgentVersions**](EdgeUpdateSchedulesApi.md#Invoke-RemoteUpdatesAgentVersions) | **GET** /edge_update_schedules/agent_versions | Fetches the supported versions of the agent to update/rollback


<a id="Invoke-EdgeUpdatePreviousVersions"></a>
# **Invoke-EdgeUpdatePreviousVersions**
> System.Collections.Hashtable Invoke-EdgeUpdatePreviousVersions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentIds] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EdgeGroupIds] <System.Nullable[Int32][]><br>

Fetches the previous versions of updated agents

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

$EnvironmentIds = 0 # Int32[] | Environment IDs (optional)
$EdgeGroupIds = 0 # Int32[] | Edge Group IDs (optional)

# Fetches the previous versions of updated agents
try {
    $Result = Invoke-EdgeUpdatePreviousVersions -EnvironmentIds $EnvironmentIds -EdgeGroupIds $EdgeGroupIds
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeUpdatePreviousVersions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentIds** | [**Int32[]**](Int32.md)| Environment IDs | [optional] 
 **EdgeGroupIds** | [**Int32[]**](Int32.md)| Edge Group IDs | [optional] 

### Return type

**System.Collections.Hashtable**

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeUpdateScheduleActiveSchedulesList"></a>
# **Invoke-EdgeUpdateScheduleActiveSchedulesList**
> TypesEndpointUpdateScheduleRelation[] Invoke-EdgeUpdateScheduleActiveSchedulesList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Fetches the list of Active Edge Update Schedules

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

$EdgeupdateschedulesActiveSchedulePayload = Initialize-EdgeupdateschedulesActiveSchedulePayload -EnvironmentIDs 0 # EdgeupdateschedulesActiveSchedulePayload | Active schedule query

# Fetches the list of Active Edge Update Schedules
try {
    $Result = Invoke-EdgeUpdateScheduleActiveSchedulesList -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeUpdateScheduleActiveSchedulesList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**EdgeupdateschedulesActiveSchedulePayload**](EdgeupdateschedulesActiveSchedulePayload.md)| Active schedule query | 

### Return type

[**TypesEndpointUpdateScheduleRelation[]**](TypesEndpointUpdateScheduleRelation.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeUpdateScheduleCreate"></a>
# **Invoke-EdgeUpdateScheduleCreate**
> TypesUpdateSchedule Invoke-EdgeUpdateScheduleCreate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Creates a scheduled remote update procedure for Edge agents

Creates a scheduled remote update process that will update or rollback the Edge agents in the specified Edge groups. **Access policy**: Administrator only.

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

$EdgeupdateschedulesCreatePayload = Initialize-EdgeupdateschedulesCreatePayload -AgentImage "MyAgentImage" -GroupIDs 0 -Name "MyName" -RegistryID 0 -ScheduledTime "MyScheduledTime" -Type "0" -UpdaterImage "MyUpdaterImage" # EdgeupdateschedulesCreatePayload | Schedule details

# Creates a scheduled remote update procedure for Edge agents
try {
    $Result = Invoke-EdgeUpdateScheduleCreate -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeUpdateScheduleCreate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**EdgeupdateschedulesCreatePayload**](EdgeupdateschedulesCreatePayload.md)| Schedule details | 

### Return type

[**TypesUpdateSchedule**](TypesUpdateSchedule.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeUpdateScheduleDelete"></a>
# **Invoke-EdgeUpdateScheduleDelete**
> void Invoke-EdgeUpdateScheduleDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Deletes an Edge Update Schedule

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

$Id = 56 # Int32 | EdgeUpdate Id

# Deletes an Edge Update Schedule
try {
    $Result = Invoke-EdgeUpdateScheduleDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeUpdateScheduleDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeUpdate Id | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeUpdateScheduleInfo"></a>
# **Invoke-EdgeUpdateScheduleInfo**
> EdgeupdateschedulesInfoResponse Invoke-EdgeUpdateScheduleInfo<br>

Returns informations the help create edge update schedules

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


# Returns informations the help create edge update schedules
try {
    $Result = Invoke-EdgeUpdateScheduleInfo
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeUpdateScheduleInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EdgeupdateschedulesInfoResponse**](EdgeupdateschedulesInfoResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeUpdateScheduleInspect"></a>
# **Invoke-EdgeUpdateScheduleInspect**
> EdgeupdateschedulesInspectResponse Invoke-EdgeUpdateScheduleInspect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Returns the Edge Update Schedule with the given ID

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

$Id = 56 # Int32 | EdgeUpdate Id

# Returns the Edge Update Schedule with the given ID
try {
    $Result = Invoke-EdgeUpdateScheduleInspect -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeUpdateScheduleInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeUpdate Id | 

### Return type

[**EdgeupdateschedulesInspectResponse**](EdgeupdateschedulesInspectResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeUpdateScheduleList"></a>
# **Invoke-EdgeUpdateScheduleList**
> EdgeupdateschedulesDecoratedUpdateSchedule[] Invoke-EdgeUpdateScheduleList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeEdgeStacks] <System.Nullable[Boolean]><br>

Fetches the list of Edge Update Schedules

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

$IncludeEdgeStacks = $true # Boolean | Include Edge Stacks in the response (optional)

# Fetches the list of Edge Update Schedules
try {
    $Result = Invoke-EdgeUpdateScheduleList -IncludeEdgeStacks $IncludeEdgeStacks
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeUpdateScheduleList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IncludeEdgeStacks** | **Boolean**| Include Edge Stacks in the response | [optional] 

### Return type

[**EdgeupdateschedulesDecoratedUpdateSchedule[]**](EdgeupdateschedulesDecoratedUpdateSchedule.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-EdgeUpdateScheduleUpdate"></a>
# **Invoke-EdgeUpdateScheduleUpdate**
> TypesUpdateSchedule Invoke-EdgeUpdateScheduleUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update a scheduled remote update procedure for Edge agents

Creates a scheduled remote update process that will update or rollback the Edge agents in the specified Edge groups. **Access policy**: Administrator only.

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

$Id = 56 # Int32 | EdgeUpdate Id
$EdgeupdateschedulesUpdatePayload = Initialize-EdgeupdateschedulesUpdatePayload -AgentImage "MyAgentImage" -GroupIDs 0 -Name "MyName" -RegistryID 0 -ScheduledTime "MyScheduledTime" -Type "0" -UpdaterImage "MyUpdaterImage" # EdgeupdateschedulesUpdatePayload | Schedule details

# Update a scheduled remote update procedure for Edge agents
try {
    $Result = Invoke-EdgeUpdateScheduleUpdate -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-EdgeUpdateScheduleUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| EdgeUpdate Id | 
 **Body** | [**EdgeupdateschedulesUpdatePayload**](EdgeupdateschedulesUpdatePayload.md)| Schedule details | 

### Return type

[**TypesUpdateSchedule**](TypesUpdateSchedule.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-RemoteUpdatesAgentVersions"></a>
# **Invoke-RemoteUpdatesAgentVersions**
> String[] Invoke-RemoteUpdatesAgentVersions<br>

Fetches the supported versions of the agent to update/rollback

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


# Fetches the supported versions of the agent to update/rollback
try {
    $Result = Invoke-RemoteUpdatesAgentVersions
} catch {
    Write-Host ("Exception occurred when calling Invoke-RemoteUpdatesAgentVersions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

