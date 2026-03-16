# KubernetesPod
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContainerName** | **String** |  | [optional] 
**CreationDate** | **String** |  | [optional] 
**Image** | **String** |  | [optional] 
**ImagePullPolicy** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**NodeName** | **String** |  | [optional] 
**PodIP** | **String** |  | [optional] 
**Resource** | [**KubernetesK8sApplicationResource**](KubernetesK8sApplicationResource.md) |  | [optional] 
**Status** | **String** |  | [optional] 
**Uid** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$KubernetesPod = Initialize-PSOpenAPIToolsKubernetesPod  -ContainerName null `
 -CreationDate null `
 -Image null `
 -ImagePullPolicy null `
 -Name null `
 -NodeName null `
 -PodIP null `
 -Resource null `
 -Status null `
 -Uid null
```

- Convert the resource to JSON
```powershell
$KubernetesPod | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

