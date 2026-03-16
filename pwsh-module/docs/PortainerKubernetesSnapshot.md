# PortainerKubernetesSnapshot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DiagnosticsData** | [**PortainerDiagnosticsData**](PortainerDiagnosticsData.md) |  | [optional] 
**KubernetesVersion** | **String** |  | [optional] 
**NodeCount** | **Int32** |  | [optional] 
**PerformanceMetrics** | [**PortainerPerformanceMetrics**](PortainerPerformanceMetrics.md) |  | [optional] 
**Time** | **Int32** |  | [optional] 
**TotalCPU** | **Int32** |  | [optional] 
**TotalMemory** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerKubernetesSnapshot = Initialize-PSOpenAPIToolsPortainerKubernetesSnapshot  -DiagnosticsData null `
 -KubernetesVersion null `
 -NodeCount null `
 -PerformanceMetrics null `
 -Time null `
 -TotalCPU null `
 -TotalMemory null
```

- Convert the resource to JSON
```powershell
$PortainerKubernetesSnapshot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

