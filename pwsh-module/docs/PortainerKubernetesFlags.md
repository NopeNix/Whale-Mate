# PortainerKubernetesFlags
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsServerIngressClassDetected** | **Boolean** |  | [optional] 
**IsServerMetricsDetected** | **Boolean** |  | [optional] 
**IsServerStorageDetected** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerKubernetesFlags = Initialize-PSOpenAPIToolsPortainerKubernetesFlags  -IsServerIngressClassDetected null `
 -IsServerMetricsDetected null `
 -IsServerStorageDetected null
```

- Convert the resource to JSON
```powershell
$PortainerKubernetesFlags | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

