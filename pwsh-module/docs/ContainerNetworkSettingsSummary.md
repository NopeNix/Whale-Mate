# ContainerNetworkSettingsSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Networks** | [**System.Collections.Hashtable**](NetworkEndpointSettings.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ContainerNetworkSettingsSummary = Initialize-PSOpenAPIToolsContainerNetworkSettingsSummary  -Networks null
```

- Convert the resource to JSON
```powershell
$ContainerNetworkSettingsSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

