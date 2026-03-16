# RegistriesRegistryPingPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Password** | **String** | Password used to authenticate against this registry | [optional] 
**TLS** | **Boolean** | Use TLS | [optional] 
**Type** | [**PortainerRegistryType**](PortainerRegistryType.md) | Registry Type. Valid values are:  1 (Quay.io),  2 (Azure container registry),  3 (custom registry),  4 (Gitlab registry),  5 (ProGet registry),  6 (DockerHub)  7 (ECR)  8 (Github registry) | 
**URL** | **String** | URL or IP address of the Docker registry | 
**Username** | **String** | Username used to authenticate against this registry | [optional] 

## Examples

- Prepare the resource
```powershell
$RegistriesRegistryPingPayload = Initialize-PSOpenAPIToolsRegistriesRegistryPingPayload  -Password registry_password `
 -TLS true `
 -Type null `
 -URL registry-1.docker.io `
 -Username registry_user
```

- Convert the resource to JSON
```powershell
$RegistriesRegistryPingPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

