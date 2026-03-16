# V1ScopeSelector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MatchExpressions** | [**V1ScopedResourceSelectorRequirement[]**](V1ScopedResourceSelectorRequirement.md) | A list of scope selector requirements by scope of the resources. +optional +listType&#x3D;atomic | [optional] 

## Examples

- Prepare the resource
```powershell
$V1ScopeSelector = Initialize-PSOpenAPIToolsV1ScopeSelector  -MatchExpressions null
```

- Convert the resource to JSON
```powershell
$V1ScopeSelector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

