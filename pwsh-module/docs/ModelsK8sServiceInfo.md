# ModelsK8sServiceInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllocateLoadBalancerNodePorts** | **Boolean** |  | [optional] 
**Annotations** | **System.Collections.Hashtable** |  | [optional] 
**Applications** | [**ModelsK8sApplication[]**](ModelsK8sApplication.md) | serviceList screen | [optional] 
**ClusterIPs** | **String[]** |  | [optional] 
**CreationDate** | **String** |  | [optional] 
**ExternalIPs** | **String[]** |  | [optional] 
**ExternalName** | **String** |  | [optional] 
**IngressStatus** | [**ModelsK8sServiceIngress[]**](ModelsK8sServiceIngress.md) |  | [optional] 
**Labels** | **System.Collections.Hashtable** |  | [optional] 
**Name** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**Ports** | [**ModelsK8sServicePort[]**](ModelsK8sServicePort.md) |  | [optional] 
**Selector** | **System.Collections.Hashtable** |  | [optional] 
**Type** | **String** |  | [optional] 
**UID** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelsK8sServiceInfo = Initialize-PSOpenAPIToolsModelsK8sServiceInfo  -AllocateLoadBalancerNodePorts null `
 -Annotations null `
 -Applications null `
 -ClusterIPs null `
 -CreationDate null `
 -ExternalIPs null `
 -ExternalName null `
 -IngressStatus null `
 -Labels null `
 -Name null `
 -Namespace null `
 -Ports null `
 -Selector null `
 -Type null `
 -UID null
```

- Convert the resource to JSON
```powershell
$ModelsK8sServiceInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

