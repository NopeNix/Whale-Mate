# PSOpenAPITools.PSOpenAPITools\Api.UseractivityApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-AuthLogsCSV**](UseractivityApi.md#Invoke-AuthLogsCSV) | **GET** /useractivity/authlogs.csv | Download auth logs as CSV
[**Invoke-AuthLogsList**](UseractivityApi.md#Invoke-AuthLogsList) | **GET** /useractivity/authlogs | List auth activity logs
[**Invoke-LogsCSV**](UseractivityApi.md#Invoke-LogsCSV) | **GET** /useractivity/logs.csv | Download user activity logs as CSV
[**Invoke-LogsList**](UseractivityApi.md#Invoke-LogsList) | **GET** /useractivity/logs | List user activity logs


<a id="Invoke-AuthLogsCSV"></a>
# **Invoke-AuthLogsCSV**
> void Invoke-AuthLogsCSV<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortDesc] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Keyword] <String><br>

Download auth logs as CSV

Download auth logs as CSV by provided query **Access policy**: admin

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

$Before = 56 # Int32 | Results before timestamp (unix) (optional)
$After = 56 # Int32 | Results after timestamp (unix) (optional)
$SortBy = "MySortBy" # String | Sort by this column (optional)
$SortDesc = $true # Boolean | Sort order, if true will return results by descending order (optional)
$Limit = 56 # Int32 | Limit results (optional)
$Keyword = "MyKeyword" # String | Query logs by this keyword (optional)

# Download auth logs as CSV
try {
    $Result = Invoke-AuthLogsCSV -Before $Before -After $After -SortBy $SortBy -SortDesc $SortDesc -Limit $Limit -Keyword $Keyword
} catch {
    Write-Host ("Exception occurred when calling Invoke-AuthLogsCSV: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Before** | **Int32**| Results before timestamp (unix) | [optional] 
 **After** | **Int32**| Results after timestamp (unix) | [optional] 
 **SortBy** | **String**| Sort by this column | [optional] 
 **SortDesc** | **Boolean**| Sort order, if true will return results by descending order | [optional] 
 **Limit** | **Int32**| Limit results | [optional] 
 **Keyword** | **String**| Query logs by this keyword | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-AuthLogsList"></a>
# **Invoke-AuthLogsList**
> PortainereeAuthActivityLog[] Invoke-AuthLogsList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortDesc] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Keyword] <String><br>

List auth activity logs

List logs by provided query **Access policy**: admin

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

$Offset = 56 # Int32 | Pagination offset (optional)
$Limit = 56 # Int32 | Limit results (optional)
$Before = 56 # Int32 | Results before timestamp (unix) (optional)
$After = 56 # Int32 | Results after timestamp (unix) (optional)
$SortBy = "MySortBy" # String | Sort by this column (optional)
$SortDesc = $true # Boolean | Sort order, if true will return results by descending order (optional)
$Keyword = "MyKeyword" # String | Query logs by this keyword (optional)

# List auth activity logs
try {
    $Result = Invoke-AuthLogsList -Offset $Offset -Limit $Limit -Before $Before -After $After -SortBy $SortBy -SortDesc $SortDesc -Keyword $Keyword
} catch {
    Write-Host ("Exception occurred when calling Invoke-AuthLogsList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int32**| Pagination offset | [optional] 
 **Limit** | **Int32**| Limit results | [optional] 
 **Before** | **Int32**| Results before timestamp (unix) | [optional] 
 **After** | **Int32**| Results after timestamp (unix) | [optional] 
 **SortBy** | **String**| Sort by this column | [optional] 
 **SortDesc** | **Boolean**| Sort order, if true will return results by descending order | [optional] 
 **Keyword** | **String**| Query logs by this keyword | [optional] 

### Return type

[**PortainereeAuthActivityLog[]**](PortainereeAuthActivityLog.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LogsCSV"></a>
# **Invoke-LogsCSV**
> void Invoke-LogsCSV<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortDesc] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Keyword] <String><br>

Download user activity logs as CSV

Download user activity logs as CSV by provided query **Access policy**: admin

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

$Before = 56 # Int32 | Results before timestamp (unix) (optional)
$After = 56 # Int32 | Results after timestamp (unix) (optional)
$SortBy = "MySortBy" # String | Sort by this column (optional)
$SortDesc = $true # Boolean | Sort order, if true will return results by descending order (optional)
$Limit = 56 # Int32 | Limit results (defaults to 1000000 if not provided, zero, negative, or exceeds maximum) (optional)
$Keyword = "MyKeyword" # String | Query logs by this keyword (optional)

# Download user activity logs as CSV
try {
    $Result = Invoke-LogsCSV -Before $Before -After $After -SortBy $SortBy -SortDesc $SortDesc -Limit $Limit -Keyword $Keyword
} catch {
    Write-Host ("Exception occurred when calling Invoke-LogsCSV: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Before** | **Int32**| Results before timestamp (unix) | [optional] 
 **After** | **Int32**| Results after timestamp (unix) | [optional] 
 **SortBy** | **String**| Sort by this column | [optional] 
 **SortDesc** | **Boolean**| Sort order, if true will return results by descending order | [optional] 
 **Limit** | **Int32**| Limit results (defaults to 1000000 if not provided, zero, negative, or exceeds maximum) | [optional] 
 **Keyword** | **String**| Query logs by this keyword | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LogsList"></a>
# **Invoke-LogsList**
> UseractivityLogsListResponse Invoke-LogsList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortDesc] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Keyword] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Context] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String[]><br>

List user activity logs

List logs by provided query **Access policy**: admin

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

$Offset = 56 # Int32 | Pagination offset (optional)
$Limit = 56 # Int32 | Limit results (optional)
$Before = 56 # Int32 | Results before timestamp (unix) (optional)
$After = 56 # Int32 | Results after timestamp (unix) (optional)
$SortBy = "MySortBy" # String | Sort by this column (optional)
$SortDesc = $true # Boolean | Sort order, if true will return results by descending order (optional)
$Keyword = "MyKeyword" # String | Query logs by this keyword (optional)
$Context = "MyContext" # String[] | Filter by context (optional)
$Username = "MyUsername" # String[] | Filter by usernames (optional)

# List user activity logs
try {
    $Result = Invoke-LogsList -Offset $Offset -Limit $Limit -Before $Before -After $After -SortBy $SortBy -SortDesc $SortDesc -Keyword $Keyword -Context $Context -Username $Username
} catch {
    Write-Host ("Exception occurred when calling Invoke-LogsList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int32**| Pagination offset | [optional] 
 **Limit** | **Int32**| Limit results | [optional] 
 **Before** | **Int32**| Results before timestamp (unix) | [optional] 
 **After** | **Int32**| Results after timestamp (unix) | [optional] 
 **SortBy** | **String**| Sort by this column | [optional] 
 **SortDesc** | **Boolean**| Sort order, if true will return results by descending order | [optional] 
 **Keyword** | **String**| Query logs by this keyword | [optional] 
 **Context** | [**String[]**](String.md)| Filter by context | [optional] 
 **Username** | [**String[]**](String.md)| Filter by usernames | [optional] 

### Return type

[**UseractivityLogsListResponse**](UseractivityLogsListResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

