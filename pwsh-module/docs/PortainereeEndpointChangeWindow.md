# PortainereeEndpointChangeWindow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** |  | [optional] 
**EndTime** | **String** |  | [optional] 
**StartTime** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeEndpointChangeWindow = Initialize-PSOpenAPIToolsPortainereeEndpointChangeWindow  -Enabled true `
 -EndTime 02:00 `
 -StartTime 22:00
```

- Convert the resource to JSON
```powershell
$PortainereeEndpointChangeWindow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

