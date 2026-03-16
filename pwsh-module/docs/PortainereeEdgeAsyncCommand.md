# PortainereeEdgeAsyncCommand
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EndpointID** | **Int32** |  | [optional] 
**Executed** | **Boolean** |  | [optional] 
**Id** | **Int32** |  | [optional] 
**Op** | [**PortainereeEdgeAsyncCommandOperation**](PortainereeEdgeAsyncCommandOperation.md) |  | [optional] 
**Path** | **String** |  | [optional] 
**ScheduledTime** | **String** |  | [optional] 
**Timestamp** | **String** |  | [optional] 
**Type** | [**PortainereeEdgeAsyncCommandType**](PortainereeEdgeAsyncCommandType.md) |  | [optional] 
**Value** | [**SystemCollectionsHashtable**](.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeEdgeAsyncCommand = Initialize-PSOpenAPIToolsPortainereeEdgeAsyncCommand  -EndpointID null `
 -Executed null `
 -Id null `
 -Op null `
 -Path null `
 -ScheduledTime null `
 -Timestamp null `
 -Type null `
 -Value null
```

- Convert the resource to JSON
```powershell
$PortainereeEdgeAsyncCommand | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

