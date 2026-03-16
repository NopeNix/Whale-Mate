# RegistriesRegistryCreatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Authentication** | **Boolean** | Is authentication against this registry enabled | 
**BaseURL** | **String** | BaseURL required for ProGet registry | [optional] 
**Ecr** | [**PortainerEcrData**](PortainerEcrData.md) | ECR specific details, required when type &#x3D; 7 | [optional] 
**Github** | [**PortainereeGithubRegistryData**](PortainereeGithubRegistryData.md) | Github specific details, required when type &#x3D; 8 | [optional] 
**Gitlab** | [**PortainerGitlabRegistryData**](PortainerGitlabRegistryData.md) | Gitlab specific details, required when type &#x3D; 4 | [optional] 
**Name** | **String** | Name that will be used to identify this registry | 
**Password** | **String** | Password used to authenticate against this registry. required when Authentication is true | [optional] 
**Quay** | [**PortainerQuayRegistryData**](PortainerQuayRegistryData.md) | Quay specific details, required when type &#x3D; 1 | [optional] 
**TLS** | **Boolean** | Use TLS | [optional] 
**Type** | [**PortainerRegistryType**](PortainerRegistryType.md) | Registry Type. Valid values are:  1 (Quay.io),  2 (Azure container registry),  3 (custom registry),  4 (Gitlab registry),  5 (ProGet registry),  6 (DockerHub)  7 (ECR)  8 (Github registry) | 
**URL** | **String** | URL or IP address of the Docker registry | 
**Username** | **String** | Username used to authenticate against this registry. Required when Authentication is true | [optional] 

## Examples

- Prepare the resource
```powershell
$RegistriesRegistryCreatePayload = Initialize-PSOpenAPIToolsRegistriesRegistryCreatePayload  -Authentication false `
 -BaseURL registry.mydomain.tld:2375 `
 -Ecr null `
 -Github null `
 -Gitlab null `
 -Name my-registry `
 -Password registry_password `
 -Quay null `
 -TLS true `
 -Type null `
 -URL registry.mydomain.tld:2375/feed `
 -Username registry_user
```

- Convert the resource to JSON
```powershell
$RegistriesRegistryCreatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

