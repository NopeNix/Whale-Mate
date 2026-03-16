# V1beta1ContainerMetrics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Container name corresponding to the one from pod.spec.containers. | [optional] 
**Usage** | [**System.Collections.Hashtable**](ResourceQuantity.md) | The memory usage is the memory working set. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1beta1ContainerMetrics = Initialize-PSOpenAPIToolsV1beta1ContainerMetrics  -Name null `
 -Usage null
```

- Convert the resource to JSON
```powershell
$V1beta1ContainerMetrics | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

