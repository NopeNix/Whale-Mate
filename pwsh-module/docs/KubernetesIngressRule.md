# KubernetesIngressRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarHost** | **String** |  | [optional] 
**IP** | **String** |  | [optional] 
**Path** | **String** |  | [optional] 
**TLS** | [**KubernetesTLSInfo[]**](KubernetesTLSInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$KubernetesIngressRule = Initialize-PSOpenAPIToolsKubernetesIngressRule  -VarHost null `
 -IP null `
 -Path null `
 -TLS null
```

- Convert the resource to JSON
```powershell
$KubernetesIngressRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

