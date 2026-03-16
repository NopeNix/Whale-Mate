# GithubComPortainerPortainerEeApiHttpHandlerEdgestacksUpdateStatusPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EndpointID** | **Int32** |  | [optional] 
**VarError** | **String** |  | [optional] 
**RollbackTo** | **Int32** | RollbackTo specifies the stack file version to rollback to (only support to rollback to the last version currently) | [optional] 
**Status** | [**PortainerEdgeStackStatusType**](PortainerEdgeStackStatusType.md) |  | [optional] 
**Time** | **Int32** |  | [optional] 
**Version** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GithubComPortainerPortainerEeApiHttpHandlerEdgestacksUpdateStatusPayload = Initialize-PSOpenAPIToolsGithubComPortainerPortainerEeApiHttpHandlerEdgestacksUpdateStatusPayload  -EndpointID null `
 -VarError null `
 -RollbackTo null `
 -Status null `
 -Time null `
 -Version null
```

- Convert the resource to JSON
```powershell
$GithubComPortainerPortainerEeApiHttpHandlerEdgestacksUpdateStatusPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

