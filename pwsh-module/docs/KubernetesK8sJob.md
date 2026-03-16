# KubernetesK8sJob
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackoffLimit** | **Int32** |  | [optional] 
**Command** | **String** |  | [optional] 
**Completions** | **Int32** |  | [optional] 
**Container** | [**V1Container**](V1Container.md) |  | [optional] 
**Duration** | **String** |  | [optional] 
**FailedReason** | **String** |  | [optional] 
**FinishTime** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**IsSystem** | **Boolean** |  | [optional] 
**Name** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**PodName** | **String** |  | [optional] 
**StartTime** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$KubernetesK8sJob = Initialize-PSOpenAPIToolsKubernetesK8sJob  -BackoffLimit null `
 -Command null `
 -Completions null `
 -Container null `
 -Duration null `
 -FailedReason null `
 -FinishTime null `
 -Id null `
 -IsSystem null `
 -Name null `
 -Namespace null `
 -PodName null `
 -StartTime null `
 -Status null
```

- Convert the resource to JSON
```powershell
$KubernetesK8sJob | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

