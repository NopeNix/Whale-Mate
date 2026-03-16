# EndpointsRegistryAccessPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Namespaces** | **String[]** |  | [optional] 
**TeamAccessPolicies** | [**System.Collections.Hashtable**](PortainerAccessPolicy.md) |  | [optional] 
**UserAccessPolicies** | [**System.Collections.Hashtable**](PortainerAccessPolicy.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointsRegistryAccessPayload = Initialize-PSOpenAPIToolsEndpointsRegistryAccessPayload  -Namespaces null `
 -TeamAccessPolicies null `
 -UserAccessPolicies null
```

- Convert the resource to JSON
```powershell
$EndpointsRegistryAccessPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

