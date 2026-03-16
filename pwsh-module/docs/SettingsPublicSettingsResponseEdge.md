# SettingsPublicSettingsResponseEdge
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CheckinInterval** | **Int32** | The check in interval for edge agent (in seconds) - used in non async mode [seconds] | [optional] 
**CommandInterval** | **Int32** | The command list interval for edge agent - used in edge async mode [seconds] | [optional] 
**MTLS** | [**PortainereeMTLSSettings**](PortainereeMTLSSettings.md) |  | [optional] 
**PingInterval** | **Int32** | The ping interval for edge agent - used in edge async mode [seconds] | [optional] 
**SnapshotInterval** | **Int32** | The snapshot interval for edge agent - used in edge async mode [seconds] | [optional] 

## Examples

- Prepare the resource
```powershell
$SettingsPublicSettingsResponseEdge = Initialize-PSOpenAPIToolsSettingsPublicSettingsResponseEdge  -CheckinInterval 60 `
 -CommandInterval 60 `
 -MTLS null `
 -PingInterval 60 `
 -SnapshotInterval 60
```

- Convert the resource to JSON
```powershell
$SettingsPublicSettingsResponseEdge | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

