# EdgeupdateschedulesUpdatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AgentImage** | **String** | default to &quot;&quot;&quot;&quot; &#x3D;&#x3D; portainer/agent:&lt;current_server_version&gt; | [optional] 
**GroupIDs** | **Int32[]** |  | [optional] 
**Name** | **String** |  | [optional] 
**RegistryID** | **Int32** | default to 0 &#x3D; dockerhub | [optional] 
**ScheduledTime** | **String** |  | [optional] 
**Type** | [**TypesUpdateScheduleType**](TypesUpdateScheduleType.md) |  | [optional] 
**UpdaterImage** | **String** | default to &quot;&quot;&quot;&quot; &#x3D;&#x3D; portainer/portainer-updater:latest | [optional] 

## Examples

- Prepare the resource
```powershell
$EdgeupdateschedulesUpdatePayload = Initialize-PSOpenAPIToolsEdgeupdateschedulesUpdatePayload  -AgentImage null `
 -GroupIDs null `
 -Name null `
 -RegistryID null `
 -ScheduledTime null `
 -Type null `
 -UpdaterImage null
```

- Convert the resource to JSON
```powershell
$EdgeupdateschedulesUpdatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

