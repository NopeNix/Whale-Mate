# K8sIoApiRbacV1Subject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApiGroup** | **String** | APIGroup holds the API group of the referenced subject. Defaults to &quot;&quot;&quot;&quot; for ServiceAccount subjects. Defaults to &quot;&quot;rbac.authorization.k8s.io&quot;&quot; for User and Group subjects. +optional | [optional] 
**Kind** | **String** | Kind of object being referenced. Values defined by this API group are &quot;&quot;User&quot;&quot;, &quot;&quot;Group&quot;&quot;, and &quot;&quot;ServiceAccount&quot;&quot;. If the Authorizer does not recognized the kind value, the Authorizer should report an error. | [optional] 
**Name** | **String** | Name of the object being referenced. | [optional] 
**Namespace** | **String** | Namespace of the referenced object.  If the object kind is non-namespace, such as &quot;&quot;User&quot;&quot; or &quot;&quot;Group&quot;&quot;, and this value is not empty the Authorizer should report an error. +optional | [optional] 

## Examples

- Prepare the resource
```powershell
$K8sIoApiRbacV1Subject = Initialize-PSOpenAPIToolsK8sIoApiRbacV1Subject  -ApiGroup null `
 -Kind null `
 -Name null `
 -Namespace null
```

- Convert the resource to JSON
```powershell
$K8sIoApiRbacV1Subject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

