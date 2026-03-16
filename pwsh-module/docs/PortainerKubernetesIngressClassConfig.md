# PortainerKubernetesIngressClassConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Blocked** | **Boolean** |  | [optional] 
**BlockedNamespaces** | **String[]** |  | [optional] 
**Name** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerKubernetesIngressClassConfig = Initialize-PSOpenAPIToolsPortainerKubernetesIngressClassConfig  -Blocked null `
 -BlockedNamespaces null `
 -Name null `
 -Type null
```

- Convert the resource to JSON
```powershell
$PortainerKubernetesIngressClassConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

