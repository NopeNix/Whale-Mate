# EdgeupdateschedulesDecoratedUpdateSchedule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AgentImage** | **String** | Name of the agent image, does not include the registry | [optional] 
**Created** | **Int32** | Created timestamp | [optional] 
**CreatedBy** | **Int32** | Created by user id | [optional] 
**EdgeGroupIds** | **Int32[]** |  | [optional] 
**EdgeStackId** | **Int32** |  | [optional] 
**EnvironmentsPreviousVersions** | **System.Collections.Hashtable** | Deprecated - use Environment.Agent.PreviousVersion instead | [optional] 
**Id** | **Int32** | EdgeUpdateSchedule Identifier | [optional] 
**Name** | **String** | Name of the schedule | [optional] 
**RegistryId** | **Int32** | ID of registry | [optional] 
**ScheduledTime** | **String** |  | [optional] 
**Status** | [**TypesUpdateScheduleStatusType**](TypesUpdateScheduleStatusType.md) |  | [optional] 
**StatusMessage** | **String** |  | [optional] 
**Type** | [**TypesUpdateScheduleType**](TypesUpdateScheduleType.md) | Type of the update (1 - update, 2 - rollback) | [optional] 
**Updated** | **Int32** | Updated timestamp | [optional] 
**UpdaterImage** | **String** | Name of the updater image, does not include the registry but must include a tag | [optional] 
**Version** | **String** | Deprecated | [optional] 

## Examples

- Prepare the resource
```powershell
$EdgeupdateschedulesDecoratedUpdateSchedule = Initialize-PSOpenAPIToolsEdgeupdateschedulesDecoratedUpdateSchedule  -AgentImage portainer/agent:latest `
 -Created 1564897200 `
 -CreatedBy 1 `
 -EdgeGroupIds null `
 -EdgeStackId 1 `
 -EnvironmentsPreviousVersions null `
 -Id 1 `
 -Name Update Schedule `
 -RegistryId 1 `
 -ScheduledTime null `
 -Status null `
 -StatusMessage null `
 -Type null `
 -Updated 1564897200 `
 -UpdaterImage portainer/portainer-updater:latest `
 -Version 1.0.0
```

- Convert the resource to JSON
```powershell
$EdgeupdateschedulesDecoratedUpdateSchedule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

