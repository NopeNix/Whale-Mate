# ModelsK8sIngressInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Annotations** | **System.Collections.Hashtable** |  | [optional] 
**ClassName** | **String** |  | [optional] 
**CreationDate** | **String** |  | [optional] 
**Hosts** | **String[]** |  | [optional] 
**Labels** | **System.Collections.Hashtable** |  | [optional] 
**Name** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**Paths** | [**ModelsK8sIngressPath[]**](ModelsK8sIngressPath.md) |  | [optional] 
**TLS** | [**ModelsK8sIngressTLS[]**](ModelsK8sIngressTLS.md) |  | [optional] 
**Type** | **String** |  | [optional] 
**UID** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelsK8sIngressInfo = Initialize-PSOpenAPIToolsModelsK8sIngressInfo  -Annotations null `
 -ClassName null `
 -CreationDate null `
 -Hosts null `
 -Labels null `
 -Name null `
 -Namespace null `
 -Paths null `
 -TLS null `
 -Type null `
 -UID null
```

- Convert the resource to JSON
```powershell
$ModelsK8sIngressInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

