# ModelsK8sApplication
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Annotations** | **System.Collections.Hashtable** |  | [optional] 
**ApplicationOwner** | **String** |  | [optional] 
**ApplicationType** | **String** |  | [optional] 
**Configurations** | [**ModelsConfiguration[]**](ModelsConfiguration.md) |  | [optional] 
**Containers** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) |  | [optional] 
**CreationDate** | **String** |  | [optional] 
**DeploymentType** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Image** | **String** |  | [optional] 
**Kind** | **String** |  | [optional] 
**Labels** | **System.Collections.Hashtable** |  | [optional] 
**LoadBalancerIPAddress** | **String** |  | [optional] 
**MatchLabels** | **System.Collections.Hashtable** |  | [optional] 
**Metadata** | [**ModelsMetadata**](ModelsMetadata.md) |  | [optional] 
**Name** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**Pods** | [**ModelsPod[]**](ModelsPod.md) |  | [optional] 
**PublishedPorts** | [**ModelsPublishedPort[]**](ModelsPublishedPort.md) |  | [optional] 
**Resource** | [**ModelsK8sApplicationResource**](ModelsK8sApplicationResource.md) |  | [optional] 
**ResourcePool** | **String** |  | [optional] 
**RunningPodsCount** | **Int32** |  | [optional] 
**ServiceId** | **String** |  | [optional] 
**ServiceName** | **String** |  | [optional] 
**ServiceType** | **String** |  | [optional] 
**StackId** | **String** |  | [optional] 
**StackName** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**TotalPodsCount** | **Int32** |  | [optional] 
**Uid** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelsK8sApplication = Initialize-PSOpenAPIToolsModelsK8sApplication  -Annotations null `
 -ApplicationOwner null `
 -ApplicationType null `
 -Configurations null `
 -Containers null `
 -CreationDate null `
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
 -StackName null `
 -Status null `
 -TotalPodsCount null `
 -Uid null
```

- Convert the resource to JSON
```powershell
$ModelsK8sApplication | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

