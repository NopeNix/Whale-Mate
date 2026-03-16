# PortainerAutoUpdateSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ForcePullImage** | **Boolean** | Pull latest image | [optional] 
**ForceUpdate** | **Boolean** | Force update ignores repo changes | [optional] 
**Interval** | **String** | Auto update interval | [optional] 
**JobID** | **String** | Autoupdate job id | [optional] 
**Webhook** | **String** | A UUID generated from client | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerAutoUpdateSettings = Initialize-PSOpenAPIToolsPortainerAutoUpdateSettings  -ForcePullImage false `
 -ForceUpdate false `
 -Interval 1m30s `
 -JobID 15 `
 -Webhook 05de31a2-79fa-4644-9c12-faa67e5c49f0
```

- Convert the resource to JSON
```powershell
$PortainerAutoUpdateSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

