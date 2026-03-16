# PortainereeAlertingSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **String** |  | [optional] 
**CreatedBy** | **String** |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 
**Id** | **Int32** |  | [optional] 
**IsInternal** | **Boolean** |  | [optional] 
**Name** | **String** |  | [optional] 
**NotificationChannels** | [**PortainereeAlertingNotificationChannel[]**](PortainereeAlertingNotificationChannel.md) |  | [optional] 
**PortainerURL** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**Uptime** | **String** |  | [optional] 
**Url** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeAlertingSettings = Initialize-PSOpenAPIToolsPortainereeAlertingSettings  -CreatedAt null `
 -CreatedBy null `
 -Enabled null `
 -Id null `
 -IsInternal null `
 -Name null `
 -NotificationChannels null `
 -PortainerURL null `
 -Status null `
 -Uptime null `
 -Url null
```

- Convert the resource to JSON
```powershell
$PortainereeAlertingSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

