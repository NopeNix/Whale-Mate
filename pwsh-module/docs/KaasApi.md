# PSOpenAPITools.PSOpenAPITools\Api.KaasApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-Nodes**](KaasApi.md#Add-Nodes) | **POST** /cloud/endpoints/{environmentId}/nodes/add | Add nodes to the cluster (scale up).
[**Invoke-KaasVersion**](KaasApi.md#Invoke-KaasVersion) | **GET** /cloud/endpoints/{environmentId}/version | Get the current cluster version.
[**Invoke-Microk8sGetAddons**](KaasApi.md#Invoke-Microk8sGetAddons) | **GET** /cloud/endpoints/{environmentId}/addons | Get a list of addons which are installed in a MicroK8s cluster.
[**Invoke-Microk8sGetNodeStatus**](KaasApi.md#Invoke-Microk8sGetNodeStatus) | **GET** /cloud/endpoints/{environmentId}/nodes/nodestatus | Get the MicroK8s status for a control plane node.
[**Invoke-Microk8sUpdateAddons**](KaasApi.md#Invoke-Microk8sUpdateAddons) | **POST** /cloud/endpoints/{environmentId}/addons | Get a list of addons which are installed in a MicroK8s cluster.
[**Invoke-ProviderInfo**](KaasApi.md#Invoke-ProviderInfo) | **GET** /cloud/{provider}/info | Get information about the provisioning options for a cloud provider.
[**Invoke-ProvisionCluster**](KaasApi.md#Invoke-ProvisionCluster) | **POST** /cloud/{provider}/provision | Provision a new CIVO, Linode or Digital Ocean cluster and create an environment
[**Invoke-ProvisionClusterAmazon**](KaasApi.md#Invoke-ProvisionClusterAmazon) | **POST** /cloud/amazon/provision | Provision a new Amazon EKS and create an environment
[**Invoke-ProvisionClusterAzure**](KaasApi.md#Invoke-ProvisionClusterAzure) | **POST** /cloud/azure/provision | Provision a new Microsoft Azure cluster and create an environment
[**Invoke-ProvisionClusterGKE**](KaasApi.md#Invoke-ProvisionClusterGKE) | **POST** /cloud/gke/provision | Provision a new Google Kubernetes (GKE) cluster and create an environment
[**Remove-Nodes**](KaasApi.md#Remove-Nodes) | **POST** /cloud/endpoints/{environmentId}/nodes/remove | Remove nodes from the cluster and uninstall MicroK8s from them.
[**Test-SSH**](KaasApi.md#Test-SSH) | **POST** /cloud/testssh | Test SSH connection to nodes
[**Invoke-Upgrade**](KaasApi.md#Invoke-Upgrade) | **POST** /cloud/endpoints/{environmentId}/upgrade | Upgrade the cluster to the next stable kubernetes version.


<a id="Add-Nodes"></a>
# **Add-Nodes**
> void Add-Nodes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <Int32><br>

Add nodes to the cluster (scale up).

Add control plane and worker nodes to the cluster. **Access policy**: authenticated

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

$EnvironmentId = 56 # Int32 | Environment(Endpoint) identifier

# Add nodes to the cluster (scale up).
try {
    $Result = Add-Nodes -EnvironmentId $EnvironmentId
} catch {
    Write-Host ("Exception occurred when calling Add-Nodes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Environment(Endpoint) identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-KaasVersion"></a>
# **Invoke-KaasVersion**
> void Invoke-KaasVersion<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <Int32><br>

Get the current cluster version.

Get the current cluster version. **Access policy**: authenticated

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

$EnvironmentId = 56 # Int32 | Environment(Endpoint) identifier

# Get the current cluster version.
try {
    $Result = Invoke-KaasVersion -EnvironmentId $EnvironmentId
} catch {
    Write-Host ("Exception occurred when calling Invoke-KaasVersion: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Environment(Endpoint) identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-Microk8sGetAddons"></a>
# **Invoke-Microk8sGetAddons**
> void Invoke-Microk8sGetAddons<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <Int32><br>

Get a list of addons which are installed in a MicroK8s cluster.

The information returned can be used to query the MircoK8s cluster. **Access policy**: authenticated

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

$EnvironmentId = 56 # Int32 | Environment(Endpoint) identifier

# Get a list of addons which are installed in a MicroK8s cluster.
try {
    $Result = Invoke-Microk8sGetAddons -EnvironmentId $EnvironmentId
} catch {
    Write-Host ("Exception occurred when calling Invoke-Microk8sGetAddons: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Environment(Endpoint) identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-Microk8sGetNodeStatus"></a>
# **Invoke-Microk8sGetNodeStatus**
> void Invoke-Microk8sGetNodeStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NodeIP] <String><br>

Get the MicroK8s status for a control plane node.

Get the MicroK8s status for a control plane node in a MicroK8s cluster. **Access policy**: authenticated

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

$EnvironmentId = 56 # Int32 | Environment(Endpoint) identifier
$NodeIP = "MyNodeIP" # String | The external node ip of the control plane node.

# Get the MicroK8s status for a control plane node.
try {
    $Result = Invoke-Microk8sGetNodeStatus -EnvironmentId $EnvironmentId -NodeIP $NodeIP
} catch {
    Write-Host ("Exception occurred when calling Invoke-Microk8sGetNodeStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Environment(Endpoint) identifier | 
 **NodeIP** | **String**| The external node ip of the control plane node. | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-Microk8sUpdateAddons"></a>
# **Invoke-Microk8sUpdateAddons**
> void Invoke-Microk8sUpdateAddons<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Addons] <PSCustomObject><br>

Get a list of addons which are installed in a MicroK8s cluster.

The information returned can be used to query the MircoK8s cluster. **Access policy**: authenticated

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

$EnvironmentId = 56 # Int32 | Environment(Endpoint) identifier
$PortainereeMicroK8sAddon = Initialize-PortainereeMicroK8sAddon -Arguments "MyArguments" -Name "MyName" -Repository "MyRepository"
$ProvidersMicrok8sUpdateAddonsPayload = Initialize-ProvidersMicrok8sUpdateAddonsPayload -Addons $PortainereeMicroK8sAddon # ProvidersMicrok8sUpdateAddonsPayload | The list of addons to install in the cluster.

# Get a list of addons which are installed in a MicroK8s cluster.
try {
    $Result = Invoke-Microk8sUpdateAddons -EnvironmentId $EnvironmentId -Addons $Addons
} catch {
    Write-Host ("Exception occurred when calling Invoke-Microk8sUpdateAddons: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Environment(Endpoint) identifier | 
 **Addons** | [**ProvidersMicrok8sUpdateAddonsPayload**](ProvidersMicrok8sUpdateAddonsPayload.md)| The list of addons to install in the cluster. | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ProviderInfo"></a>
# **Invoke-ProviderInfo**
> void Invoke-ProviderInfo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Provider] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Force] <System.Nullable[Boolean]><br>

Get information about the provisioning options for a cloud provider.

The information returned can be used to provision a KaaS cluster. **Access policy**: administrator

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

$Provider = ""amazon"" # String | Provider
$Force = $true # Boolean | If true, get the up-to-date information (instead of cached information). (optional)

# Get information about the provisioning options for a cloud provider.
try {
    $Result = Invoke-ProviderInfo -Provider $Provider -Force $Force
} catch {
    Write-Host ("Exception occurred when calling Invoke-ProviderInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Provider** | **String**| Provider | 
 **Force** | **Boolean**| If true, get the up-to-date information (instead of cached information). | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ProvisionCluster"></a>
# **Invoke-ProvisionCluster**
> PortainereeEndpoint Invoke-ProvisionCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Provider] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Provision a new CIVO, Linode or Digital Ocean cluster and create an environment

Provision a new KaaS cluster and create an environment. This documentation is specifically for civo, digitial ocean and linode.  For Azure, GKE and Amazon see: **/cloud/amazon/provision** **/cloud/azure/provision** **/cloud/gke/provision**  **Access policy**: administrator

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

$Provider = ""civo"" # String | Provider
$TypesEnvironmentMetadata = Initialize-TypesEnvironmentMetadata -CustomTemplateContent "MyCustomTemplateContent" -CustomTemplateID 0 -GroupId 0 -StackName "MyStackName" -TagIds 0
$ProvidersDefaultProvisionPayload = Initialize-ProvidersDefaultProvisionPayload -CredentialID 1 -KubernetesVersion "1.23" -Name "myDevCluster" -NetworkID "8465fb26-632e-4fa3-bb9b-21c449629026" -NodeCount 3 -NodeSize "g3.small" -Region "NYC1" -Meta $TypesEnvironmentMetadata # ProvidersDefaultProvisionPayload | KaaS cluster provisioning details

# Provision a new CIVO, Linode or Digital Ocean cluster and create an environment
try {
    $Result = Invoke-ProvisionCluster -Provider $Provider -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-ProvisionCluster: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Provider** | **String**| Provider | 
 **Body** | [**ProvidersDefaultProvisionPayload**](ProvidersDefaultProvisionPayload.md)| KaaS cluster provisioning details | 

### Return type

[**PortainereeEndpoint**](PortainereeEndpoint.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ProvisionClusterAmazon"></a>
# **Invoke-ProvisionClusterAmazon**
> PortainereeEndpoint Invoke-ProvisionClusterAmazon<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Provision a new Amazon EKS and create an environment

Provision a new KaaS cluster and create an environment. **Access policy**: administrator

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

$TypesEnvironmentMetadata = Initialize-TypesEnvironmentMetadata -CustomTemplateContent "MyCustomTemplateContent" -CustomTemplateID 0 -GroupId 0 -StackName "MyStackName" -TagIds 0
$ProvidersAmazonProvisionPayload = Initialize-ProvidersAmazonProvisionPayload -AmiType "BOTTLEROCKET_x86_64" -CredentialID 1 -InstanceType "m5.large" -KubernetesVersion "1.23" -Name "myDevCluster" -NetworkID "8465fb26-632e-4fa3-bb9b-21c449629026" -NodeCount 3 -NodeSize "g3.small" -NodeVolumeSize 20 -Region "NYC1" -Meta $TypesEnvironmentMetadata # ProvidersAmazonProvisionPayload | KaaS cluster provisioning details

# Provision a new Amazon EKS and create an environment
try {
    $Result = Invoke-ProvisionClusterAmazon -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-ProvisionClusterAmazon: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**ProvidersAmazonProvisionPayload**](ProvidersAmazonProvisionPayload.md)| KaaS cluster provisioning details | 

### Return type

[**PortainereeEndpoint**](PortainereeEndpoint.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ProvisionClusterAzure"></a>
# **Invoke-ProvisionClusterAzure**
> PortainereeEndpoint Invoke-ProvisionClusterAzure<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Provision a new Microsoft Azure cluster and create an environment

Provision a new KaaS cluster and create an environment. **Access policy**: administrator

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

$TypesEnvironmentMetadata = Initialize-TypesEnvironmentMetadata -CustomTemplateContent "MyCustomTemplateContent" -CustomTemplateID 0 -GroupId 0 -StackName "MyStackName" -TagIds 0
$ProvidersAzureProvisionPayload = Initialize-ProvidersAzureProvisionPayload -CredentialID 1 -KubernetesVersion "1.23" -Name "myDevCluster" -NetworkID "8465fb26-632e-4fa3-bb9b-21c449629026" -NodeCount 3 -NodeSize "g3.small" -Region "NYC1" -AvailabilityZones "MyAvailabilityZones" -DnsPrefix "MyDnsPrefix" -Meta $TypesEnvironmentMetadata -PoolName "MyPoolName" -ResourceGroup "MyResourceGroup" -ResourceGroupName "MyResourceGroupName" -Tier "MyTier" # ProvidersAzureProvisionPayload | KaaS cluster provisioning details

# Provision a new Microsoft Azure cluster and create an environment
try {
    $Result = Invoke-ProvisionClusterAzure -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-ProvisionClusterAzure: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**ProvidersAzureProvisionPayload**](ProvidersAzureProvisionPayload.md)| KaaS cluster provisioning details | 

### Return type

[**PortainereeEndpoint**](PortainereeEndpoint.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ProvisionClusterGKE"></a>
# **Invoke-ProvisionClusterGKE**
> PortainereeEndpoint Invoke-ProvisionClusterGKE<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Provision a new Google Kubernetes (GKE) cluster and create an environment

Provision a new KaaS cluster and create an environment. **Access policy**: administrator

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

$TypesEnvironmentMetadata = Initialize-TypesEnvironmentMetadata -CustomTemplateContent "MyCustomTemplateContent" -CustomTemplateID 0 -GroupId 0 -StackName "MyStackName" -TagIds 0
$ProvidersGKEProvisionPayload = Initialize-ProvidersGKEProvisionPayload -CPU 2 -CredentialID 1 -HDD 100 -KubernetesVersion "1.23" -Name "myDevCluster" -NetworkID "8465fb26-632e-4fa3-bb9b-21c449629026" -NodeCount 3 -NodeSize "g3.small" -RAM 4.0 -Region "NYC1" -Meta $TypesEnvironmentMetadata # ProvidersGKEProvisionPayload | KaaS cluster provisioning details

# Provision a new Google Kubernetes (GKE) cluster and create an environment
try {
    $Result = Invoke-ProvisionClusterGKE -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-ProvisionClusterGKE: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**ProvidersGKEProvisionPayload**](ProvidersGKEProvisionPayload.md)| KaaS cluster provisioning details | 

### Return type

[**PortainereeEndpoint**](PortainereeEndpoint.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-Nodes"></a>
# **Remove-Nodes**
> void Remove-Nodes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <Int32><br>

Remove nodes from the cluster and uninstall MicroK8s from them.

Remove nodes from the cluster and uninstall MicroK8s from them. **Access policy**: authenticated

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

$EnvironmentId = 56 # Int32 | Environment(Endpoint) identifier

# Remove nodes from the cluster and uninstall MicroK8s from them.
try {
    $Result = Remove-Nodes -EnvironmentId $EnvironmentId
} catch {
    Write-Host ("Exception occurred when calling Remove-Nodes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Environment(Endpoint) identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Test-SSH"></a>
# **Test-SSH**
> SshtestSSHTestResult[] Test-SSH<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Test SSH connection to nodes

Test SSH connection to nodes. **Access policy**: administrator

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

$ProvidersMicrok8sTestSSHPayload = Initialize-ProvidersMicrok8sTestSSHPayload -CredentialID 1 -NodeIPs "MyNodeIPs" # ProvidersMicrok8sTestSSHPayload | Node IPs and credential ID

# Test SSH connection to nodes
try {
    $Result = Test-SSH -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Test-SSH: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**ProvidersMicrok8sTestSSHPayload**](ProvidersMicrok8sTestSSHPayload.md)| Node IPs and credential ID | 

### Return type

[**SshtestSSHTestResult[]**](SshtestSSHTestResult.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-Upgrade"></a>
# **Invoke-Upgrade**
> void Invoke-Upgrade<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <Int32><br>

Upgrade the cluster to the next stable kubernetes version.

Upgrade the cluster to the next stable kubernetes version. **Access policy**: authenticated

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

$EnvironmentId = 56 # Int32 | Environment(Endpoint) identifier

# Upgrade the cluster to the next stable kubernetes version.
try {
    $Result = Invoke-Upgrade -EnvironmentId $EnvironmentId
} catch {
    Write-Host ("Exception occurred when calling Invoke-Upgrade: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Environment(Endpoint) identifier | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

