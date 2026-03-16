# V1EnvVarSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConfigMapKeyRef** | [**V1ConfigMapKeySelector**](V1ConfigMapKeySelector.md) | Selects a key of a ConfigMap. +optional | [optional] 
**FieldRef** | [**V1ObjectFieldSelector**](V1ObjectFieldSelector.md) | Selects a field of the pod: supports metadata.name, metadata.namespace, &#x60;metadata.labels[&#39;&lt;KEY&gt;&#39;]&#x60;, &#x60;metadata.annotations[&#39;&lt;KEY&gt;&#39;]&#x60;, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs. +optional | [optional] 
**FileKeyRef** | [**V1FileKeySelector**](V1FileKeySelector.md) | FileKeyRef selects a key of the env file. Requires the EnvFiles feature gate to be enabled.  +featureGate&#x3D;EnvFiles +optional | [optional] 
**ResourceFieldRef** | [**V1ResourceFieldSelector**](V1ResourceFieldSelector.md) | Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported. +optional | [optional] 
**SecretKeyRef** | [**V1SecretKeySelector**](V1SecretKeySelector.md) | Selects a key of a secret in the pod&#39;s namespace +optional | [optional] 

## Examples

- Prepare the resource
```powershell
$V1EnvVarSource = Initialize-PSOpenAPIToolsV1EnvVarSource  -ConfigMapKeyRef null `
 -FieldRef null `
 -FileKeyRef null `
 -ResourceFieldRef null `
 -SecretKeyRef null
```

- Convert the resource to JSON
```powershell
$V1EnvVarSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

