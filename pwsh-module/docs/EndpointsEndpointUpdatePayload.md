# EndpointsEndpointUpdatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AzureApplicationID** | **String** | Azure application ID | [optional] 
**AzureAuthenticationKey** | **String** | Azure authentication key | [optional] 
**AzureTenantID** | **String** | Azure tenant ID | [optional] 
**ChangeWindow** | [**PortainereeEndpointChangeWindow**](PortainereeEndpointChangeWindow.md) | Whether GitOps update time restrictions are enabled | [optional] 
**DeploymentOptions** | [**PortainereeDeploymentOptions**](PortainereeDeploymentOptions.md) | Hide manual deployment forms for an environment | [optional] 
**Edge** | [**EndpointsEndpointUpdatePayloadEdge**](EndpointsEndpointUpdatePayloadEdge.md) |  | [optional] 
**EdgeCheckinInterval** | **Int32** | The check in interval for edge agent (in seconds) | [optional] 
**Gpus** | [**PortainerPair[]**](PortainerPair.md) | GPUs information | [optional] 
**GroupID** | **Int32** | Group identifier | [optional] 
**IsSetStatusMessage** | **Boolean** |  | [optional] 
**Kubernetes** | [**PortainereeKubernetesData**](PortainereeKubernetesData.md) | Associated Kubernetes data | [optional] 
**Name** | **String** | Name that will be used to identify this environment(endpoint) | [optional] 
**PublicURL** | **String** | URL or IP address where exposed containers will be reachable.\ Defaults to URL if not specified | [optional] 
**Status** | **Int32** | The status of the environment(endpoint) (1 - up, 2 - down) | [optional] 
**StatusMessage** | [**EndpointsEndpointUpdatePayloadStatusMessage**](EndpointsEndpointUpdatePayloadStatusMessage.md) |  | [optional] 
**TLS** | **Boolean** | Require TLS to connect against this environment(endpoint) | [optional] 
**TLSSkipClientVerify** | **Boolean** | Skip client verification when using TLS | [optional] 
**TLSSkipVerify** | **Boolean** | Skip server verification when using TLS | [optional] 
**TagIDs** | **Int32[]** | List of tag identifiers to which this environment(endpoint) is associated | [optional] 
**TeamAccessPolicies** | [**System.Collections.Hashtable**](PortainerAccessPolicy.md) |  | [optional] 
**URL** | **String** | URL or IP address of a Docker host | [optional] 
**UserAccessPolicies** | [**System.Collections.Hashtable**](PortainerAccessPolicy.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointsEndpointUpdatePayload = Initialize-PSOpenAPIToolsEndpointsEndpointUpdatePayload  -AzureApplicationID eag7cdo9-o09l-9i83-9dO9-f0b23oe78db4 `
 -AzureAuthenticationKey cOrXoK/1D35w8YQ8nH1/8ZGwzz45JIYD5jxHKXEQknk&#x3D; `
 -AzureTenantID 34ddc78d-4fel-2358-8cc1-df84c8o839f5 `
 -ChangeWindow null `
 -DeploymentOptions null `
 -Edge null `
 -EdgeCheckinInterval 5 `
 -Gpus null `
 -GroupID 1 `
 -IsSetStatusMessage null `
 -Kubernetes null `
 -Name my-environment `
 -PublicURL docker.mydomain.tld:2375 `
 -Status 1 `
 -StatusMessage null `
 -TLS true `
 -TLSSkipClientVerify false `
 -TLSSkipVerify false `
 -TagIDs [1, 2] `
 -TeamAccessPolicies null `
 -URL docker.mydomain.tld:2375 `
 -UserAccessPolicies null
```

- Convert the resource to JSON
```powershell
$EndpointsEndpointUpdatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

