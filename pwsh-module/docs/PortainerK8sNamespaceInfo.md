# PortainerK8sNamespaceInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Annotations** | **System.Collections.Hashtable** |  | [optional] 
**CreationDate** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**IsDefault** | **Boolean** |  | [optional] 
**IsSystem** | **Boolean** |  | [optional] 
**Name** | **String** |  | [optional] 
**NamespaceOwner** | **String** |  | [optional] 
**ResourceQuota** | [**V1ResourceQuota**](V1ResourceQuota.md) |  | [optional] 
**Status** | [**V1NamespaceStatus**](V1NamespaceStatus.md) |  | [optional] 
**UnhealthyEventCount** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerK8sNamespaceInfo = Initialize-PSOpenAPIToolsPortainerK8sNamespaceInfo  -Annotations null `
 -CreationDate null `
 -Id null `
 -IsDefault null `
 -IsSystem null `
 -Name null `
 -NamespaceOwner null `
 -ResourceQuota null `
 -Status null `
 -UnhealthyEventCount null
```

- Convert the resource to JSON
```powershell
$PortainerK8sNamespaceInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

