# PortainerPerformanceMetrics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CPUUsage** | **Decimal** |  | [optional] 
**MemoryUsage** | **Decimal** |  | [optional] 
**NetworkUsage** | **Decimal** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerPerformanceMetrics = Initialize-PSOpenAPIToolsPortainerPerformanceMetrics  -CPUUsage null `
 -MemoryUsage null `
 -NetworkUsage null
```

- Convert the resource to JSON
```powershell
$PortainerPerformanceMetrics | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

