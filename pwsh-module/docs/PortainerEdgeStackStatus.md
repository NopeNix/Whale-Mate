# PortainerEdgeStackStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DeploymentInfo** | [**PortainerStackDeploymentInfo**](PortainerStackDeploymentInfo.md) | EE only feature | [optional] 
**Details** | [**PortainerEdgeStackStatusDetails**](PortainerEdgeStackStatusDetails.md) | Deprecated | [optional] 
**EndpointID** | **Int32** |  | [optional] 
**VarError** | **String** | Deprecated | [optional] 
**ReadyRePullImage** | **Boolean** | ReadyRePullImage is a flag to indicate whether the auto update is trigger to re-pull image | [optional] 
**Status** | [**PortainerEdgeStackDeploymentStatus[]**](PortainerEdgeStackDeploymentStatus.md) |  | [optional] 
**Type** | [**PortainerEdgeStackStatusType**](PortainerEdgeStackStatusType.md) | Deprecated | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerEdgeStackStatus = Initialize-PSOpenAPIToolsPortainerEdgeStackStatus  -DeploymentInfo null `
 -Details null `
 -EndpointID null `
 -VarError null `
 -ReadyRePullImage null `
 -Status null `
 -Type null
```

- Convert the resource to JSON
```powershell
$PortainerEdgeStackStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

