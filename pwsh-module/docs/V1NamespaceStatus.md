# V1NamespaceStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Conditions** | [**V1NamespaceCondition[]**](V1NamespaceCondition.md) | Represents the latest available observations of a namespace&#39;s current state. +optional +patchMergeKey&#x3D;type +patchStrategy&#x3D;merge +listType&#x3D;map +listMapKey&#x3D;type | [optional] 
**Phase** | [**V1NamespacePhase**](V1NamespacePhase.md) | Phase is the current lifecycle phase of the namespace. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/ +optional | [optional] 

## Examples

- Prepare the resource
```powershell
$V1NamespaceStatus = Initialize-PSOpenAPIToolsV1NamespaceStatus  -Conditions null `
 -Phase null
```

- Convert the resource to JSON
```powershell
$V1NamespaceStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

