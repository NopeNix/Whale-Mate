# KubernetesPublishedPort
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IngressRules** | [**KubernetesIngressRule[]**](KubernetesIngressRule.md) |  | [optional] 
**Port** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$KubernetesPublishedPort = Initialize-PSOpenAPIToolsKubernetesPublishedPort  -IngressRules null `
 -Port null
```

- Convert the resource to JSON
```powershell
$KubernetesPublishedPort | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

