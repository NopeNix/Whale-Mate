# ModelsPublishedPort
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IngressRules** | [**ModelsIngressRule[]**](ModelsIngressRule.md) |  | [optional] 
**Port** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelsPublishedPort = Initialize-PSOpenAPIToolsModelsPublishedPort  -IngressRules null `
 -Port null
```

- Convert the resource to JSON
```powershell
$ModelsPublishedPort | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

