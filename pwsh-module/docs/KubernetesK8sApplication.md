# KubernetesK8sApplication
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Annotations** | **System.Collections.Hashtable** |  | [optional] 
**ApplicationOwner** | **String** |  | [optional] 
**ApplicationType** | **String** |  | [optional] 
**Configurations** | [**KubernetesConfiguration[]**](KubernetesConfiguration.md) |  | [optional] 
**Containers** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) |  | [optional] 
**CreationDate** | **String** |  | [optional] 
**CustomResourceMetadata** | [**KubernetesCustomResourceMetadata**](KubernetesCustomResourceMetadata.md) |  | [optional] 
**DeploymentType** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Image** | **String** |  | [optional] 
**Kind** | **String** |  | [optional] 
**Labels** | **System.Collections.Hashtable** |  | [optional] 
**LoadBalancerIPAddress** | **String** |  | [optional] 
**MatchLabels** | **System.Collections.Hashtable** |  | [optional] 
**Metadata** | [**KubernetesMetadata**](KubernetesMetadata.md) |  | [optional] 
**Name** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**Pods** | [**KubernetesPod[]**](KubernetesPod.md) |  | [optional] 
**PublishedPorts** | [**KubernetesPublishedPort[]**](KubernetesPublishedPort.md) |  | [optional] 
**Resource** | [**KubernetesK8sApplicationResource**](KubernetesK8sApplicationResource.md) |  | [optional] 
**ResourcePool** | **String** |  | [optional] 
**RunningPodsCount** | **Int32** |  | [optional] 
**ServiceId** | **String** |  | [optional] 
**ServiceName** | **String** |  | [optional] 
**ServiceType** | **String** |  | [optional] 
**StackId** | **String** |  | [optional] 
**StackKind** | **String** |  | [optional] 
**StackName** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**TotalPodsCount** | **Int32** |  | [optional] 
**Uid** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$KubernetesK8sApplication = Initialize-PSOpenAPIToolsKubernetesK8sApplication  -Annotations null `
 -ApplicationOwner null `
 -ApplicationType null `
 -Configurations null `
 -Containers null `
 -CreationDate null `
 -CustomResourceMetadata null `
 -DeploymentType null `
 -Id null `
 -Image null `
 -Kind null `
 -Labels null `
 -LoadBalancerIPAddress null `
 -MatchLabels null `
 -Metadata null `
 -Name null `
 -Namespace null `
 -Pods null `
 -PublishedPorts null `
 -Resource null `
 -ResourcePool null `
 -RunningPodsCount null `
 -ServiceId null `
 -ServiceName null `
 -ServiceType null `
 -StackId null `
 -StackKind null `
 -StackName null `
 -Status null `
 -TotalPodsCount null `
 -Uid null
```

- Convert the resource to JSON
```powershell
$KubernetesK8sApplication | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

