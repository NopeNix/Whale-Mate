# PortainereeEndpointStatusMessage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Detail** | **String** |  | [optional] 
**Operation** | **String** | TODO: in future versions, we should think about removing these fields and create a separate bucket to store cluster operation messages instead or try to find a better way. Operation/OperationStatus blank means, nothing is happening | [optional] 
**OperationStatus** | [**PortainereeEndpointOperationStatus**](PortainereeEndpointOperationStatus.md) | ,processing,error | [optional] 
**Summary** | **String** |  | [optional] 
**Warnings** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeEndpointStatusMessage = Initialize-PSOpenAPIToolsPortainereeEndpointStatusMessage  -Detail null `
 -Operation null `
 -OperationStatus null `
 -Summary null `
 -Warnings null
```

- Convert the resource to JSON
```powershell
$PortainereeEndpointStatusMessage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

