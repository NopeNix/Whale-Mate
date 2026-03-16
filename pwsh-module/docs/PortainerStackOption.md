# PortainerStackOption
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HelmAtomic** | **Boolean** | Enable atomic rollback on failure (Helm --atomic flag for Kubernetes Helm stacks) | [optional] 
**Prune** | **Boolean** | Prune services that are no longer referenced | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerStackOption = Initialize-PSOpenAPIToolsPortainerStackOption  -HelmAtomic false `
 -Prune false
```

- Convert the resource to JSON
```powershell
$PortainerStackOption | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

