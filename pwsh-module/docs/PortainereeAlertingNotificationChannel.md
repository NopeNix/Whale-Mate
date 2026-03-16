# PortainereeAlertingNotificationChannel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Config** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 
**Id** | **Int32** |  | [optional] 
**Name** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeAlertingNotificationChannel = Initialize-PSOpenAPIToolsPortainereeAlertingNotificationChannel  -Config null `
 -Enabled null `
 -Id null `
 -Name null `
 -Type null
```

- Convert the resource to JSON
```powershell
$PortainereeAlertingNotificationChannel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

