# V1EnvFromSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConfigMapRef** | [**V1ConfigMapEnvSource**](V1ConfigMapEnvSource.md) | The ConfigMap to select from +optional | [optional] 
**Prefix** | **String** | Optional text to prepend to the name of each environment variable. May consist of any printable ASCII characters except &#39;&#x3D;&#39;. +optional | [optional] 
**SecretRef** | [**V1SecretEnvSource**](V1SecretEnvSource.md) | The Secret to select from +optional | [optional] 

## Examples

- Prepare the resource
```powershell
$V1EnvFromSource = Initialize-PSOpenAPIToolsV1EnvFromSource  -ConfigMapRef null `
 -Prefix null `
 -SecretRef null
```

- Convert the resource to JSON
```powershell
$V1EnvFromSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

