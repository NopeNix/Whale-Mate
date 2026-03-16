# EndpointedgeEndpointsTrustPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EndpointIDs** | **Int32[]** |  | [optional] 
**Relations** | [**System.Collections.Hashtable**](EndpointedgeEndpointTrustUpdateRelation.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointedgeEndpointsTrustPayload = Initialize-PSOpenAPIToolsEndpointedgeEndpointsTrustPayload  -EndpointIDs null `
 -Relations null
```

- Convert the resource to JSON
```powershell
$EndpointedgeEndpointsTrustPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

