# PortainerEdgeStackDeploymentStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **String** |  | [optional] 
**RollbackTo** | **Int32** | EE only feature | [optional] 
**Time** | **Int32** |  | [optional] 
**Type** | [**PortainerEdgeStackStatusType**](PortainerEdgeStackStatusType.md) |  | [optional] 
**Version** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerEdgeStackDeploymentStatus = Initialize-PSOpenAPIToolsPortainerEdgeStackDeploymentStatus  -VarError null `
 -RollbackTo null `
 -Time null `
 -Type null `
 -Version null
```

- Convert the resource to JSON
```powershell
$PortainerEdgeStackDeploymentStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

