# V1ResourceQuotaSpec
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hard** | [**System.Collections.Hashtable**](ResourceQuantity.md) | hard is the set of desired hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/ +optional | [optional] 
**ScopeSelector** | [**V1ScopeSelector**](V1ScopeSelector.md) | scopeSelector is also a collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched. +optional | [optional] 
**Scopes** | [**V1ResourceQuotaScope[]**](V1ResourceQuotaScope.md) | A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects. +optional +listType&#x3D;atomic | [optional] 

## Examples

- Prepare the resource
```powershell
$V1ResourceQuotaSpec = Initialize-PSOpenAPIToolsV1ResourceQuotaSpec  -Hard null `
 -ScopeSelector null `
 -Scopes null
```

- Convert the resource to JSON
```powershell
$V1ResourceQuotaSpec | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

