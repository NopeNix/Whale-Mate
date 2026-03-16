# EndpointsEndpointUpdatePayloadStatusMessage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Detail** | **String** |  | [optional] 
**Summary** | **String** |  | [optional] 
**Operation** | **String** | &#39;scale&#39;, &#39;upgrade&#39;, &#39;addons&#39; | [optional] 
**OperationStatus** | [**PortainereeEndpointOperationStatus**](PortainereeEndpointOperationStatus.md) | &#39;&#39;, &#39;error&#39;, &#39;processing&#39; | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointsEndpointUpdatePayloadStatusMessage = Initialize-PSOpenAPIToolsEndpointsEndpointUpdatePayloadStatusMessage  -Detail Error message `
 -Summary Error `
 -Operation scale `
 -OperationStatus null
```

- Convert the resource to JSON
```powershell
$EndpointsEndpointUpdatePayloadStatusMessage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

