# HelmInstallChartPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Atomic** | **Boolean** |  | [optional] 
**Chart** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**RegistryId** | **Int32** |  | [optional] 
**Repo** | **String** |  | [optional] 
**Values** | **String** |  | [optional] 
**Version** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HelmInstallChartPayload = Initialize-PSOpenAPIToolsHelmInstallChartPayload  -Atomic null `
 -Chart null `
 -Name null `
 -Namespace null `
 -RegistryId null `
 -Repo null `
 -Values null `
 -Version null
```

- Convert the resource to JSON
```powershell
$HelmInstallChartPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

