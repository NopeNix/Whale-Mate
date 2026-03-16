# ModelsK8sDashboard
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationsCount** | **Int32** |  | [optional] 
**ConfigMapsCount** | **Int32** |  | [optional] 
**IngressesCount** | **Int32** |  | [optional] 
**NamespacesCount** | **Int32** |  | [optional] 
**SecretsCount** | **Int32** |  | [optional] 
**ServicesCount** | **Int32** |  | [optional] 
**VolumesCount** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelsK8sDashboard = Initialize-PSOpenAPIToolsModelsK8sDashboard  -ApplicationsCount null `
 -ConfigMapsCount null `
 -IngressesCount null `
 -NamespacesCount null `
 -SecretsCount null `
 -ServicesCount null `
 -VolumesCount null
```

- Convert the resource to JSON
```powershell
$ModelsK8sDashboard | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

