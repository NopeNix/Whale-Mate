# ModelsK8sApplicationResource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CpuLimit** | **Decimal** |  | [optional] 
**CpuRequest** | **Decimal** |  | [optional] 
**MemoryLimit** | **Int32** |  | [optional] 
**MemoryRequest** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelsK8sApplicationResource = Initialize-PSOpenAPIToolsModelsK8sApplicationResource  -CpuLimit null `
 -CpuRequest null `
 -MemoryLimit null `
 -MemoryRequest null
```

- Convert the resource to JSON
```powershell
$ModelsK8sApplicationResource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

