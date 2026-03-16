# PSOpenAPITools.PSOpenAPITools\Api.ObservabilityApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Silence**](ObservabilityApi.md#New-Silence) | **POST** /observability/alerting/silence | Create an alert silence
[**Invoke-DeleteAlertRule**](ObservabilityApi.md#Invoke-DeleteAlertRule) | **DELETE** /observability/alerting/rules/{id} | Delete an alert rule
[**Invoke-DeleteSilence**](ObservabilityApi.md#Invoke-DeleteSilence) | **DELETE** /observability/alerting/silence/{id} | Delete an alert silence
[**Get-AlertRule**](ObservabilityApi.md#Get-AlertRule) | **GET** /observability/alerting/rules/{id} | Get an alert rule by ID
[**Get-AlertingSettings**](ObservabilityApi.md#Get-AlertingSettings) | **GET** /observability/alerting/settings/{id} | Get alerting settings by ID
[**Get-Alerts**](ObservabilityApi.md#Get-Alerts) | **GET** /observability/alerting/alerts | Get active or silenced alerts
[**Get-AllAlertRules**](ObservabilityApi.md#Get-AllAlertRules) | **GET** /observability/alerting/rules | Get all alert rules
[**Get-AllAlertingSettings**](ObservabilityApi.md#Get-AllAlertingSettings) | **GET** /observability/alerting/settings | Get all alerting settings
[**Test-AlertManagerConnectivity**](ObservabilityApi.md#Test-AlertManagerConnectivity) | **GET** /observability/alerting/connectivity | Test AlertManager connectivity
[**Update-AlertRule**](ObservabilityApi.md#Update-AlertRule) | **PUT** /observability/alerting/rules/{id} | Update an alert rule
[**Update-AlertingSettings**](ObservabilityApi.md#Update-AlertingSettings) | **PUT** /observability/alerting/settings | Update alerting settings


<a id="New-Silence"></a>
# **New-Silence**
> System.Collections.Hashtable New-Silence<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Create an alert silence

Create a new silence for alerts in the specified AlertManager. **Access policy**: Authenticated user.

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

$ModelsMatcher = Initialize-ModelsMatcher -IsEqual $false -IsRegex $false -Name "MyName" -Value "MyValue"
$ModelsPostableSilence = Initialize-ModelsPostableSilence -Comment "MyComment" -CreatedBy "MyCreatedBy" -EndsAt "MyEndsAt" -Id "MyId" -Matchers $ModelsMatcher -StartsAt "MyStartsAt"

$ObservabilityCreateSilencePayload = Initialize-ObservabilityCreateSilencePayload -AlertManagerURL "MyAlertManagerURL" -Silence $ModelsPostableSilence # ObservabilityCreateSilencePayload | Silence details

# Create an alert silence
try {
    $Result = New-Silence -Body $Body
} catch {
    Write-Host ("Exception occurred when calling New-Silence: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**ObservabilityCreateSilencePayload**](ObservabilityCreateSilencePayload.md)| Silence details | 

### Return type

[**System.Collections.Hashtable**](AnyType.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteAlertRule"></a>
# **Invoke-DeleteAlertRule**
> void Invoke-DeleteAlertRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Delete an alert rule

Delete a specific alert rule by its identifier. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Alert rule identifier

# Delete an alert rule
try {
    $Result = Invoke-DeleteAlertRule -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteAlertRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Alert rule identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteSilence"></a>
# **Invoke-DeleteSilence**
> System.Collections.Hashtable Invoke-DeleteSilence<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AlertManagerURL] <String><br>

Delete an alert silence

Delete a specific alert silence by its identifier from the specified AlertManager. **Access policy**: Authenticated user.

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

$Id = "MyId" # String | Silence identifier
$AlertManagerURL = "MyAlertManagerURL" # String | AlertManager URL

# Delete an alert silence
try {
    $Result = Invoke-DeleteSilence -Id $Id -AlertManagerURL $AlertManagerURL
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteSilence: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Silence identifier | 
 **AlertManagerURL** | **String**| AlertManager URL | 

### Return type

[**System.Collections.Hashtable**](AnyType.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AlertRule"></a>
# **Get-AlertRule**
> SystemCollectionsHashtable Get-AlertRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get an alert rule by ID

Get a specific alert rule by its identifier. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Alert rule identifier

# Get an alert rule by ID
try {
    $Result = Get-AlertRule -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AlertRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Alert rule identifier | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AlertingSettings"></a>
# **Get-AlertingSettings**
> SystemCollectionsHashtable Get-AlertingSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get alerting settings by ID

Get specific alerting settings by its identifier, including connection status. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Alerting settings identifier

# Get alerting settings by ID
try {
    $Result = Get-AlertingSettings -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AlertingSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Alerting settings identifier | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Alerts"></a>
# **Get-Alerts**
> SystemCollectionsHashtable[] Get-Alerts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String><br>

Get active or silenced alerts

Get a list of active or silenced alerts from the AlertManager. **Access policy**: Authenticated user.

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

$Status = "MyStatus" # String | Status of alerts to retrieve. Possible values: 'active' or 'silenced'.

# Get active or silenced alerts
try {
    $Result = Get-Alerts -Status $Status
} catch {
    Write-Host ("Exception occurred when calling Get-Alerts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Status** | **String**| Status of alerts to retrieve. Possible values: &#39;active&#39; or &#39;silenced&#39;. | 

### Return type

[**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllAlertRules"></a>
# **Get-AllAlertRules**
> SystemCollectionsHashtable[] Get-AllAlertRules<br>

Get all alert rules

Get a list of all alert rules from the AlertManager. **Access policy**: Authenticated user.

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


# Get all alert rules
try {
    $Result = Get-AllAlertRules
} catch {
    Write-Host ("Exception occurred when calling Get-AllAlertRules: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllAlertingSettings"></a>
# **Get-AllAlertingSettings**
> SystemCollectionsHashtable[] Get-AllAlertingSettings<br>

Get all alerting settings

Get a list of all alerting settings with their connection status. **Access policy**: Authenticated user.

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


# Get all alerting settings
try {
    $Result = Get-AllAlertingSettings
} catch {
    Write-Host ("Exception occurred when calling Get-AllAlertingSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Test-AlertManagerConnectivity"></a>
# **Test-AlertManagerConnectivity**
> System.Collections.Hashtable Test-AlertManagerConnectivity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Url] <String><br>

Test AlertManager connectivity

Test connectivity to an AlertManager instance by retrieving its status. **Access policy**: Authenticated user.

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

$Url = "MyUrl" # String | AlertManager URL

# Test AlertManager connectivity
try {
    $Result = Test-AlertManagerConnectivity -Url $Url
} catch {
    Write-Host ("Exception occurred when calling Test-AlertManagerConnectivity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Url** | **String**| AlertManager URL | 

### Return type

[**System.Collections.Hashtable**](AnyType.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-AlertRule"></a>
# **Update-AlertRule**
> SystemCollectionsHashtable Update-AlertRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update an alert rule

Update a specific alert rule by its identifier. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Alert rule identifier
$PortainereeAlertingRule = Initialize-PortainereeAlertingRule -AlertManagerID 0 -ConditionOperator ">" -CreatedAt "MyCreatedAt" -CreatedBy "MyCreatedBy" -Description "MyDescription" -Duration 0 -Enabled $false -Id 0 -IsEditable $false -IsInternal $false -Labels @{ key_example = "MyInner" } -MetricType "percentage" -Name "MyName" -Severity "critical" -Summary "MySummary" -SupportedAgentVersion "MySupportedAgentVersion" -SupportedEnvironmentTypes "docker" -Threshold 0 -UpdatedAt "MyUpdatedAt"
$ObservabilityAlertRuleUpdatePayload = Initialize-ObservabilityAlertRuleUpdatePayload -AlertingRule $PortainereeAlertingRule # ObservabilityAlertRuleUpdatePayload | Alert rule details

# Update an alert rule
try {
    $Result = Update-AlertRule -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Update-AlertRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Alert rule identifier | 
 **Body** | [**ObservabilityAlertRuleUpdatePayload**](ObservabilityAlertRuleUpdatePayload.md)| Alert rule details | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-AlertingSettings"></a>
# **Update-AlertingSettings**
> SystemCollectionsHashtable Update-AlertingSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update alerting settings

Update alerting settings and manage internal AlertManager lifecycle. **Access policy**: Authenticated user.

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

$PortainereeAlertingNotificationChannel = Initialize-PortainereeAlertingNotificationChannel -Config @{ key_example =  } -Enabled $false -Id 0 -Name "MyName" -Type "slack"
$PortainereeAlertingSettings = Initialize-PortainereeAlertingSettings -CreatedAt "MyCreatedAt" -CreatedBy "MyCreatedBy" -Enabled $false -Id 0 -IsInternal $false -Name "MyName" -NotificationChannels $PortainereeAlertingNotificationChannel -PortainerURL "MyPortainerURL" -Status "disabled" -Uptime "MyUptime" -Url "MyUrl"

$ObservabilityAlertingUpdatePayload = Initialize-ObservabilityAlertingUpdatePayload -AlertingSettings $PortainereeAlertingSettings # ObservabilityAlertingUpdatePayload | Alerting settings details

# Update alerting settings
try {
    $Result = Update-AlertingSettings -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Update-AlertingSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**ObservabilityAlertingUpdatePayload**](ObservabilityAlertingUpdatePayload.md)| Alerting settings details | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

