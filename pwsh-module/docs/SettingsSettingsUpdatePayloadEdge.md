# SettingsSettingsUpdatePayloadEdge
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AsyncMode** | **Boolean** | AsyncMode enables edge agent to run in async mode by default | [optional] 
**CommandInterval** | **Int32** | The command list interval for edge agent - used in edge async mode (in seconds) | [optional] 
**MTLS** | [**SettingsMTLSPayload**](SettingsMTLSPayload.md) |  | [optional] 
**PingInterval** | **Int32** | The ping interval for edge agent - used in edge async mode (in seconds) | [optional] 
**SnapshotInterval** | **Int32** | The snapshot interval for edge agent - used in edge async mode (in seconds) | [optional] 
**TunnelServerAddress** | **String** | The address where the tunneling server can be reached by Edge agents | [optional] 

## Examples

- Prepare the resource
```powershell
$SettingsSettingsUpdatePayloadEdge = Initialize-PSOpenAPIToolsSettingsSettingsUpdatePayloadEdge  -AsyncMode null `
 -CommandInterval 5 `
 -MTLS null `
 -PingInterval 5 `
 -SnapshotInterval 5 `
 -TunnelServerAddress null
```

- Convert the resource to JSON
```powershell
$SettingsSettingsUpdatePayloadEdge | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

