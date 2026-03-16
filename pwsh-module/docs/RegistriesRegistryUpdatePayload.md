# RegistriesRegistryUpdatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Authentication** | **Boolean** |  | 
**BaseURL** | **String** |  | [optional] 
**Ecr** | [**PortainerEcrData**](PortainerEcrData.md) |  | [optional] 
**Github** | [**PortainereeGithubRegistryData**](PortainereeGithubRegistryData.md) |  | [optional] 
**Name** | **String** |  | 
**Password** | **String** |  | [optional] 
**Quay** | [**PortainerQuayRegistryData**](PortainerQuayRegistryData.md) |  | [optional] 
**RegistryAccesses** | [**System.Collections.Hashtable**](PortainerRegistryAccessPolicies.md) |  | [optional] 
**URL** | **String** |  | 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RegistriesRegistryUpdatePayload = Initialize-PSOpenAPIToolsRegistriesRegistryUpdatePayload  -Authentication false `
 -BaseURL registry.mydomain.tld:2375 `
 -Ecr null `
 -Github null `
 -Name my-registry `
 -Password registry_password `
 -Quay null `
 -RegistryAccesses null `
 -URL registry.mydomain.tld:2375/feed `
 -Username registry_user
```

- Convert the resource to JSON
```powershell
$RegistriesRegistryUpdatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

