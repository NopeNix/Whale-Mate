# ModelsK8sNamespaceDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Annotations** | **System.Collections.Hashtable** |  | [optional] 
**LoadBalancerQuota** | [**ModelsK8sLoadBalancerQuota**](ModelsK8sLoadBalancerQuota.md) |  | [optional] 
**Name** | **String** |  | [optional] 
**Owner** | **String** |  | [optional] 
**ResourceQuota** | [**ModelsK8sResourceQuota**](ModelsK8sResourceQuota.md) |  | [optional] 
**StorageQuotas** | [**System.Collections.Hashtable**](ModelsK8sStorageQuota.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelsK8sNamespaceDetails = Initialize-PSOpenAPIToolsModelsK8sNamespaceDetails  -Annotations null `
 -LoadBalancerQuota null `
 -Name null `
 -Owner null `
 -ResourceQuota null `
 -StorageQuotas null
```

- Convert the resource to JSON
```powershell
$ModelsK8sNamespaceDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

