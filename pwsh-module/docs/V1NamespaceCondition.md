# V1NamespaceCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LastTransitionTime** | **String** | Last time the condition transitioned from one status to another. +optional | [optional] 
**Message** | **String** | Human-readable message indicating details about last transition. +optional | [optional] 
**Reason** | **String** | Unique, one-word, CamelCase reason for the condition&#39;s last transition. +optional | [optional] 
**Status** | [**K8sIoApiCoreV1ConditionStatus**](K8sIoApiCoreV1ConditionStatus.md) | Status of the condition, one of True, False, Unknown. | [optional] 
**Type** | [**V1NamespaceConditionType**](V1NamespaceConditionType.md) | Type of namespace controller condition. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1NamespaceCondition = Initialize-PSOpenAPIToolsV1NamespaceCondition  -LastTransitionTime null `
 -Message null `
 -Reason null `
 -Status null `
 -Type null
```

- Convert the resource to JSON
```powershell
$V1NamespaceCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

