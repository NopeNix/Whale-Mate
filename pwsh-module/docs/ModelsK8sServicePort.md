# ModelsK8sServicePort
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**NodePort** | **Int32** |  | [optional] 
**Port** | **Int32** |  | [optional] 
**Protocol** | **String** |  | [optional] 
**TargetPort** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelsK8sServicePort = Initialize-PSOpenAPIToolsModelsK8sServicePort  -Name null `
 -NodePort null `
 -Port null `
 -Protocol null `
 -TargetPort null
```

- Convert the resource to JSON
```powershell
$ModelsK8sServicePort | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

