# PortainereeEdge
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AsyncMode** | **Boolean** | Deprecated 2.18 | [optional] 
**CommandInterval** | **Int32** | The command list interval for edge agent - used in edge async mode (in seconds) | [optional] 
**MTLS** | [**PortainereeMTLSSettings**](PortainereeMTLSSettings.md) |  | [optional] 
**PingInterval** | **Int32** | The ping interval for edge agent - used in edge async mode (in seconds) | [optional] 
**SnapshotInterval** | **Int32** | The snapshot interval for edge agent - used in edge async mode (in seconds) | [optional] 
**TunnelServerAddress** | **String** | The address where the tunneling server can be reached by Edge agents | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeEdge = Initialize-PSOpenAPIToolsPortainereeEdge  -AsyncMode false `
 -CommandInterval 5 `
 -MTLS null `
 -PingInterval 5 `
 -SnapshotInterval 5 `
 -TunnelServerAddress portainer.domain.tld
```

- Convert the resource to JSON
```powershell
$PortainereeEdge | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

