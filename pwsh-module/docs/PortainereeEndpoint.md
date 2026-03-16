# PortainereeEndpoint
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AMTDeviceGUID** | **String** | The identifier of the AMT Device associated with this environment(endpoint) | [optional] 
**Agent** | [**PortainereeEnvironmentAgentData**](PortainereeEnvironmentAgentData.md) |  | [optional] 
**AuthorizedTeams** | **Int32[]** |  | [optional] 
**AuthorizedUsers** | **Int32[]** | Deprecated in DBVersion &#x3D;&#x3D; 18 | [optional] 
**AzureCredentials** | [**PortainerAzureCredentials**](PortainerAzureCredentials.md) |  | [optional] 
**ChangeWindow** | [**PortainereeEndpointChangeWindow**](PortainereeEndpointChangeWindow.md) | GitOps update change window restriction for stacks and apps | [optional] 
**CloudProvider** | [**PortainereeCloudProvider**](PortainereeCloudProvider.md) | A Kubernetes as a service cloud provider. Only included if this endpoint was created using KaaS provisioning. | [optional] 
**ComposeSyntaxMaxVersion** | **String** | Maximum version of docker-compose | [optional] 
**ContainerEngine** | **String** | ContainerEngine represents the container engine type. This can be &#39;docker&#39; or &#39;podman&#39; when interacting directly with these environmentes, otherwise &#39;&#39; for kubernetes environments. | [optional] 
**DeploymentOptions** | [**PortainereeDeploymentOptions**](PortainereeDeploymentOptions.md) | Hide manual deployment forms for an environment | [optional] 
**Edge** | [**PortainerEnvironmentEdgeSettings**](PortainerEnvironmentEdgeSettings.md) |  | [optional] 
**EdgeCheckinInterval** | **Int32** | The check in interval for edge agent (in seconds) | [optional] 
**EdgeID** | **String** | The identifier of the edge agent associated with this environment(endpoint) | [optional] 
**EdgeKey** | **String** | The key which is used to map the agent to Portainer | [optional] 
**EnableGPUManagement** | **Boolean** |  | [optional] 
**EnableImageNotification** | **Boolean** |  | [optional] 
**Gpus** | [**PortainerPair[]**](PortainerPair.md) |  | [optional] 
**GroupId** | **Int32** | Environment(Endpoint) group identifier | [optional] 
**Heartbeat** | **Boolean** | Heartbeat indicates the heartbeat status of an edge environment | [optional] 
**Id** | **Int32** | Environment(Endpoint) Identifier | [optional] 
**IsEdgeDevice** | **Boolean** | Deprecated v2.18 | [optional] 
**Kubernetes** | [**PortainereeKubernetesData**](PortainereeKubernetesData.md) | Associated Kubernetes data | [optional] 
**LastCheckInDate** | **Int32** | LastCheckInDate mark last check-in date on checkin | [optional] 
**LocalTimeZone** | **String** | LocalTimeZone is the local time zone of the endpoint | [optional] 
**MTLSStatus** | [**PortainereeMTLSStatus**](PortainereeMTLSStatus.md) |  | [optional] 
**Name** | **String** | Environment(Endpoint) name | [optional] 
**Policies** | [**PortainereeEndpointPolicies**](PortainereeEndpointPolicies.md) |  | [optional] 
**PostInitMigrations** | [**PortainereeEndpointPostInitMigrations**](PortainereeEndpointPostInitMigrations.md) | Whether we need to run any &quot;&quot;post init migrations&quot;&quot;. | [optional] 
**PublicURL** | **String** | URL or IP address where exposed containers will be reachable | [optional] 
**SecuritySettings** | [**PortainerEndpointSecuritySettings**](PortainerEndpointSecuritySettings.md) | Environment(Endpoint) specific security settings | [optional] 
**Snapshots** | [**PortainerDockerSnapshot[]**](PortainerDockerSnapshot.md) | List of snapshots | [optional] 
**Status** | [**PortainerEndpointStatus**](PortainerEndpointStatus.md) | The status of the environment(endpoint) (1 - up, 2 - down) | [optional] 
**StatusMessage** | [**PortainereeEndpointStatusMessage**](PortainereeEndpointStatusMessage.md) | A message that describes the status. Should be included for Status 3 or 4. | [optional] 
**TLS** | **Boolean** | Deprecated fields Deprecated in DBVersion &#x3D;&#x3D; 4 | [optional] 
**TLSCACert** | **String** |  | [optional] 
**TLSCert** | **String** |  | [optional] 
**TLSConfig** | [**PortainerTLSConfiguration**](PortainerTLSConfiguration.md) |  | [optional] 
**TLSKey** | **String** |  | [optional] 
**TagIds** | **Int32[]** | List of tag identifiers to which this environment(endpoint) is associated | [optional] 
**Tags** | **String[]** | Deprecated in DBVersion &#x3D;&#x3D; 22 | [optional] 
**TeamAccessPolicies** | [**System.Collections.Hashtable**](PortainerAccessPolicy.md) | List of team identifiers authorized to connect to this environment(endpoint) | [optional] 
**Type** | [**PortainerEndpointType**](PortainerEndpointType.md) | Environment(Endpoint) environment(endpoint) type. 1 for a Docker environment(endpoint), 2 for an agent on Docker environment(endpoint) or 3 for an Azure environment(endpoint). | [optional] 
**URL** | **String** | URL or IP address of the Docker host associated to this environment(endpoint) | [optional] 
**UserAccessPolicies** | [**System.Collections.Hashtable**](PortainerAccessPolicy.md) | List of user identifiers authorized to connect to this environment(endpoint) | [optional] 
**UserTrusted** | **Boolean** | Whether the device has been trusted or not by the user | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeEndpoint = Initialize-PSOpenAPIToolsPortainereeEndpoint  -AMTDeviceGUID 4c4c4544-004b-3910-8037-b6c04f504633 `
 -Agent null `
 -AuthorizedTeams null `
 -AuthorizedUsers null `
 -AzureCredentials null `
 -ChangeWindow null `
 -CloudProvider null `
 -ComposeSyntaxMaxVersion 3.8 `
 -ContainerEngine docker `
 -DeploymentOptions null `
 -Edge null `
 -EdgeCheckinInterval 5 `
 -EdgeID null `
 -EdgeKey null `
 -EnableGPUManagement null `
 -EnableImageNotification null `
 -Gpus null `
 -GroupId 1 `
 -Heartbeat true `
 -Id 1 `
 -IsEdgeDevice null `
 -Kubernetes null `
 -LastCheckInDate null `
 -LocalTimeZone null `
 -MTLSStatus null `
 -Name my-environment `
 -Policies null `
 -PostInitMigrations null `
 -PublicURL docker.mydomain.tld:2375 `
 -SecuritySettings null `
 -Snapshots null `
 -Status null `
 -StatusMessage null `
 -TLS null `
 -TLSCACert null `
 -TLSCert null `
 -TLSConfig null `
 -TLSKey null `
 -TagIds null `
 -Tags null `
 -TeamAccessPolicies null `
 -Type null `
 -URL docker.mydomain.tld:2375 `
 -UserAccessPolicies null `
 -UserTrusted null
```

- Convert the resource to JSON
```powershell
$PortainereeEndpoint | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

