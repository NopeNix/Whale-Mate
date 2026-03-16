# V1ResourceRequirements
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Claims** | [**K8sIoApiCoreV1ResourceClaim[]**](K8sIoApiCoreV1ResourceClaim.md) | Claims lists the names of resources, defined in spec.resourceClaims, that are used by this container.  This field depends on the DynamicResourceAllocation feature gate.  This field is immutable. It can only be set for containers.  +listType&#x3D;map +listMapKey&#x3D;name +featureGate&#x3D;DynamicResourceAllocation +optional | [optional] 
**Limits** | [**System.Collections.Hashtable**](ResourceQuantity.md) | Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/ +optional | [optional] 
**Requests** | [**System.Collections.Hashtable**](ResourceQuantity.md) | Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. Requests cannot exceed Limits. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/ +optional | [optional] 

## Examples

- Prepare the resource
```powershell
$V1ResourceRequirements = Initialize-PSOpenAPIToolsV1ResourceRequirements  -Claims null `
 -Limits null `
 -Requests null
```

- Convert the resource to JSON
```powershell
$V1ResourceRequirements | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

