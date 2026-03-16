# V1ScopedResourceSelectorRequirement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operator** | [**V1ScopeSelectorOperator**](V1ScopeSelectorOperator.md) | Represents a scope&#39;s relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. | [optional] 
**ScopeName** | [**V1ResourceQuotaScope**](V1ResourceQuotaScope.md) | The name of the scope that the selector applies to. | [optional] 
**Values** | **String[]** | An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch. +optional +listType&#x3D;atomic | [optional] 

## Examples

- Prepare the resource
```powershell
$V1ScopedResourceSelectorRequirement = Initialize-PSOpenAPIToolsV1ScopedResourceSelectorRequirement  -Operator null `
 -ScopeName null `
 -Values null
```

- Convert the resource to JSON
```powershell
$V1ScopedResourceSelectorRequirement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

