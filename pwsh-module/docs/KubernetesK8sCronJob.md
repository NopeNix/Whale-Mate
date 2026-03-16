# KubernetesK8sCronJob
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Command** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**IsSystem** | **Boolean** |  | [optional] 
**Jobs** | [**KubernetesK8sJob[]**](KubernetesK8sJob.md) |  | [optional] 
**Name** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**Schedule** | **String** |  | [optional] 
**Suspend** | **Boolean** |  | [optional] 
**Timezone** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$KubernetesK8sCronJob = Initialize-PSOpenAPIToolsKubernetesK8sCronJob  -Command null `
 -Id null `
 -IsSystem null `
 -Jobs null `
 -Name null `
 -Namespace null `
 -Schedule null `
 -Suspend null `
 -Timezone null
```

- Convert the resource to JSON
```powershell
$KubernetesK8sCronJob | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

