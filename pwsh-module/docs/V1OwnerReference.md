# V1OwnerReference
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApiVersion** | **String** | API version of the referent. | [optional] 
**BlockOwnerDeletion** | **Boolean** | If true, AND if the owner has the &quot;&quot;foregroundDeletion&quot;&quot; finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. See https://kubernetes.io/docs/concepts/architecture/garbage-collection/#foreground-deletion for how the garbage collector interacts with this field and enforces the foreground deletion. Defaults to false. To set this field, a user needs &quot;&quot;delete&quot;&quot; permission of the owner, otherwise 422 (Unprocessable Entity) will be returned. +optional | [optional] 
**Controller** | **Boolean** | If true, this reference points to the managing controller. +optional | [optional] 
**Kind** | **String** | Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds | [optional] 
**Name** | **String** | Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names | [optional] 
**Uid** | **String** | UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids | [optional] 

## Examples

- Prepare the resource
```powershell
$V1OwnerReference = Initialize-PSOpenAPIToolsV1OwnerReference  -ApiVersion null `
 -BlockOwnerDeletion null `
 -Controller null `
 -Kind null `
 -Name null `
 -Uid null
```

- Convert the resource to JSON
```powershell
$V1OwnerReference | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

