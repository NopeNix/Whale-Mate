# PortainerRegistryAccessPolicies
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Namespaces** | **String[]** | Kubernetes specific fields (with kubernetes, namespaces have access to a registry, if users/teams have access to the same namespace, they have access to the registry) | [optional] 
**TeamAccessPolicies** | [**System.Collections.Hashtable**](PortainerAccessPolicy.md) |  | [optional] 
**UserAccessPolicies** | [**System.Collections.Hashtable**](PortainerAccessPolicy.md) | Docker specific fields (with docker, users/teams have access to a registry) | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerRegistryAccessPolicies = Initialize-PSOpenAPIToolsPortainerRegistryAccessPolicies  -Namespaces null `
 -TeamAccessPolicies null `
 -UserAccessPolicies null
```

- Convert the resource to JSON
```powershell
$PortainerRegistryAccessPolicies | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

