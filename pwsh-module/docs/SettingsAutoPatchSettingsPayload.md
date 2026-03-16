# SettingsAutoPatchSettingsPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** |  | [optional] 
**PatchCron** | **String** |  | [optional] 
**PortainerRepository** | **String** |  | [optional] 
**RegistryID** | **Int32** |  | [optional] 
**UpdaterRepository** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SettingsAutoPatchSettingsPayload = Initialize-PSOpenAPIToolsSettingsAutoPatchSettingsPayload  -Enabled false `
 -PatchCron 0 0 * * * `
 -PortainerRepository portainer/portainer-ee `
 -RegistryID 1 `
 -UpdaterRepository portainer/portainer-updater
```

- Convert the resource to JSON
```powershell
$SettingsAutoPatchSettingsPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

