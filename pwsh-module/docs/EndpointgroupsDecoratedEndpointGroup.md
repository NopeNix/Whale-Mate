# EndpointgroupsDecoratedEndpointGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthorizedTeams** | **Int32[]** |  | [optional] 
**AuthorizedUsers** | **Int32[]** | Deprecated in DBVersion &#x3D;&#x3D; 18 | [optional] 
**Description** | **String** | Description associated to the environment(endpoint) group | [optional] 
**Id** | **Int32** | Environment(Endpoint) group Identifier | [optional] 
**Labels** | [**PortainerPair[]**](PortainerPair.md) | Deprecated fields | [optional] 
**Name** | **String** | Environment(Endpoint) group name | [optional] 
**Policies** | [**PoliciesGenericPolicy[]**](PoliciesGenericPolicy.md) |  | [optional] 
**TagIds** | **Int32[]** | List of tags associated to this environment(endpoint) group | [optional] 
**Tags** | **String[]** | Deprecated in DBVersion &#x3D;&#x3D; 22 | [optional] 
**TeamAccessPolicies** | [**System.Collections.Hashtable**](PortainerAccessPolicy.md) |  | [optional] 
**UserAccessPolicies** | [**System.Collections.Hashtable**](PortainerAccessPolicy.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointgroupsDecoratedEndpointGroup = Initialize-PSOpenAPIToolsEndpointgroupsDecoratedEndpointGroup  -AuthorizedTeams null `
 -AuthorizedUsers null `
 -Description Environment(Endpoint) group description `
 -Id 1 `
 -Labels null `
 -Name my-environment-group `
 -Policies null `
 -TagIds null `
 -Tags null `
 -TeamAccessPolicies null `
 -UserAccessPolicies null
```

- Convert the resource to JSON
```powershell
$EndpointgroupsDecoratedEndpointGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

