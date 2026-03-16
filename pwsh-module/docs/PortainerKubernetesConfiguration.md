# PortainerKubernetesConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowNoneIngressClass** | **Boolean** |  | [optional] 
**EnableResourceOverCommit** | **Boolean** |  | [optional] 
**IngressAvailabilityPerNamespace** | **Boolean** |  | [optional] 
**IngressClasses** | [**PortainerKubernetesIngressClassConfig[]**](PortainerKubernetesIngressClassConfig.md) |  | [optional] 
**ResourceOverCommitPercentage** | **Int32** |  | [optional] 
**RestrictDefaultNamespace** | **Boolean** |  | [optional] 
**StorageClasses** | [**PortainerKubernetesStorageClassConfig[]**](PortainerKubernetesStorageClassConfig.md) |  | [optional] 
**UseLoadBalancer** | **Boolean** |  | [optional] 
**UseServerMetrics** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerKubernetesConfiguration = Initialize-PSOpenAPIToolsPortainerKubernetesConfiguration  -AllowNoneIngressClass null `
 -EnableResourceOverCommit null `
 -IngressAvailabilityPerNamespace null `
 -IngressClasses null `
 -ResourceOverCommitPercentage null `
 -RestrictDefaultNamespace null `
 -StorageClasses null `
 -UseLoadBalancer null `
 -UseServerMetrics null
```

- Convert the resource to JSON
```powershell
$PortainerKubernetesConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

