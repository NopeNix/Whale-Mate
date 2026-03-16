# EndpointedgeEndpointGetChartsResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PolicyChartBundles** | [**PortainerPolicyChartBundle[]**](PortainerPolicyChartBundle.md) |  | [optional] 
**RestoreSettingsBundle** | [**System.Collections.Hashtable**](PortainerRestoreSettings.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointedgeEndpointGetChartsResponse = Initialize-PSOpenAPIToolsEndpointedgeEndpointGetChartsResponse  -PolicyChartBundles null `
 -RestoreSettingsBundle null
```

- Convert the resource to JSON
```powershell
$EndpointedgeEndpointGetChartsResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

