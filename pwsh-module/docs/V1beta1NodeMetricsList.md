# V1beta1NodeMetricsList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApiVersion** | **String** | APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources +optional | [optional] 
**Items** | [**V1beta1NodeMetrics[]**](V1beta1NodeMetrics.md) | List of node metrics. | [optional] 
**Kind** | **String** | Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds +optional | [optional] 
**Metadata** | [**V1ListMeta**](V1ListMeta.md) | Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds | [optional] 

## Examples

- Prepare the resource
```powershell
$V1beta1NodeMetricsList = Initialize-PSOpenAPIToolsV1beta1NodeMetricsList  -ApiVersion null `
 -Items null `
 -Kind null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$V1beta1NodeMetricsList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

