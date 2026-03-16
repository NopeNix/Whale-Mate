# V1ObjectReference
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApiVersion** | **String** | API version of the referent. +optional | [optional] 
**FieldPath** | **String** | If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: &quot;&quot;spec.containers{name}&quot;&quot; (where &quot;&quot;name&quot;&quot; refers to the name of the container that triggered the event) or if no container name is specified &quot;&quot;spec.containers[2]&quot;&quot; (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object. TODO: this design is not final and this field is subject to change in the future. +optional | [optional] 
**Kind** | **String** | Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds +optional | [optional] 
**Name** | **String** | Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names +optional | [optional] 
**Namespace** | **String** | Namespace of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/ +optional | [optional] 
**ResourceVersion** | **String** | Specific resourceVersion to which this reference is made, if any. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency +optional | [optional] 
**Uid** | **String** | UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids +optional | [optional] 

## Examples

- Prepare the resource
```powershell
$V1ObjectReference = Initialize-PSOpenAPIToolsV1ObjectReference  -ApiVersion null `
 -FieldPath null `
 -Kind null `
 -Name null `
 -Namespace null `
 -ResourceVersion null `
 -Uid null
```

- Convert the resource to JSON
```powershell
$V1ObjectReference | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

