# SettingsAutoPatchResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** |  | [optional] 
**PatchCron** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SettingsAutoPatchResponse = Initialize-PSOpenAPIToolsSettingsAutoPatchResponse  -Enabled null `
 -PatchCron 0 4 * * *
```

- Convert the resource to JSON
```powershell
$SettingsAutoPatchResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

