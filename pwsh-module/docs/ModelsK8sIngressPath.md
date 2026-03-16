# ModelsK8sIngressPath
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HasService** | **Boolean** |  | [optional] 
**VarHost** | **String** |  | [optional] 
**IngressName** | **String** |  | [optional] 
**Path** | **String** |  | [optional] 
**PathType** | **String** |  | [optional] 
**Port** | **Int32** |  | [optional] 
**ServiceName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelsK8sIngressPath = Initialize-PSOpenAPIToolsModelsK8sIngressPath  -HasService null `
 -VarHost null `
 -IngressName null `
 -Path null `
 -PathType null `
 -Port null `
 -ServiceName null
```

- Convert the resource to JSON
```powershell
$ModelsK8sIngressPath | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

