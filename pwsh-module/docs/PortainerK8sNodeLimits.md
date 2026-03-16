# PortainerK8sNodeLimits
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CPU** | **Int32** |  | [optional] 
**Memory** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerK8sNodeLimits = Initialize-PSOpenAPIToolsPortainerK8sNodeLimits  -CPU null `
 -Memory null
```

- Convert the resource to JSON
```powershell
$PortainerK8sNodeLimits | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

