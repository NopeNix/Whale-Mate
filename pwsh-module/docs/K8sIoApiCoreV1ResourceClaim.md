# K8sIoApiCoreV1ResourceClaim
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name must match the name of one entry in pod.spec.resourceClaims of the Pod where this field is used. It makes that resource available inside a container. | [optional] 
**Request** | **String** | Request is the name chosen for a request in the referenced claim. If empty, everything from the claim is made available, otherwise only the result of this request.  +optional | [optional] 

## Examples

- Prepare the resource
```powershell
$K8sIoApiCoreV1ResourceClaim = Initialize-PSOpenAPIToolsK8sIoApiCoreV1ResourceClaim  -Name null `
 -Request null
```

- Convert the resource to JSON
```powershell
$K8sIoApiCoreV1ResourceClaim | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

