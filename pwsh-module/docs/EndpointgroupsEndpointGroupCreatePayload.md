# EndpointgroupsEndpointGroupCreatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssociatedEndpoints** | **Int32[]** | List of environment(endpoint) identifiers that will be part of this group | [optional] 
**Description** | **String** | Environment(Endpoint) group description | [optional] 
**Name** | **String** | Environment(Endpoint) group name | 
**TagIDs** | **Int32[]** | List of tag identifiers to which this environment(endpoint) group is associated | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointgroupsEndpointGroupCreatePayload = Initialize-PSOpenAPIToolsEndpointgroupsEndpointGroupCreatePayload  -AssociatedEndpoints [1, 3] `
 -Description description `
 -Name my-Environment-group `
 -TagIDs [1, 2]
```

- Convert the resource to JSON
```powershell
$EndpointgroupsEndpointGroupCreatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

