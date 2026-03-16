# PSOpenAPITools.PSOpenAPITools\Api.KubernetesApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-KubernetesIngress**](KubernetesApi.md#New-KubernetesIngress) | **POST** /kubernetes/{id}/namespaces/{namespace}/ingresses | Create an Ingress
[**New-KubernetesNamespace**](KubernetesApi.md#New-KubernetesNamespace) | **POST** /kubernetes/{id}/namespaces | Create a namespace
[**New-KubernetesService**](KubernetesApi.md#New-KubernetesService) | **POST** /kubernetes/{id}/namespaces/{namespace}/services | Create a service
[**Invoke-DeleteClusterRoleBindings**](KubernetesApi.md#Invoke-DeleteClusterRoleBindings) | **POST** /kubernetes/{id}/cluster_role_bindings/delete | Delete cluster role bindings
[**Invoke-DeleteClusterRoles**](KubernetesApi.md#Invoke-DeleteClusterRoles) | **POST** /kubernetes/{id}/cluster_roles/delete | Delete cluster roles
[**Invoke-DeleteCronJobs**](KubernetesApi.md#Invoke-DeleteCronJobs) | **POST** /kubernetes/{id}/cron_jobs/delete | Delete Cron Jobs
[**Invoke-DeleteJobs**](KubernetesApi.md#Invoke-DeleteJobs) | **POST** /kubernetes/{id}/jobs/delete | Delete Jobs
[**Invoke-DeleteKubernetesClusterScopedCustomResource**](KubernetesApi.md#Invoke-DeleteKubernetesClusterScopedCustomResource) | **DELETE** /kubernetes/{id}/customresources/{name} | Delete a cluster-scoped kubernetes Custom Resource
[**Invoke-DeleteKubernetesCustomResourceDefinition**](KubernetesApi.md#Invoke-DeleteKubernetesCustomResourceDefinition) | **DELETE** /kubernetes/{id}/customresourcedefinitions/{name} | Delete a kubernetes Custom Resource Definition
[**Invoke-DeleteKubernetesIngresses**](KubernetesApi.md#Invoke-DeleteKubernetesIngresses) | **POST** /kubernetes/{id}/ingresses/delete | Delete one or more Ingresses
[**Invoke-DeleteKubernetesNamespace**](KubernetesApi.md#Invoke-DeleteKubernetesNamespace) | **DELETE** /kubernetes/{id}/namespaces | Delete a kubernetes namespace
[**Invoke-DeleteKubernetesNamespacedCustomResource**](KubernetesApi.md#Invoke-DeleteKubernetesNamespacedCustomResource) | **DELETE** /kubernetes/{id}/customresources/{namespace}/{name} | Delete a namespaced kubernetes Custom Resource
[**Invoke-DeleteKubernetesServices**](KubernetesApi.md#Invoke-DeleteKubernetesServices) | **POST** /kubernetes/{id}/services/delete | Delete services
[**Invoke-DeleteRoleBindings**](KubernetesApi.md#Invoke-DeleteRoleBindings) | **POST** /kubernetes/{id}/role_bindings/delete | Delete role bindings
[**Invoke-DeleteRoles**](KubernetesApi.md#Invoke-DeleteRoles) | **POST** /kubernetes/{id}/roles/delete | Delete roles
[**Invoke-DeleteServiceAccounts**](KubernetesApi.md#Invoke-DeleteServiceAccounts) | **POST** /kubernetes/{id}/service_accounts/delete | Delete service accounts
[**Invoke-DescribeResource**](KubernetesApi.md#Invoke-DescribeResource) | **GET** /kubernetes/{id}/describe | Get a description of a kubernetes resource
[**Invoke-DrainNode**](KubernetesApi.md#Invoke-DrainNode) | **POST** /kubernetes/{id}/nodes/{name}/drain | Drain a Kubernetes node
[**Get-AllKubernetesApplication**](KubernetesApi.md#Get-AllKubernetesApplication) | **GET** /kubernetes/{id}/namespaces/{namespace}/applications/{name} | Get an application by name in a specific namespace
[**Get-AllKubernetesApplications**](KubernetesApi.md#Get-AllKubernetesApplications) | **GET** /kubernetes/{id}/applications | Get a list of applications across all namespaces in the cluster. If the nodeName is provided, it will return the applications running on that node.
[**Get-AllKubernetesApplicationsCount**](KubernetesApi.md#Get-AllKubernetesApplicationsCount) | **GET** /kubernetes/{id}/applications/count | Get Applications count
[**Get-AllKubernetesClusterIngresses**](KubernetesApi.md#Get-AllKubernetesClusterIngresses) | **GET** /kubernetes/{id}/ingresses | Get kubernetes ingresses at the cluster level
[**Get-AllKubernetesClusterIngressesCount**](KubernetesApi.md#Get-AllKubernetesClusterIngressesCount) | **GET** /kubernetes/{id}/ingresses/count | Get Ingresses count
[**Get-AllKubernetesClusterRoleBindings**](KubernetesApi.md#Get-AllKubernetesClusterRoleBindings) | **GET** /kubernetes/{id}/clusterrolebindings | Get a list of kubernetes cluster role bindings
[**Get-AllKubernetesClusterRoles**](KubernetesApi.md#Get-AllKubernetesClusterRoles) | **GET** /kubernetes/{id}/clusterroles | Get a list of kubernetes cluster roles
[**Get-AllKubernetesConfigMaps**](KubernetesApi.md#Get-AllKubernetesConfigMaps) | **GET** /kubernetes/{id}/configmaps | Get a list of ConfigMaps
[**Get-AllKubernetesConfigMapsCount**](KubernetesApi.md#Get-AllKubernetesConfigMapsCount) | **GET** /kubernetes/{id}/configmaps/count | Get ConfigMaps count
[**Get-AllKubernetesEvents**](KubernetesApi.md#Get-AllKubernetesEvents) | **GET** /kubernetes/{id}/events | Gets kubernetes events
[**Get-AllKubernetesIngressControllers**](KubernetesApi.md#Get-AllKubernetesIngressControllers) | **GET** /kubernetes/{id}/ingresscontrollers | Get a list of ingress controllers
[**Get-AllKubernetesIngresses**](KubernetesApi.md#Get-AllKubernetesIngresses) | **GET** /kubernetes/{id}/namespaces/{namespace}/ingresses | Get a list of Ingresses
[**Get-AllKubernetesServicesCount**](KubernetesApi.md#Get-AllKubernetesServicesCount) | **GET** /kubernetes/{id}/services/count | Get services count
[**Get-AllKubernetesVolumes**](KubernetesApi.md#Get-AllKubernetesVolumes) | **GET** /kubernetes/{id}/volumes | Get Kubernetes volumes within the given Portainer environment
[**Get-AllKubernetesVolumesCount**](KubernetesApi.md#Get-AllKubernetesVolumesCount) | **GET** /kubernetes/{id}/volumes/count | Get the total number of kubernetes volumes within the given Portainer environment.
[**Get-ApplicationsResources**](KubernetesApi.md#Get-ApplicationsResources) | **GET** /kubernetes/{id}/metrics/applications_resources | Get the total CPU (cores) and memory requests (MB) and limits of all applications across all namespaces
[**Get-KubernetesAllCustomResources**](KubernetesApi.md#Get-KubernetesAllCustomResources) | **GET** /kubernetes/{id}/customresources | Get a list of kubernetes Custom Resources
[**Get-KubernetesClusterScopedCustomResource**](KubernetesApi.md#Get-KubernetesClusterScopedCustomResource) | **GET** /kubernetes/{id}/customresources/{name} | Get a cluster-scoped kubernetes Custom Resource
[**Get-KubernetesConfigMap**](KubernetesApi.md#Get-KubernetesConfigMap) | **GET** /kubernetes/{id}/namespaces/{namespace}/configmaps/{configmap} | Get a ConfigMap
[**Get-KubernetesCronJobs**](KubernetesApi.md#Get-KubernetesCronJobs) | **GET** /kubernetes/{id}/cron_jobs | Get a list of kubernetes Cron Jobs
[**Get-KubernetesCustomResourceDefinition**](KubernetesApi.md#Get-KubernetesCustomResourceDefinition) | **GET** /kubernetes/{id}/customresourcedefinitions/{name} | Get a kubernetes Custom Resource Definition
[**Get-KubernetesCustomResourceDefinitions**](KubernetesApi.md#Get-KubernetesCustomResourceDefinitions) | **GET** /kubernetes/{id}/customresourcedefinitions | Get a list of kubernetes Custom Resource Definitions
[**Get-KubernetesDashboard**](KubernetesApi.md#Get-KubernetesDashboard) | **GET** /kubernetes/{id}/dashboard | Get the dashboard summary data
[**Get-KubernetesEventsForNamespace**](KubernetesApi.md#Get-KubernetesEventsForNamespace) | **GET** /kubernetes/{id}/namespaces/{namespace}/events | Gets kubernetes events for namespace
[**Get-KubernetesIngress**](KubernetesApi.md#Get-KubernetesIngress) | **GET** /kubernetes/{id}/namespaces/{namespace}/ingresses/{ingress} | Get an Ingress by name
[**Get-KubernetesIngressControllersByNamespace**](KubernetesApi.md#Get-KubernetesIngressControllersByNamespace) | **GET** /kubernetes/{id}/namespaces/{namespace}/ingresscontrollers | Get a list ingress controllers by namespace
[**Get-KubernetesJobs**](KubernetesApi.md#Get-KubernetesJobs) | **GET** /kubernetes/{id}/jobs | Get a list of kubernetes Jobs
[**Get-KubernetesMaxResourceLimits**](KubernetesApi.md#Get-KubernetesMaxResourceLimits) | **GET** /kubernetes/{id}/max_resource_limits | Get max CPU and memory limits of all nodes within k8s cluster
[**Get-KubernetesMetricsForAllNodes**](KubernetesApi.md#Get-KubernetesMetricsForAllNodes) | **GET** /kubernetes/{id}/metrics/nodes | Get a list of nodes with their live metrics
[**Get-KubernetesMetricsForAllPods**](KubernetesApi.md#Get-KubernetesMetricsForAllPods) | **GET** /kubernetes/{id}/metrics/pods/{namespace} | Get a list of pods with their live metrics
[**Get-KubernetesMetricsForNode**](KubernetesApi.md#Get-KubernetesMetricsForNode) | **GET** /kubernetes/{id}/metrics/nodes/{name} | Get live metrics for a node
[**Get-KubernetesMetricsForPod**](KubernetesApi.md#Get-KubernetesMetricsForPod) | **GET** /kubernetes/{id}/metrics/pods/{namespace}/{name} | Get live metrics for a pod
[**Get-KubernetesNamespace**](KubernetesApi.md#Get-KubernetesNamespace) | **GET** /kubernetes/{id}/namespaces/{namespace} | Get namespace details
[**Get-KubernetesNamespacedCustomResource**](KubernetesApi.md#Get-KubernetesNamespacedCustomResource) | **GET** /kubernetes/{id}/customresources/{namespace}/{name} | Get a list of kubernetes Custom Resources
[**Get-KubernetesNamespaces**](KubernetesApi.md#Get-KubernetesNamespaces) | **GET** /kubernetes/{id}/namespaces | Get a list of namespaces
[**Get-KubernetesNamespacesCount**](KubernetesApi.md#Get-KubernetesNamespacesCount) | **GET** /kubernetes/{id}/namespaces/count | Get the total number of kubernetes namespaces within the given Portainer environment.
[**Get-KubernetesNodesLimits**](KubernetesApi.md#Get-KubernetesNodesLimits) | **GET** /kubernetes/{id}/nodes_limits | Get CPU and memory limits of all nodes within k8s cluster.
[**Get-KubernetesPodSecurityRule**](KubernetesApi.md#Get-KubernetesPodSecurityRule) | **GET** /kubernetes/{environmentId}/opa | Get Pod Security Rule within k8s cluster, if not found, the frontend will create a default
[**Get-KubernetesRBACStatus**](KubernetesApi.md#Get-KubernetesRBACStatus) | **GET** /kubernetes/{id}/rbac_enabled | Check if RBAC is enabled
[**Get-KubernetesRoleBindings**](KubernetesApi.md#Get-KubernetesRoleBindings) | **GET** /kubernetes/{id}/rolebindings | Get a list of kubernetes role bindings
[**Get-KubernetesRoles**](KubernetesApi.md#Get-KubernetesRoles) | **GET** /kubernetes/{id}/roles | Get a list of kubernetes roles
[**Get-KubernetesSecret**](KubernetesApi.md#Get-KubernetesSecret) | **GET** /kubernetes/{id}/namespaces/{namespace}/secrets/{secret} | Get a Secret
[**Get-KubernetesSecrets**](KubernetesApi.md#Get-KubernetesSecrets) | **GET** /kubernetes/{id}/secrets | Get a list of Secrets
[**Get-KubernetesSecretsCount**](KubernetesApi.md#Get-KubernetesSecretsCount) | **GET** /kubernetes/{id}/secrets/count | Get Secrets count
[**Get-KubernetesServiceAccounts**](KubernetesApi.md#Get-KubernetesServiceAccounts) | **GET** /kubernetes/{id}/serviceaccounts | Get a list of kubernetes service accounts
[**Get-KubernetesServices**](KubernetesApi.md#Get-KubernetesServices) | **GET** /kubernetes/{id}/services | Get a list of services
[**Get-KubernetesServicesByNamespace**](KubernetesApi.md#Get-KubernetesServicesByNamespace) | **GET** /kubernetes/{id}/namespaces/{namespace}/services | Get a list of services for a given namespace
[**Get-KubernetesVolume**](KubernetesApi.md#Get-KubernetesVolume) | **GET** /kubernetes/{id}/volumes/{namespace}/{volume} | Get a Kubernetes volume within the given Portainer environment
[**Get-KubernetesVolumesInNamespace**](KubernetesApi.md#Get-KubernetesVolumesInNamespace) | **GET** /kubernetes/{id}/namespaces/{namespace}/volumes | Get Kubernetes volumes within a namespace in the given Portainer environment
[**Invoke-KubernetesNamespacesToggleSystem**](KubernetesApi.md#Invoke-KubernetesNamespacesToggleSystem) | **PUT** /kubernetes/{id}/namespaces/{namespace}/system | Toggle the system state for a namespace
[**Restart-KubernetesApplication**](KubernetesApi.md#Restart-KubernetesApplication) | **POST** /kubernetes/{id}/namespaces/{namespace}/applications/{kind}/{name}/restart | Restart a Kubernetes application
[**Update-K8sPodSecurityRule**](KubernetesApi.md#Update-K8sPodSecurityRule) | **PUT** /kubernetes/{environmentId}/opa | Update Pod Security Rule within k8s cluster
[**Update-KubernetesIngress**](KubernetesApi.md#Update-KubernetesIngress) | **PUT** /kubernetes/{id}/namespaces/{namespace}/ingresses | Update an Ingress
[**Update-KubernetesIngressControllers**](KubernetesApi.md#Update-KubernetesIngressControllers) | **PUT** /kubernetes/{id}/ingresscontrollers | Update (block/unblock) ingress controllers
[**Update-KubernetesIngressControllersByNamespace**](KubernetesApi.md#Update-KubernetesIngressControllersByNamespace) | **PUT** /kubernetes/{id}/namespaces/{namespace}/ingresscontrollers | Update (block/unblock) ingress controllers by namespace
[**Update-KubernetesNamespace**](KubernetesApi.md#Update-KubernetesNamespace) | **PUT** /kubernetes/{id}/namespaces/{namespace} | Update a namespace
[**Update-KubernetesNamespaceDeprecated**](KubernetesApi.md#Update-KubernetesNamespaceDeprecated) | **PUT** /kubernetes/{id}/namespaces | Update a namespace
[**Update-KubernetesService**](KubernetesApi.md#Update-KubernetesService) | **PUT** /kubernetes/{id}/namespaces/{namespace}/services | Update a service


<a id="New-KubernetesIngress"></a>
# **New-KubernetesIngress**
> void New-KubernetesIngress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Create an Ingress

Create an Ingress for the provided environment. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | Namespace name
$ModelsK8sIngressPath = Initialize-ModelsK8sIngressPath -HasService $false -VarHost "MyVarHost" -IngressName "MyIngressName" -Path "MyPath" -PathType "MyPathType" -Port 0 -ServiceName "MyServiceName"
$ModelsK8sIngressTLS = Initialize-ModelsK8sIngressTLS -Hosts "MyHosts" -SecretName "MySecretName"
$ModelsK8sIngressInfo = Initialize-ModelsK8sIngressInfo -Annotations @{ key_example = "MyInner" } -ClassName "MyClassName" -CreationDate "MyCreationDate" -Hosts "MyHosts" -Labels @{ key_example = "MyInner" } -Name "MyName" -Namespace "MyNamespace" -Paths $ModelsK8sIngressPath -TLS $ModelsK8sIngressTLS -Type "MyType" -UID "MyUID" # ModelsK8sIngressInfo | Ingress details

# Create an Ingress
try {
    $Result = New-KubernetesIngress -Id $Id -Namespace $Namespace -Body $Body
} catch {
    Write-Host ("Exception occurred when calling New-KubernetesIngress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| Namespace name | 
 **Body** | [**ModelsK8sIngressInfo**](ModelsK8sIngressInfo.md)| Ingress details | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-KubernetesNamespace"></a>
# **New-KubernetesNamespace**
> PortainerK8sNamespaceInfo New-KubernetesNamespace<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Create a namespace

Create a namespace within the given environment. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$ModelsK8sLoadBalancerQuota = Initialize-ModelsK8sLoadBalancerQuota -Enabled $false -Limit 0
$ModelsK8sResourceQuota = Initialize-ModelsK8sResourceQuota -CpuLimit "MyCpuLimit" -CpuRequest "MyCpuRequest" -Enabled $false -MemoryLimit "MyMemoryLimit" -MemoryRequest "MyMemoryRequest"
$ModelsK8sStorageQuota = Initialize-ModelsK8sStorageQuota -Enabled $false -Limit "MyLimit"
$ModelsK8sNamespaceDetails = Initialize-ModelsK8sNamespaceDetails -Annotations @{ key_example = "MyInner" } -LoadBalancerQuota $ModelsK8sLoadBalancerQuota -Name "MyName" -Owner "MyOwner" -ResourceQuota $ModelsK8sResourceQuota -StorageQuotas @{ key_example = $ModelsK8sStorageQuota } # ModelsK8sNamespaceDetails | Namespace configuration details

# Create a namespace
try {
    $Result = New-KubernetesNamespace -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling New-KubernetesNamespace: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Body** | [**ModelsK8sNamespaceDetails**](ModelsK8sNamespaceDetails.md)| Namespace configuration details | 

### Return type

[**PortainerK8sNamespaceInfo**](PortainerK8sNamespaceInfo.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-KubernetesService"></a>
# **New-KubernetesService**
> void New-KubernetesService<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Create a service

Create a service within a given namespace **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | Namespace name
$ModelsConfiguration = Initialize-ModelsConfiguration -ConfigurationOwner "MyConfigurationOwner" -VarData @{ key_example =  } -Kind "MyKind"
$ModelsMetadata = Initialize-ModelsMetadata -Annotations @{ key_example = "MyInner" } -Labels @{ key_example = "MyInner" }
$ModelsPod = Initialize-ModelsPod -ContainerName "MyContainerName" -CreationDate "MyCreationDate" -Image "MyImage" -ImagePullPolicy "MyImagePullPolicy" -Name "MyName" -NodeName "MyNodeName" -PodIP "MyPodIP" -Status "MyStatus" -Uid "MyUid"

$ModelsTLSInfo = Initialize-ModelsTLSInfo -Hosts "MyHosts"
$ModelsIngressRule = Initialize-ModelsIngressRule -VarHost "MyVarHost" -IP "MyIP" -Path "MyPath" -TLS $ModelsTLSInfo

$ModelsPublishedPort = Initialize-ModelsPublishedPort -IngressRules $ModelsIngressRule -Port 0

$ModelsK8sApplicationResource = Initialize-ModelsK8sApplicationResource -CpuLimit 0 -CpuRequest 0 -MemoryLimit 0 -MemoryRequest 0
$ModelsK8sApplication = Initialize-ModelsK8sApplication -Annotations @{ key_example = "MyInner" } -ApplicationOwner "MyApplicationOwner" -ApplicationType "MyApplicationType" -Configurations $ModelsConfiguration -Containers  -CreationDate "MyCreationDate" -DeploymentType "MyDeploymentType" -Id "MyId" -Image "MyImage" -Kind "MyKind" -Labels @{ key_example = "MyInner" } -LoadBalancerIPAddress "MyLoadBalancerIPAddress" -MatchLabels @{ key_example = "MyInner" } -Metadata $ModelsMetadata -Name "MyName" -Namespace "MyNamespace" -Pods $ModelsPod -PublishedPorts $ModelsPublishedPort -Resource $ModelsK8sApplicationResource -ResourcePool "MyResourcePool" -RunningPodsCount 0 -ServiceId "MyServiceId" -ServiceName "MyServiceName" -ServiceType "MyServiceType" -StackId "MyStackId" -StackName "MyStackName" -Status "MyStatus" -TotalPodsCount 0 -Uid "MyUid"

$ModelsK8sServiceIngress = Initialize-ModelsK8sServiceIngress -VarHost "MyVarHost" -IP "MyIP"
$ModelsK8sServicePort = Initialize-ModelsK8sServicePort -Name "MyName" -NodePort 0 -Port 0 -Protocol "MyProtocol" -TargetPort "MyTargetPort"
$ModelsK8sServiceInfo = Initialize-ModelsK8sServiceInfo -AllocateLoadBalancerNodePorts $false -Annotations @{ key_example = "MyInner" } -Applications $ModelsK8sApplication -ClusterIPs "MyClusterIPs" -CreationDate "MyCreationDate" -ExternalIPs "MyExternalIPs" -ExternalName "MyExternalName" -IngressStatus $ModelsK8sServiceIngress -Labels @{ key_example = "MyInner" } -Name "MyName" -Namespace "MyNamespace" -Ports $ModelsK8sServicePort -Selector @{ key_example = "MyInner" } -Type "MyType" -UID "MyUID" # ModelsK8sServiceInfo | Service definition

# Create a service
try {
    $Result = New-KubernetesService -Id $Id -Namespace $Namespace -Body $Body
} catch {
    Write-Host ("Exception occurred when calling New-KubernetesService: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| Namespace name | 
 **Body** | [**ModelsK8sServiceInfo**](ModelsK8sServiceInfo.md)| Service definition | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteClusterRoleBindings"></a>
# **Invoke-DeleteClusterRoleBindings**
> void Invoke-DeleteClusterRoleBindings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Payload] <String[]><br>

Delete cluster role bindings

Delete the provided list of cluster role bindings. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Payload = "MyPayload" # String[] | A list of cluster role bindings to delete

# Delete cluster role bindings
try {
    $Result = Invoke-DeleteClusterRoleBindings -Id $Id -Payload $Payload
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteClusterRoleBindings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Payload** | [**String[]**](String.md)| A list of cluster role bindings to delete | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteClusterRoles"></a>
# **Invoke-DeleteClusterRoles**
> void Invoke-DeleteClusterRoles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Payload] <String[]><br>

Delete cluster roles

Delete the provided list of cluster roles. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Payload = "MyPayload" # String[] | A list of cluster roles to delete

# Delete cluster roles
try {
    $Result = Invoke-DeleteClusterRoles -Id $Id -Payload $Payload
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteClusterRoles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Payload** | [**String[]**](String.md)| A list of cluster roles to delete | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteCronJobs"></a>
# **Invoke-DeleteCronJobs**
> void Invoke-DeleteCronJobs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Payload] <System.Collections.Hashtable><br>

Delete Cron Jobs

Delete the provided list of Cron Jobs. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Payload = @{ key_example = "MyInner" } # System.Collections.Hashtable | A map where the key is the namespace and the value is an array of Cron Jobs to delete

# Delete Cron Jobs
try {
    $Result = Invoke-DeleteCronJobs -Id $Id -Payload $Payload
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteCronJobs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Payload** | [**System.Collections.Hashtable**](Array.md)| A map where the key is the namespace and the value is an array of Cron Jobs to delete | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteJobs"></a>
# **Invoke-DeleteJobs**
> void Invoke-DeleteJobs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Payload] <System.Collections.Hashtable><br>

Delete Jobs

Delete the provided list of Jobs. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Payload = @{ key_example = "MyInner" } # System.Collections.Hashtable | A map where the key is the namespace and the value is an array of Jobs to delete

# Delete Jobs
try {
    $Result = Invoke-DeleteJobs -Id $Id -Payload $Payload
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteJobs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Payload** | [**System.Collections.Hashtable**](Array.md)| A map where the key is the namespace and the value is an array of Jobs to delete | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteKubernetesClusterScopedCustomResource"></a>
# **Invoke-DeleteKubernetesClusterScopedCustomResource**
> void Invoke-DeleteKubernetesClusterScopedCustomResource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Definition] <String><br>

Delete a cluster-scoped kubernetes Custom Resource

Delete a cluster-scoped kubernetes Custom Resource that the user has access to. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Name = "MyName" # String | The name of the custom resource, e.g. 'pg-cluster'
$Definition = "MyDefinition" # String | The CustomResourceDefinition name of the custom resource, e.g. 'clusters.postgresql.cnpg.io'

# Delete a cluster-scoped kubernetes Custom Resource
try {
    $Result = Invoke-DeleteKubernetesClusterScopedCustomResource -Id $Id -Name $Name -Definition $Definition
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteKubernetesClusterScopedCustomResource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Name** | **String**| The name of the custom resource, e.g. &#39;pg-cluster&#39; | 
 **Definition** | **String**| The CustomResourceDefinition name of the custom resource, e.g. &#39;clusters.postgresql.cnpg.io&#39; | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteKubernetesCustomResourceDefinition"></a>
# **Invoke-DeleteKubernetesCustomResourceDefinition**
> void Invoke-DeleteKubernetesCustomResourceDefinition<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Delete a kubernetes Custom Resource Definition

Delete a kubernetes Custom Resource Definition. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Name = "MyName" # String | The name of the Custom Resource Definition to delete.

# Delete a kubernetes Custom Resource Definition
try {
    $Result = Invoke-DeleteKubernetesCustomResourceDefinition -Id $Id -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteKubernetesCustomResourceDefinition: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Name** | **String**| The name of the Custom Resource Definition to delete. | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteKubernetesIngresses"></a>
# **Invoke-DeleteKubernetesIngresses**
> void Invoke-DeleteKubernetesIngresses<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <System.Collections.Hashtable><br>

Delete one or more Ingresses

Delete one or more Ingresses in the provided environment. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Body = @{ key_example = "MyInner" } # System.Collections.Hashtable | Ingress details

# Delete one or more Ingresses
try {
    $Result = Invoke-DeleteKubernetesIngresses -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteKubernetesIngresses: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Body** | [**System.Collections.Hashtable**](Array.md)| Ingress details | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteKubernetesNamespace"></a>
# **Invoke-DeleteKubernetesNamespace**
> String Invoke-DeleteKubernetesNamespace<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Delete a kubernetes namespace

Delete a kubernetes namespace within the given environment. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier

# Delete a kubernetes namespace
try {
    $Result = Invoke-DeleteKubernetesNamespace -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteKubernetesNamespace: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 

### Return type

**String**

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteKubernetesNamespacedCustomResource"></a>
# **Invoke-DeleteKubernetesNamespacedCustomResource**
> void Invoke-DeleteKubernetesNamespacedCustomResource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Definition] <String><br>

Delete a namespaced kubernetes Custom Resource

Delete a namespaced kubernetes Custom Resource that the user has access to. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | The namespace name to delete the custom resource from
$Name = "MyName" # String | The name of the custom resource, e.g. 'pg-cluster'
$Definition = "MyDefinition" # String | The CustomResourceDefinition name of the custom resource, e.g. 'clusters.postgresql.cnpg.io'

# Delete a namespaced kubernetes Custom Resource
try {
    $Result = Invoke-DeleteKubernetesNamespacedCustomResource -Id $Id -Namespace $Namespace -Name $Name -Definition $Definition
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteKubernetesNamespacedCustomResource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| The namespace name to delete the custom resource from | 
 **Name** | **String**| The name of the custom resource, e.g. &#39;pg-cluster&#39; | 
 **Definition** | **String**| The CustomResourceDefinition name of the custom resource, e.g. &#39;clusters.postgresql.cnpg.io&#39; | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteKubernetesServices"></a>
# **Invoke-DeleteKubernetesServices**
> void Invoke-DeleteKubernetesServices<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <System.Collections.Hashtable><br>

Delete services

Delete the provided list of services. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Body = @{ key_example = "MyInner" } # System.Collections.Hashtable | A map where the key is the namespace and the value is an array of services to delete

# Delete services
try {
    $Result = Invoke-DeleteKubernetesServices -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteKubernetesServices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Body** | [**System.Collections.Hashtable**](Array.md)| A map where the key is the namespace and the value is an array of services to delete | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteRoleBindings"></a>
# **Invoke-DeleteRoleBindings**
> void Invoke-DeleteRoleBindings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Payload] <System.Collections.Hashtable><br>

Delete role bindings

Delete the provided list of role bindings. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Payload = @{ key_example = "MyInner" } # System.Collections.Hashtable | A map where the key is the namespace and the value is an array of role bindings to delete

# Delete role bindings
try {
    $Result = Invoke-DeleteRoleBindings -Id $Id -Payload $Payload
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteRoleBindings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Payload** | [**System.Collections.Hashtable**](Array.md)| A map where the key is the namespace and the value is an array of role bindings to delete | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteRoles"></a>
# **Invoke-DeleteRoles**
> void Invoke-DeleteRoles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Payload] <System.Collections.Hashtable><br>

Delete roles

Delete the provided list of roles. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Payload = @{ key_example = "MyInner" } # System.Collections.Hashtable | A map where the key is the namespace and the value is an array of roles to delete

# Delete roles
try {
    $Result = Invoke-DeleteRoles -Id $Id -Payload $Payload
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteRoles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Payload** | [**System.Collections.Hashtable**](Array.md)| A map where the key is the namespace and the value is an array of roles to delete | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteServiceAccounts"></a>
# **Invoke-DeleteServiceAccounts**
> void Invoke-DeleteServiceAccounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Payload] <System.Collections.Hashtable><br>

Delete service accounts

Delete the provided list of service accounts. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Payload = @{ key_example = "MyInner" } # System.Collections.Hashtable | A map where the key is the namespace and the value is an array of service accounts to delete

# Delete service accounts
try {
    $Result = Invoke-DeleteServiceAccounts -Id $Id -Payload $Payload
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteServiceAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Payload** | [**System.Collections.Hashtable**](Array.md)| A map where the key is the namespace and the value is an array of service accounts to delete | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DescribeResource"></a>
# **Invoke-DescribeResource**
> GithubComPortainerPortainerEeApiHttpHandlerKubernetesDescribeResourceResponse Invoke-DescribeResource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Kind] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>

Get a description of a kubernetes resource

Get a description of a kubernetes resource. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Name = "MyName" # String | Resource name
$Kind = "MyKind" # String | Resource kind
$Namespace = "MyNamespace" # String | Namespace (optional)

# Get a description of a kubernetes resource
try {
    $Result = Invoke-DescribeResource -Id $Id -Name $Name -Kind $Kind -Namespace $Namespace
} catch {
    Write-Host ("Exception occurred when calling Invoke-DescribeResource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Name** | **String**| Resource name | 
 **Kind** | **String**| Resource kind | 
 **Namespace** | **String**| Namespace | [optional] 

### Return type

[**GithubComPortainerPortainerEeApiHttpHandlerKubernetesDescribeResourceResponse**](GithubComPortainerPortainerEeApiHttpHandlerKubernetesDescribeResourceResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DrainNode"></a>
# **Invoke-DrainNode**
> void Invoke-DrainNode<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Drain a Kubernetes node

Drain a Kubernetes node by safely evicting all pods from the node, preparing it for maintenance or removal **Access policy**: authenticated

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
$Name = "MyName" # String | Name of the node to drain

# Drain a Kubernetes node
try {
    $Result = Invoke-DrainNode -Id $Id -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Invoke-DrainNode: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 
 **Name** | **String**| Name of the node to drain | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllKubernetesApplication"></a>
# **Get-AllKubernetesApplication**
> ModelsK8sApplication Get-AllKubernetesApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceType] <String><br>

Get an application by name in a specific namespace

Get an application by name in a specific namespace **Access policy**: authenticated

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
$Namespace = "MyNamespace" # String | The namespace
$Name = "MyName" # String | Application name
$ResourceType = "MyResourceType" # String | The resource type to get the application for (optional)

# Get an application by name in a specific namespace
try {
    $Result = Get-AllKubernetesApplication -Id $Id -Namespace $Namespace -Name $Name -ResourceType $ResourceType
} catch {
    Write-Host ("Exception occurred when calling Get-AllKubernetesApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 
 **Namespace** | **String**| The namespace | 
 **Name** | **String**| Application name | 
 **ResourceType** | **String**| The resource type to get the application for | [optional] 

### Return type

[**ModelsK8sApplication**](ModelsK8sApplication.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllKubernetesApplications"></a>
# **Get-AllKubernetesApplications**
> ModelsK8sApplication[] Get-AllKubernetesApplications<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NodeName] <String><br>

Get a list of applications across all namespaces in the cluster. If the nodeName is provided, it will return the applications running on that node.

Get a list of applications across all namespaces in the cluster. If the nodeName is provided, it will return the applications running on that node. **Access policy**: authenticated

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
$Namespace = "MyNamespace" # String | Namespace name
$NodeName = "MyNodeName" # String | Node name

# Get a list of applications across all namespaces in the cluster. If the nodeName is provided, it will return the applications running on that node.
try {
    $Result = Get-AllKubernetesApplications -Id $Id -Namespace $Namespace -NodeName $NodeName
} catch {
    Write-Host ("Exception occurred when calling Get-AllKubernetesApplications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 
 **Namespace** | **String**| Namespace name | 
 **NodeName** | **String**| Node name | 

### Return type

[**ModelsK8sApplication[]**](ModelsK8sApplication.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllKubernetesApplicationsCount"></a>
# **Get-AllKubernetesApplicationsCount**
> Int32 Get-AllKubernetesApplicationsCount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get Applications count

Get the count of Applications across all namespaces in the cluster. If the nodeName is provided, it will return the count of applications running on that node. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier

# Get Applications count
try {
    $Result = Get-AllKubernetesApplicationsCount -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AllKubernetesApplicationsCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 

### Return type

**Int32**

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllKubernetesClusterIngresses"></a>
# **Get-AllKubernetesClusterIngresses**
> ModelsK8sIngressInfo[] Get-AllKubernetesClusterIngresses<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WithServices] <System.Nullable[Boolean]><br>

Get kubernetes ingresses at the cluster level

Get kubernetes ingresses at the cluster level for the provided environment. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$WithServices = $true # Boolean | Lookup services associated with each ingress (optional)

# Get kubernetes ingresses at the cluster level
try {
    $Result = Get-AllKubernetesClusterIngresses -Id $Id -WithServices $WithServices
} catch {
    Write-Host ("Exception occurred when calling Get-AllKubernetesClusterIngresses: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **WithServices** | **Boolean**| Lookup services associated with each ingress | [optional] 

### Return type

[**ModelsK8sIngressInfo[]**](ModelsK8sIngressInfo.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllKubernetesClusterIngressesCount"></a>
# **Get-AllKubernetesClusterIngressesCount**
> Int32 Get-AllKubernetesClusterIngressesCount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get Ingresses count

Get the number of kubernetes ingresses within the given environment. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier

# Get Ingresses count
try {
    $Result = Get-AllKubernetesClusterIngressesCount -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AllKubernetesClusterIngressesCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 

### Return type

**Int32**

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllKubernetesClusterRoleBindings"></a>
# **Get-AllKubernetesClusterRoleBindings**
> KubernetesK8sClusterRoleBinding[] Get-AllKubernetesClusterRoleBindings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get a list of kubernetes cluster role bindings

Get a list of kubernetes cluster role bindings within the given environment at the cluster level. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier

# Get a list of kubernetes cluster role bindings
try {
    $Result = Get-AllKubernetesClusterRoleBindings -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AllKubernetesClusterRoleBindings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 

### Return type

[**KubernetesK8sClusterRoleBinding[]**](KubernetesK8sClusterRoleBinding.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllKubernetesClusterRoles"></a>
# **Get-AllKubernetesClusterRoles**
> KubernetesK8sClusterRole[] Get-AllKubernetesClusterRoles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get a list of kubernetes cluster roles

Get a list of kubernetes cluster roles within the given environment at the cluster level. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier

# Get a list of kubernetes cluster roles
try {
    $Result = Get-AllKubernetesClusterRoles -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AllKubernetesClusterRoles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 

### Return type

[**KubernetesK8sClusterRole[]**](KubernetesK8sClusterRole.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllKubernetesConfigMaps"></a>
# **Get-AllKubernetesConfigMaps**
> ModelsK8sConfigMap[] Get-AllKubernetesConfigMaps<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IsUsed] <Boolean><br>

Get a list of ConfigMaps

Get a list of ConfigMaps across all namespaces in the cluster. For non-admin users, it will only return ConfigMaps based on the namespaces that they have access to. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$IsUsed = $true # Boolean | Set to true to include information about applications that use the ConfigMaps in the response

# Get a list of ConfigMaps
try {
    $Result = Get-AllKubernetesConfigMaps -Id $Id -IsUsed $IsUsed
} catch {
    Write-Host ("Exception occurred when calling Get-AllKubernetesConfigMaps: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **IsUsed** | **Boolean**| Set to true to include information about applications that use the ConfigMaps in the response | 

### Return type

[**ModelsK8sConfigMap[]**](ModelsK8sConfigMap.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllKubernetesConfigMapsCount"></a>
# **Get-AllKubernetesConfigMapsCount**
> Int32 Get-AllKubernetesConfigMapsCount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get ConfigMaps count

Get the count of ConfigMaps across all namespaces in the cluster. For non-admin users, it will only return the count of ConfigMaps based on the namespaces that they have access to. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier

# Get ConfigMaps count
try {
    $Result = Get-AllKubernetesConfigMapsCount -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AllKubernetesConfigMapsCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 

### Return type

**Int32**

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllKubernetesEvents"></a>
# **Get-AllKubernetesEvents**
> KubernetesK8sEvent[] Get-AllKubernetesEvents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceId] <String><br>

Gets kubernetes events

Get events by query param resourceId **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$ResourceId = "MyResourceId" # String | The resource id of the involved kubernetes object (optional)

# Gets kubernetes events
try {
    $Result = Get-AllKubernetesEvents -Id $Id -ResourceId $ResourceId
} catch {
    Write-Host ("Exception occurred when calling Get-AllKubernetesEvents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **ResourceId** | **String**| The resource id of the involved kubernetes object | [optional] 

### Return type

[**KubernetesK8sEvent[]**](KubernetesK8sEvent.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllKubernetesIngressControllers"></a>
# **Get-AllKubernetesIngressControllers**
> ModelsK8sIngressController[] Get-AllKubernetesIngressControllers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AllowedOnly] <System.Nullable[Boolean]><br>

Get a list of ingress controllers

Get a list of ingress controllers for the given environment. If the allowedOnly query parameter is set, only ingress controllers that are allowed by the environment's ingress configuration will be returned. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$AllowedOnly = $true # Boolean | Only return allowed ingress controllers (optional)

# Get a list of ingress controllers
try {
    $Result = Get-AllKubernetesIngressControllers -Id $Id -AllowedOnly $AllowedOnly
} catch {
    Write-Host ("Exception occurred when calling Get-AllKubernetesIngressControllers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **AllowedOnly** | **Boolean**| Only return allowed ingress controllers | [optional] 

### Return type

[**ModelsK8sIngressController[]**](ModelsK8sIngressController.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllKubernetesIngresses"></a>
# **Get-AllKubernetesIngresses**
> ModelsK8sIngressInfo[] Get-AllKubernetesIngresses<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>

Get a list of Ingresses

Get a list of Ingresses. If namespace is provided, it will return the list of Ingresses in that namespace. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | Namespace name

# Get a list of Ingresses
try {
    $Result = Get-AllKubernetesIngresses -Id $Id -Namespace $Namespace
} catch {
    Write-Host ("Exception occurred when calling Get-AllKubernetesIngresses: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| Namespace name | 

### Return type

[**ModelsK8sIngressInfo[]**](ModelsK8sIngressInfo.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllKubernetesServicesCount"></a>
# **Get-AllKubernetesServicesCount**
> Int32 Get-AllKubernetesServicesCount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get services count

Get the count of services that the user has access to. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier

# Get services count
try {
    $Result = Get-AllKubernetesServicesCount -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AllKubernetesServicesCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 

### Return type

**Int32**

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllKubernetesVolumes"></a>
# **Get-AllKubernetesVolumes**
> System.Collections.Hashtable Get-AllKubernetesVolumes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WithApplications] <System.Nullable[Boolean]><br>

Get Kubernetes volumes within the given Portainer environment

Get a list of all kubernetes volumes within the given environment (Endpoint). The Endpoint ID must be a valid Portainer environment identifier. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$WithApplications = $true # Boolean | When set to True, include the applications that are using the volumes. It is set to false by default (optional)

# Get Kubernetes volumes within the given Portainer environment
try {
    $Result = Get-AllKubernetesVolumes -Id $Id -WithApplications $WithApplications
} catch {
    Write-Host ("Exception occurred when calling Get-AllKubernetesVolumes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **WithApplications** | **Boolean**| When set to True, include the applications that are using the volumes. It is set to false by default | [optional] 

### Return type

[**System.Collections.Hashtable**](KubernetesK8sVolumeInfo.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllKubernetesVolumesCount"></a>
# **Get-AllKubernetesVolumesCount**
> Int32 Get-AllKubernetesVolumesCount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get the total number of kubernetes volumes within the given Portainer environment.

Get the total number of kubernetes volumes within the given environment (Endpoint). The total count depends on the user's role and permissions. The Endpoint ID must be a valid Portainer environment identifier. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier

# Get the total number of kubernetes volumes within the given Portainer environment.
try {
    $Result = Get-AllKubernetesVolumesCount -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AllKubernetesVolumesCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 

### Return type

**Int32**

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ApplicationsResources"></a>
# **Get-ApplicationsResources**
> ModelsK8sApplicationResource Get-ApplicationsResources<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Node] <String><br>

Get the total CPU (cores) and memory requests (MB) and limits of all applications across all namespaces

Get the total CPU (cores) and memory (bytes) requests and limits of all applications across all namespaces. **Access policy**: authenticated

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
$Node = "MyNode" # String | Node name

# Get the total CPU (cores) and memory requests (MB) and limits of all applications across all namespaces
try {
    $Result = Get-ApplicationsResources -Id $Id -Node $Node
} catch {
    Write-Host ("Exception occurred when calling Get-ApplicationsResources: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 
 **Node** | **String**| Node name | 

### Return type

[**ModelsK8sApplicationResource**](ModelsK8sApplicationResource.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesAllCustomResources"></a>
# **Get-KubernetesAllCustomResources**
> ModelsK8sCustomResource[] Get-KubernetesAllCustomResources<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Definition] <String><br>

Get a list of kubernetes Custom Resources

Get a list of kubernetes Custom Resources that the user has access to. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Definition = "MyDefinition" # String | The CustomResourceDefinition name of the custom resource, e.g. 'clusters.postgresql.cnpg.io'

# Get a list of kubernetes Custom Resources
try {
    $Result = Get-KubernetesAllCustomResources -Id $Id -Definition $Definition
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesAllCustomResources: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Definition** | **String**| The CustomResourceDefinition name of the custom resource, e.g. &#39;clusters.postgresql.cnpg.io&#39; | 

### Return type

[**ModelsK8sCustomResource[]**](ModelsK8sCustomResource.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesClusterScopedCustomResource"></a>
# **Get-KubernetesClusterScopedCustomResource**
> UnstructuredUnstructured Get-KubernetesClusterScopedCustomResource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Definition] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Format] <String><br>

Get a cluster-scoped kubernetes Custom Resource

Get a cluster-scoped kubernetes Custom Resource that the user has access to. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Name = "MyName" # String | The name of the custom resource, e.g. 'pg-cluster'
$Definition = "MyDefinition" # String | The CustomResourceDefinition name of the custom resource, e.g. 'clusters.postgresql.cnpg.io'
$Format = "MyFormat" # String | The format of the custom resource, e.g. 'yaml' or 'json' (optional)

# Get a cluster-scoped kubernetes Custom Resource
try {
    $Result = Get-KubernetesClusterScopedCustomResource -Id $Id -Name $Name -Definition $Definition -Format $Format
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesClusterScopedCustomResource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Name** | **String**| The name of the custom resource, e.g. &#39;pg-cluster&#39; | 
 **Definition** | **String**| The CustomResourceDefinition name of the custom resource, e.g. &#39;clusters.postgresql.cnpg.io&#39; | 
 **Format** | **String**| The format of the custom resource, e.g. &#39;yaml&#39; or &#39;json&#39; | [optional] 

### Return type

[**UnstructuredUnstructured**](UnstructuredUnstructured.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesConfigMap"></a>
# **Get-KubernetesConfigMap**
> ModelsK8sConfigMap Get-KubernetesConfigMap<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Configmap] <String><br>

Get a ConfigMap

Get a ConfigMap by name for a given namespace. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | The namespace name where the configmap is located
$Configmap = "MyConfigmap" # String | The configmap name to get details for

# Get a ConfigMap
try {
    $Result = Get-KubernetesConfigMap -Id $Id -Namespace $Namespace -Configmap $Configmap
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesConfigMap: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| The namespace name where the configmap is located | 
 **Configmap** | **String**| The configmap name to get details for | 

### Return type

[**ModelsK8sConfigMap**](ModelsK8sConfigMap.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesCronJobs"></a>
# **Get-KubernetesCronJobs**
> KubernetesK8sCronJob[] Get-KubernetesCronJobs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get a list of kubernetes Cron Jobs

Get a list of kubernetes Cron Jobs that the user has access to. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier

# Get a list of kubernetes Cron Jobs
try {
    $Result = Get-KubernetesCronJobs -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesCronJobs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 

### Return type

[**KubernetesK8sCronJob[]**](KubernetesK8sCronJob.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesCustomResourceDefinition"></a>
# **Get-KubernetesCustomResourceDefinition**
> ModelsK8sCustomResourceDefinition Get-KubernetesCustomResourceDefinition<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Get a kubernetes Custom Resource Definition

Get a kubernetes Custom Resource Definition. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Name = "MyName" # String | The name of the Custom Resource Definition to get.

# Get a kubernetes Custom Resource Definition
try {
    $Result = Get-KubernetesCustomResourceDefinition -Id $Id -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesCustomResourceDefinition: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Name** | **String**| The name of the Custom Resource Definition to get. | 

### Return type

[**ModelsK8sCustomResourceDefinition**](ModelsK8sCustomResourceDefinition.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesCustomResourceDefinitions"></a>
# **Get-KubernetesCustomResourceDefinitions**
> ModelsK8sCustomResourceDefinition[] Get-KubernetesCustomResourceDefinitions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get a list of kubernetes Custom Resource Definitions

Get a list of kubernetes Custom Resource Definitions that the user has access to. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier

# Get a list of kubernetes Custom Resource Definitions
try {
    $Result = Get-KubernetesCustomResourceDefinitions -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesCustomResourceDefinitions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 

### Return type

[**ModelsK8sCustomResourceDefinition[]**](ModelsK8sCustomResourceDefinition.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesDashboard"></a>
# **Get-KubernetesDashboard**
> ModelsK8sDashboard[] Get-KubernetesDashboard<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get the dashboard summary data

Get the dashboard summary data which is simply a count of a range of different commonly used kubernetes resources. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment (Endpoint) identifier

# Get the dashboard summary data
try {
    $Result = Get-KubernetesDashboard -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesDashboard: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment (Endpoint) identifier | 

### Return type

[**ModelsK8sDashboard[]**](ModelsK8sDashboard.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesEventsForNamespace"></a>
# **Get-KubernetesEventsForNamespace**
> KubernetesK8sEvent[] Get-KubernetesEventsForNamespace<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceId] <String><br>

Gets kubernetes events for namespace

Get events by optional query param resourceId for a given namespace. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | The namespace name the events are associated to
$ResourceId = "MyResourceId" # String | The resource id of the involved kubernetes object (optional)

# Gets kubernetes events for namespace
try {
    $Result = Get-KubernetesEventsForNamespace -Id $Id -Namespace $Namespace -ResourceId $ResourceId
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesEventsForNamespace: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| The namespace name the events are associated to | 
 **ResourceId** | **String**| The resource id of the involved kubernetes object | [optional] 

### Return type

[**KubernetesK8sEvent[]**](KubernetesK8sEvent.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesIngress"></a>
# **Get-KubernetesIngress**
> ModelsK8sIngressInfo Get-KubernetesIngress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Ingress] <String><br>

Get an Ingress by name

Get an Ingress by name for the provided environment. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | Namespace name
$Ingress = "MyIngress" # String | Ingress name

# Get an Ingress by name
try {
    $Result = Get-KubernetesIngress -Id $Id -Namespace $Namespace -Ingress $Ingress
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesIngress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| Namespace name | 
 **Ingress** | **String**| Ingress name | 

### Return type

[**ModelsK8sIngressInfo**](ModelsK8sIngressInfo.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesIngressControllersByNamespace"></a>
# **Get-KubernetesIngressControllersByNamespace**
> ModelsK8sIngressController[] Get-KubernetesIngressControllersByNamespace<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>

Get a list ingress controllers by namespace

Get a list of ingress controllers for the given environment in the provided namespace. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | Namespace

# Get a list ingress controllers by namespace
try {
    $Result = Get-KubernetesIngressControllersByNamespace -Id $Id -Namespace $Namespace
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesIngressControllersByNamespace: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| Namespace | 

### Return type

[**ModelsK8sIngressController[]**](ModelsK8sIngressController.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesJobs"></a>
# **Get-KubernetesJobs**
> KubernetesK8sJob[] Get-KubernetesJobs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeCronJobChildren] <System.Nullable[Boolean]><br>

Get a list of kubernetes Jobs

Get a list of kubernetes Jobs that the user has access to. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$IncludeCronJobChildren = $true # Boolean | Whether to include Jobs that have a cronjob owner (optional)

# Get a list of kubernetes Jobs
try {
    $Result = Get-KubernetesJobs -Id $Id -IncludeCronJobChildren $IncludeCronJobChildren
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesJobs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **IncludeCronJobChildren** | **Boolean**| Whether to include Jobs that have a cronjob owner | [optional] 

### Return type

[**KubernetesK8sJob[]**](KubernetesK8sJob.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesMaxResourceLimits"></a>
# **Get-KubernetesMaxResourceLimits**
> System.Collections.Hashtable Get-KubernetesMaxResourceLimits<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get max CPU and memory limits of all nodes within k8s cluster

Get max CPU and memory limits (unused resources) of all nodes within k8s cluster. **Access policy**: Authenticated user.

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

# Get max CPU and memory limits of all nodes within k8s cluster
try {
    $Result = Get-KubernetesMaxResourceLimits -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesMaxResourceLimits: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 

### Return type

[**System.Collections.Hashtable**](PortainerK8sNodeLimits.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesMetricsForAllNodes"></a>
# **Get-KubernetesMetricsForAllNodes**
> V1beta1NodeMetricsList Get-KubernetesMetricsForAllNodes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get a list of nodes with their live metrics

Get a list of metrics associated with all nodes of a cluster. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier

# Get a list of nodes with their live metrics
try {
    $Result = Get-KubernetesMetricsForAllNodes -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesMetricsForAllNodes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 

### Return type

[**V1beta1NodeMetricsList**](V1beta1NodeMetricsList.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesMetricsForAllPods"></a>
# **Get-KubernetesMetricsForAllPods**
> V1beta1PodMetricsList Get-KubernetesMetricsForAllPods<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>

Get a list of pods with their live metrics

Get a list of pods with their live metrics for the specified namespace. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | Namespace

# Get a list of pods with their live metrics
try {
    $Result = Get-KubernetesMetricsForAllPods -Id $Id -Namespace $Namespace
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesMetricsForAllPods: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| Namespace | 

### Return type

[**V1beta1PodMetricsList**](V1beta1PodMetricsList.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesMetricsForNode"></a>
# **Get-KubernetesMetricsForNode**
> V1beta1NodeMetrics Get-KubernetesMetricsForNode<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Get live metrics for a node

Get live metrics for the specified node. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Name = "MyName" # String | Node identifier

# Get live metrics for a node
try {
    $Result = Get-KubernetesMetricsForNode -Id $Id -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesMetricsForNode: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Name** | **String**| Node identifier | 

### Return type

[**V1beta1NodeMetrics**](V1beta1NodeMetrics.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesMetricsForPod"></a>
# **Get-KubernetesMetricsForPod**
> V1beta1PodMetrics Get-KubernetesMetricsForPod<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Get live metrics for a pod

Get live metrics for the specified pod. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | Namespace
$Name = "MyName" # String | Pod identifier

# Get live metrics for a pod
try {
    $Result = Get-KubernetesMetricsForPod -Id $Id -Namespace $Namespace -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesMetricsForPod: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| Namespace | 
 **Name** | **String**| Pod identifier | 

### Return type

[**V1beta1PodMetrics**](V1beta1PodMetrics.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesNamespace"></a>
# **Get-KubernetesNamespace**
> PortainerK8sNamespaceInfo Get-KubernetesNamespace<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WithResourceQuota] <Boolean><br>

Get namespace details

Get namespace details for the provided namespace within the given environment. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | The namespace name to get details for
$WithResourceQuota = $true # Boolean | When set to true, include the resource quota information as part of the Namespace information. Default is false

# Get namespace details
try {
    $Result = Get-KubernetesNamespace -Id $Id -Namespace $Namespace -WithResourceQuota $WithResourceQuota
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesNamespace: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| The namespace name to get details for | 
 **WithResourceQuota** | **Boolean**| When set to true, include the resource quota information as part of the Namespace information. Default is false | 

### Return type

[**PortainerK8sNamespaceInfo**](PortainerK8sNamespaceInfo.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesNamespacedCustomResource"></a>
# **Get-KubernetesNamespacedCustomResource**
> UnstructuredUnstructured[] Get-KubernetesNamespacedCustomResource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Definition] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Format] <String><br>

Get a list of kubernetes Custom Resources

Get a list of kubernetes Custom Resources that the user has access to. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | The namespace name to get details for
$Name = "MyName" # String | The name of the custom resource, e.g. 'pg-cluster'
$Definition = "MyDefinition" # String | The CustomResourceDefinition name of the custom resource, e.g. 'clusters.postgresql.cnpg.io'
$Format = "MyFormat" # String | The format of the custom resource, e.g. 'yaml' or 'json' (optional)

# Get a list of kubernetes Custom Resources
try {
    $Result = Get-KubernetesNamespacedCustomResource -Id $Id -Namespace $Namespace -Name $Name -Definition $Definition -Format $Format
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesNamespacedCustomResource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| The namespace name to get details for | 
 **Name** | **String**| The name of the custom resource, e.g. &#39;pg-cluster&#39; | 
 **Definition** | **String**| The CustomResourceDefinition name of the custom resource, e.g. &#39;clusters.postgresql.cnpg.io&#39; | 
 **Format** | **String**| The format of the custom resource, e.g. &#39;yaml&#39; or &#39;json&#39; | [optional] 

### Return type

[**UnstructuredUnstructured[]**](UnstructuredUnstructured.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesNamespaces"></a>
# **Get-KubernetesNamespaces**
> PortainerK8sNamespaceInfo[] Get-KubernetesNamespaces<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WithResourceQuota] <Boolean><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WithUnhealthyEvents] <Boolean><br>

Get a list of namespaces

Get a list of all namespaces within the given environment based on the user role and permissions. If the user is an admin, they can access all namespaces. If the user is not an admin, they can only access namespaces that they have access to. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$WithResourceQuota = $true # Boolean | When set to true, include the resource quota information as part of the Namespace information. Default is false
$WithUnhealthyEvents = $true # Boolean | When set to true, include the unhealthy events information as part of the Namespace information. Default is false

# Get a list of namespaces
try {
    $Result = Get-KubernetesNamespaces -Id $Id -WithResourceQuota $WithResourceQuota -WithUnhealthyEvents $WithUnhealthyEvents
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesNamespaces: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **WithResourceQuota** | **Boolean**| When set to true, include the resource quota information as part of the Namespace information. Default is false | 
 **WithUnhealthyEvents** | **Boolean**| When set to true, include the unhealthy events information as part of the Namespace information. Default is false | 

### Return type

[**PortainerK8sNamespaceInfo[]**](PortainerK8sNamespaceInfo.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesNamespacesCount"></a>
# **Get-KubernetesNamespacesCount**
> Int32 Get-KubernetesNamespacesCount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get the total number of kubernetes namespaces within the given Portainer environment.

Get the total number of kubernetes namespaces within the given environment, including the system namespaces. The total count depends on the user's role and permissions. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier

# Get the total number of kubernetes namespaces within the given Portainer environment.
try {
    $Result = Get-KubernetesNamespacesCount -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesNamespacesCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 

### Return type

**Int32**

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesNodesLimits"></a>
# **Get-KubernetesNodesLimits**
> System.Collections.Hashtable Get-KubernetesNodesLimits<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get CPU and memory limits of all nodes within k8s cluster.

Get CPU and memory limits of all nodes within k8s cluster. **Access policy**: Authenticated user.

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

# Get CPU and memory limits of all nodes within k8s cluster.
try {
    $Result = Get-KubernetesNodesLimits -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesNodesLimits: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 

### Return type

[**System.Collections.Hashtable**](PortainerK8sNodeLimits.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesPodSecurityRule"></a>
# **Get-KubernetesPodSecurityRule**
> PodsecurityPodSecurityRule Get-KubernetesPodSecurityRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <Int32><br>

Get Pod Security Rule within k8s cluster, if not found, the frontend will create a default

Get Pod Security Rule within k8s cluster **Access policy**: authenticated

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

$EnvironmentId = 56 # Int32 | Environment identifier

# Get Pod Security Rule within k8s cluster, if not found, the frontend will create a default
try {
    $Result = Get-KubernetesPodSecurityRule -EnvironmentId $EnvironmentId
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesPodSecurityRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **Int32**| Environment identifier | 

### Return type

[**PodsecurityPodSecurityRule**](PodsecurityPodSecurityRule.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesRBACStatus"></a>
# **Get-KubernetesRBACStatus**
> Boolean Get-KubernetesRBACStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Check if RBAC is enabled

Check if RBAC is enabled in the specified Kubernetes cluster. **Access policy**: Authenticated user.

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

# Check if RBAC is enabled
try {
    $Result = Get-KubernetesRBACStatus -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesRBACStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 

### Return type

**Boolean**

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesRoleBindings"></a>
# **Get-KubernetesRoleBindings**
> ModelsK8sRoleBinding[] Get-KubernetesRoleBindings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get a list of kubernetes role bindings

Get a list of kubernetes role bindings that the user has access to. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier

# Get a list of kubernetes role bindings
try {
    $Result = Get-KubernetesRoleBindings -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesRoleBindings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 

### Return type

[**ModelsK8sRoleBinding[]**](ModelsK8sRoleBinding.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesRoles"></a>
# **Get-KubernetesRoles**
> ModelsK8sRole[] Get-KubernetesRoles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get a list of kubernetes roles

Get a list of kubernetes roles that the user has access to. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier

# Get a list of kubernetes roles
try {
    $Result = Get-KubernetesRoles -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesRoles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 

### Return type

[**ModelsK8sRole[]**](ModelsK8sRole.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesSecret"></a>
# **Get-KubernetesSecret**
> ModelsK8sSecret Get-KubernetesSecret<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Secret] <String><br>

Get a Secret

Get a Secret by name for a given namespace. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | The namespace name where the secret is located
$Secret = "MySecret" # String | The secret name to get details for

# Get a Secret
try {
    $Result = Get-KubernetesSecret -Id $Id -Namespace $Namespace -Secret $Secret
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesSecret: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| The namespace name where the secret is located | 
 **Secret** | **String**| The secret name to get details for | 

### Return type

[**ModelsK8sSecret**](ModelsK8sSecret.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesSecrets"></a>
# **Get-KubernetesSecrets**
> ModelsK8sSecret[] Get-KubernetesSecrets<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IsUsed] <Boolean><br>

Get a list of Secrets

Get a list of Secrets for a given namespace. If isUsed is set to true, information about the applications that use the secrets is also returned. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$IsUsed = $true # Boolean | When set to true, associate the Secrets with the applications that use them

# Get a list of Secrets
try {
    $Result = Get-KubernetesSecrets -Id $Id -IsUsed $IsUsed
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesSecrets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **IsUsed** | **Boolean**| When set to true, associate the Secrets with the applications that use them | 

### Return type

[**ModelsK8sSecret[]**](ModelsK8sSecret.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesSecretsCount"></a>
# **Get-KubernetesSecretsCount**
> Int32 Get-KubernetesSecretsCount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get Secrets count

Get the count of Secrets across all namespaces that the user has access to. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier

# Get Secrets count
try {
    $Result = Get-KubernetesSecretsCount -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesSecretsCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 

### Return type

**Int32**

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesServiceAccounts"></a>
# **Get-KubernetesServiceAccounts**
> KubernetesK8sServiceAccount[] Get-KubernetesServiceAccounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get a list of kubernetes service accounts

Get a list of kubernetes service accounts that the user has access to. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier

# Get a list of kubernetes service accounts
try {
    $Result = Get-KubernetesServiceAccounts -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesServiceAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 

### Return type

[**KubernetesK8sServiceAccount[]**](KubernetesK8sServiceAccount.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesServices"></a>
# **Get-KubernetesServices**
> ModelsK8sServiceInfo[] Get-KubernetesServices<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WithApplications] <System.Nullable[Boolean]><br>

Get a list of services

Get a list of services that the user has access to. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$WithApplications = $true # Boolean | Lookup applications associated with each service (optional)

# Get a list of services
try {
    $Result = Get-KubernetesServices -Id $Id -WithApplications $WithApplications
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesServices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **WithApplications** | **Boolean**| Lookup applications associated with each service | [optional] 

### Return type

[**ModelsK8sServiceInfo[]**](ModelsK8sServiceInfo.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesServicesByNamespace"></a>
# **Get-KubernetesServicesByNamespace**
> ModelsK8sServiceInfo[] Get-KubernetesServicesByNamespace<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>

Get a list of services for a given namespace

Get a list of services for a given namespace. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | Namespace name

# Get a list of services for a given namespace
try {
    $Result = Get-KubernetesServicesByNamespace -Id $Id -Namespace $Namespace
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesServicesByNamespace: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| Namespace name | 

### Return type

[**ModelsK8sServiceInfo[]**](ModelsK8sServiceInfo.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesVolume"></a>
# **Get-KubernetesVolume**
> KubernetesK8sVolumeInfo Get-KubernetesVolume<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Volume] <String><br>

Get a Kubernetes volume within the given Portainer environment

Get a Kubernetes volume within the given environment (Endpoint). The Endpoint ID must be a valid Portainer environment identifier. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | Namespace identifier
$Volume = "MyVolume" # String | Volume name

# Get a Kubernetes volume within the given Portainer environment
try {
    $Result = Get-KubernetesVolume -Id $Id -Namespace $Namespace -Volume $Volume
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesVolume: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| Namespace identifier | 
 **Volume** | **String**| Volume name | 

### Return type

[**KubernetesK8sVolumeInfo**](KubernetesK8sVolumeInfo.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-KubernetesVolumesInNamespace"></a>
# **Get-KubernetesVolumesInNamespace**
> System.Collections.Hashtable Get-KubernetesVolumesInNamespace<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WithApplications] <System.Nullable[Boolean]><br>

Get Kubernetes volumes within a namespace in the given Portainer environment

Get a list of kubernetes volumes within the specified namespace in the given environment (Endpoint). The Endpoint ID must be a valid Portainer environment identifier. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | Namespace identifier
$WithApplications = $true # Boolean | When set to True, include the applications that are using the volumes. It is set to false by default (optional)

# Get Kubernetes volumes within a namespace in the given Portainer environment
try {
    $Result = Get-KubernetesVolumesInNamespace -Id $Id -Namespace $Namespace -WithApplications $WithApplications
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesVolumesInNamespace: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| Namespace identifier | 
 **WithApplications** | **Boolean**| When set to True, include the applications that are using the volumes. It is set to false by default | [optional] 

### Return type

[**System.Collections.Hashtable**](KubernetesK8sVolumeInfo.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-KubernetesNamespacesToggleSystem"></a>
# **Invoke-KubernetesNamespacesToggleSystem**
> void Invoke-KubernetesNamespacesToggleSystem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Toggle the system state for a namespace

Toggle the system state for a namespace **Access policy**: Administrator or environment administrator.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | Namespace name
$GithubComPortainerPortainerEeApiHttpHandlerKubernetesNamespacesToggleSystemPayload = Initialize-GithubComPortainerPortainerEeApiHttpHandlerKubernetesNamespacesToggleSystemPayload -System $true # GithubComPortainerPortainerEeApiHttpHandlerKubernetesNamespacesToggleSystemPayload | Update details

# Toggle the system state for a namespace
try {
    $Result = Invoke-KubernetesNamespacesToggleSystem -Id $Id -Namespace $Namespace -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-KubernetesNamespacesToggleSystem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| Namespace name | 
 **Body** | [**GithubComPortainerPortainerEeApiHttpHandlerKubernetesNamespacesToggleSystemPayload**](GithubComPortainerPortainerEeApiHttpHandlerKubernetesNamespacesToggleSystemPayload.md)| Update details | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Restart-KubernetesApplication"></a>
# **Restart-KubernetesApplication**
> void Restart-KubernetesApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Kind] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Restart a Kubernetes application

Restart a Kubernetes deployment, statefulset and daemonset application, using a kubectl rollout-restart **Access policy**: authenticated

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
$Namespace = "MyNamespace" # String | The namespace
$Kind = "MyKind" # String | deployment, statefulset or daemonset
$Name = "MyName" # String | name of the application

# Restart a Kubernetes application
try {
    $Result = Restart-KubernetesApplication -Id $Id -Namespace $Namespace -Kind $Kind -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Restart-KubernetesApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment(Endpoint) identifier | 
 **Namespace** | **String**| The namespace | 
 **Kind** | **String**| deployment, statefulset or daemonset | 
 **Name** | **String**| name of the application | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-K8sPodSecurityRule"></a>
# **Update-K8sPodSecurityRule**
> void Update-K8sPodSecurityRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <Int32><br>

Update Pod Security Rule within k8s cluster

Update Pod Security Rule within k8s cluster **Access policy**: authenticated

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

# Update Pod Security Rule within k8s cluster
try {
    $Result = Update-K8sPodSecurityRule -EnvironmentId $EnvironmentId
} catch {
    Write-Host ("Exception occurred when calling Update-K8sPodSecurityRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-KubernetesIngress"></a>
# **Update-KubernetesIngress**
> void Update-KubernetesIngress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update an Ingress

Update an Ingress for the provided environment. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | Namespace name
$ModelsK8sIngressPath = Initialize-ModelsK8sIngressPath -HasService $false -VarHost "MyVarHost" -IngressName "MyIngressName" -Path "MyPath" -PathType "MyPathType" -Port 0 -ServiceName "MyServiceName"
$ModelsK8sIngressTLS = Initialize-ModelsK8sIngressTLS -Hosts "MyHosts" -SecretName "MySecretName"
$ModelsK8sIngressInfo = Initialize-ModelsK8sIngressInfo -Annotations @{ key_example = "MyInner" } -ClassName "MyClassName" -CreationDate "MyCreationDate" -Hosts "MyHosts" -Labels @{ key_example = "MyInner" } -Name "MyName" -Namespace "MyNamespace" -Paths $ModelsK8sIngressPath -TLS $ModelsK8sIngressTLS -Type "MyType" -UID "MyUID" # ModelsK8sIngressInfo | Ingress details

# Update an Ingress
try {
    $Result = Update-KubernetesIngress -Id $Id -Namespace $Namespace -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Update-KubernetesIngress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| Namespace name | 
 **Body** | [**ModelsK8sIngressInfo**](ModelsK8sIngressInfo.md)| Ingress details | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-KubernetesIngressControllers"></a>
# **Update-KubernetesIngressControllers**
> void Update-KubernetesIngressControllers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject[]><br>

Update (block/unblock) ingress controllers

Update (block/unblock) ingress controllers for the provided environment. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$ModelsK8sIngressController = Initialize-ModelsK8sIngressController -Availability $false -ClassName "MyClassName" -Name "MyName" -New $false -Type "MyType" -Used $false # ModelsK8sIngressController[] | Ingress controllers

# Update (block/unblock) ingress controllers
try {
    $Result = Update-KubernetesIngressControllers -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Update-KubernetesIngressControllers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Body** | [**ModelsK8sIngressController[]**](ModelsK8sIngressController.md)| Ingress controllers | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-KubernetesIngressControllersByNamespace"></a>
# **Update-KubernetesIngressControllersByNamespace**
> void Update-KubernetesIngressControllersByNamespace<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject[]><br>

Update (block/unblock) ingress controllers by namespace

Update (block/unblock) ingress controllers by namespace for the provided environment. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | Namespace name
$ModelsK8sIngressController = Initialize-ModelsK8sIngressController -Availability $false -ClassName "MyClassName" -Name "MyName" -New $false -Type "MyType" -Used $false # ModelsK8sIngressController[] | Ingress controllers

# Update (block/unblock) ingress controllers by namespace
try {
    $Result = Update-KubernetesIngressControllersByNamespace -Id $Id -Namespace $Namespace -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Update-KubernetesIngressControllersByNamespace: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| Namespace name | 
 **Body** | [**ModelsK8sIngressController[]**](ModelsK8sIngressController.md)| Ingress controllers | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-KubernetesNamespace"></a>
# **Update-KubernetesNamespace**
> PortainerK8sNamespaceInfo Update-KubernetesNamespace<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update a namespace

Update a namespace within the given environment. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | Namespace
$ModelsK8sLoadBalancerQuota = Initialize-ModelsK8sLoadBalancerQuota -Enabled $false -Limit 0
$ModelsK8sResourceQuota = Initialize-ModelsK8sResourceQuota -CpuLimit "MyCpuLimit" -CpuRequest "MyCpuRequest" -Enabled $false -MemoryLimit "MyMemoryLimit" -MemoryRequest "MyMemoryRequest"
$ModelsK8sStorageQuota = Initialize-ModelsK8sStorageQuota -Enabled $false -Limit "MyLimit"
$ModelsK8sNamespaceDetails = Initialize-ModelsK8sNamespaceDetails -Annotations @{ key_example = "MyInner" } -LoadBalancerQuota $ModelsK8sLoadBalancerQuota -Name "MyName" -Owner "MyOwner" -ResourceQuota $ModelsK8sResourceQuota -StorageQuotas @{ key_example = $ModelsK8sStorageQuota } # ModelsK8sNamespaceDetails | Namespace details

# Update a namespace
try {
    $Result = Update-KubernetesNamespace -Id $Id -Namespace $Namespace -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Update-KubernetesNamespace: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| Namespace | 
 **Body** | [**ModelsK8sNamespaceDetails**](ModelsK8sNamespaceDetails.md)| Namespace details | 

### Return type

[**PortainerK8sNamespaceInfo**](PortainerK8sNamespaceInfo.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-KubernetesNamespaceDeprecated"></a>
# **Update-KubernetesNamespaceDeprecated**
> PortainerK8sNamespaceInfo Update-KubernetesNamespaceDeprecated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update a namespace

Update a namespace within the given environment. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | Namespace
$ModelsK8sLoadBalancerQuota = Initialize-ModelsK8sLoadBalancerQuota -Enabled $false -Limit 0
$ModelsK8sResourceQuota = Initialize-ModelsK8sResourceQuota -CpuLimit "MyCpuLimit" -CpuRequest "MyCpuRequest" -Enabled $false -MemoryLimit "MyMemoryLimit" -MemoryRequest "MyMemoryRequest"
$ModelsK8sStorageQuota = Initialize-ModelsK8sStorageQuota -Enabled $false -Limit "MyLimit"
$ModelsK8sNamespaceDetails = Initialize-ModelsK8sNamespaceDetails -Annotations @{ key_example = "MyInner" } -LoadBalancerQuota $ModelsK8sLoadBalancerQuota -Name "MyName" -Owner "MyOwner" -ResourceQuota $ModelsK8sResourceQuota -StorageQuotas @{ key_example = $ModelsK8sStorageQuota } # ModelsK8sNamespaceDetails | Namespace details

# Update a namespace
try {
    $Result = Update-KubernetesNamespaceDeprecated -Id $Id -Namespace $Namespace -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Update-KubernetesNamespaceDeprecated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| Namespace | 
 **Body** | [**ModelsK8sNamespaceDetails**](ModelsK8sNamespaceDetails.md)| Namespace details | 

### Return type

[**PortainerK8sNamespaceInfo**](PortainerK8sNamespaceInfo.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-KubernetesService"></a>
# **Update-KubernetesService**
> void Update-KubernetesService<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Namespace] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update a service

Update a service within a given namespace. **Access policy**: Authenticated user.

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

$Id = 56 # Int32 | Environment identifier
$Namespace = "MyNamespace" # String | Namespace name
$ModelsConfiguration = Initialize-ModelsConfiguration -ConfigurationOwner "MyConfigurationOwner" -VarData @{ key_example =  } -Kind "MyKind"
$ModelsMetadata = Initialize-ModelsMetadata -Annotations @{ key_example = "MyInner" } -Labels @{ key_example = "MyInner" }
$ModelsPod = Initialize-ModelsPod -ContainerName "MyContainerName" -CreationDate "MyCreationDate" -Image "MyImage" -ImagePullPolicy "MyImagePullPolicy" -Name "MyName" -NodeName "MyNodeName" -PodIP "MyPodIP" -Status "MyStatus" -Uid "MyUid"

$ModelsTLSInfo = Initialize-ModelsTLSInfo -Hosts "MyHosts"
$ModelsIngressRule = Initialize-ModelsIngressRule -VarHost "MyVarHost" -IP "MyIP" -Path "MyPath" -TLS $ModelsTLSInfo

$ModelsPublishedPort = Initialize-ModelsPublishedPort -IngressRules $ModelsIngressRule -Port 0

$ModelsK8sApplicationResource = Initialize-ModelsK8sApplicationResource -CpuLimit 0 -CpuRequest 0 -MemoryLimit 0 -MemoryRequest 0
$ModelsK8sApplication = Initialize-ModelsK8sApplication -Annotations @{ key_example = "MyInner" } -ApplicationOwner "MyApplicationOwner" -ApplicationType "MyApplicationType" -Configurations $ModelsConfiguration -Containers  -CreationDate "MyCreationDate" -DeploymentType "MyDeploymentType" -Id "MyId" -Image "MyImage" -Kind "MyKind" -Labels @{ key_example = "MyInner" } -LoadBalancerIPAddress "MyLoadBalancerIPAddress" -MatchLabels @{ key_example = "MyInner" } -Metadata $ModelsMetadata -Name "MyName" -Namespace "MyNamespace" -Pods $ModelsPod -PublishedPorts $ModelsPublishedPort -Resource $ModelsK8sApplicationResource -ResourcePool "MyResourcePool" -RunningPodsCount 0 -ServiceId "MyServiceId" -ServiceName "MyServiceName" -ServiceType "MyServiceType" -StackId "MyStackId" -StackName "MyStackName" -Status "MyStatus" -TotalPodsCount 0 -Uid "MyUid"

$ModelsK8sServiceIngress = Initialize-ModelsK8sServiceIngress -VarHost "MyVarHost" -IP "MyIP"
$ModelsK8sServicePort = Initialize-ModelsK8sServicePort -Name "MyName" -NodePort 0 -Port 0 -Protocol "MyProtocol" -TargetPort "MyTargetPort"
$ModelsK8sServiceInfo = Initialize-ModelsK8sServiceInfo -AllocateLoadBalancerNodePorts $false -Annotations @{ key_example = "MyInner" } -Applications $ModelsK8sApplication -ClusterIPs "MyClusterIPs" -CreationDate "MyCreationDate" -ExternalIPs "MyExternalIPs" -ExternalName "MyExternalName" -IngressStatus $ModelsK8sServiceIngress -Labels @{ key_example = "MyInner" } -Name "MyName" -Namespace "MyNamespace" -Ports $ModelsK8sServicePort -Selector @{ key_example = "MyInner" } -Type "MyType" -UID "MyUID" # ModelsK8sServiceInfo | Service definition

# Update a service
try {
    $Result = Update-KubernetesService -Id $Id -Namespace $Namespace -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Update-KubernetesService: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Environment identifier | 
 **Namespace** | **String**| Namespace name | 
 **Body** | [**ModelsK8sServiceInfo**](ModelsK8sServiceInfo.md)| Service definition | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

