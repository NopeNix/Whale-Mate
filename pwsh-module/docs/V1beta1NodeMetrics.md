# V1beta1NodeMetrics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApiVersion** | **String** | APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources +optional | [optional] 
**Kind** | **String** | Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds +optional | [optional] 
**Metadata** | [**V1ObjectMeta**](V1ObjectMeta.md) | Standard object&#39;s metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata +optional | [optional] 
**Timestamp** | **String** | The following fields define time interval from which metrics were collected from the interval [Timestamp-Window, Timestamp]. | [optional] 
**Usage** | [**System.Collections.Hashtable**](ResourceQuantity.md) | The memory usage is the memory working set. | [optional] 
**Window** | [**V1Duration**](V1Duration.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$V1beta1NodeMetrics = Initialize-PSOpenAPIToolsV1beta1NodeMetrics  -ApiVersion null `
 -Kind null `
 -Metadata null `
 -Timestamp null `
 -Usage null `
 -Window null
```

- Convert the resource to JSON
```powershell
$V1beta1NodeMetrics | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

