# ModelsK8sResourceQuota
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CpuLimit** | **String** |  | [optional] 
**CpuRequest** | **String** |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 
**MemoryLimit** | **String** |  | [optional] 
**MemoryRequest** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelsK8sResourceQuota = Initialize-PSOpenAPIToolsModelsK8sResourceQuota  -CpuLimit null `
 -CpuRequest null `
 -Enabled null `
 -MemoryLimit null `
 -MemoryRequest null
```

- Convert the resource to JSON
```powershell
$ModelsK8sResourceQuota | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

