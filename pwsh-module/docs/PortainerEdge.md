# PortainerEdge
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AsyncMode** | **Boolean** | Deprecated 2.18 | [optional] 
**CommandInterval** | **Int32** | The command list interval for edge agent - used in edge async mode (in seconds) | [optional] 
**PingInterval** | **Int32** | The ping interval for edge agent - used in edge async mode (in seconds) | [optional] 
**SnapshotInterval** | **Int32** | The snapshot interval for edge agent - used in edge async mode (in seconds) | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerEdge = Initialize-PSOpenAPIToolsPortainerEdge  -AsyncMode false `
 -CommandInterval 5 `
 -PingInterval 5 `
 -SnapshotInterval 5
```

- Convert the resource to JSON
```powershell
$PortainerEdge | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

