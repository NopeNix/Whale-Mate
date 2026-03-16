# V1ConfigMapKeySelector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** | The key to select. | [optional] 
**Name** | **String** | Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names +optional +default&#x3D;&quot;&quot;&quot;&quot; +kubebuilder:default&#x3D;&quot;&quot;&quot;&quot; TODO: Drop &#x60;kubebuilder:default&#x60; when controller-gen doesn&#39;t need it https://github.com/kubernetes-sigs/kubebuilder/issues/3896. | [optional] 
**Optional** | **Boolean** | Specify whether the ConfigMap or its key must be defined +optional | [optional] 

## Examples

- Prepare the resource
```powershell
$V1ConfigMapKeySelector = Initialize-PSOpenAPIToolsV1ConfigMapKeySelector  -Key null `
 -Name null `
 -Optional null
```

- Convert the resource to JSON
```powershell
$V1ConfigMapKeySelector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

