# PortainerEnvironmentEdgeSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AsyncMode** | **Boolean** | Whether the device has been started in edge async mode | [optional] 
**CommandInterval** | **Int32** | The command list interval for edge agent - used in edge async mode [seconds] | [optional] 
**PingInterval** | **Int32** | The ping interval for edge agent - used in edge async mode [seconds] | [optional] 
**SnapshotInterval** | **Int32** | The snapshot interval for edge agent - used in edge async mode [seconds] | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerEnvironmentEdgeSettings = Initialize-PSOpenAPIToolsPortainerEnvironmentEdgeSettings  -AsyncMode null `
 -CommandInterval 60 `
 -PingInterval 60 `
 -SnapshotInterval 60
```

- Convert the resource to JSON
```powershell
$PortainerEnvironmentEdgeSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

