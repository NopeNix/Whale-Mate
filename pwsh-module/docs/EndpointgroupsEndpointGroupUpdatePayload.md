# EndpointgroupsEndpointGroupUpdatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssociatedEndpoints** | **Int32[]** | List of environment(endpoint) identifiers that will be part of this group | [optional] 
**Description** | **String** | Environment(Endpoint) group description | [optional] 
**Name** | **String** | Environment(Endpoint) group name | [optional] 
**TagIDs** | **Int32[]** | List of tag identifiers associated to the environment(endpoint) group | [optional] 
**TeamAccessPolicies** | [**System.Collections.Hashtable**](PortainerAccessPolicy.md) |  | [optional] 
**UserAccessPolicies** | [**System.Collections.Hashtable**](PortainerAccessPolicy.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointgroupsEndpointGroupUpdatePayload = Initialize-PSOpenAPIToolsEndpointgroupsEndpointGroupUpdatePayload  -AssociatedEndpoints [1, 3] `
 -Description description `
 -Name my-environment-group `
 -TagIDs [3, 4] `
 -TeamAccessPolicies null `
 -UserAccessPolicies null
```

- Convert the resource to JSON
```powershell
$EndpointgroupsEndpointGroupUpdatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

