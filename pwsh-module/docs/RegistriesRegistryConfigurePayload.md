# RegistriesRegistryConfigurePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Authentication** | **Boolean** | Is authentication against this registry enabled | 
**Password** | **String** | Password used to authenticate against this registry. required when Authentication is true | [optional] 
**Region** | **String** | ECR region | [optional] 
**TLS** | **Boolean** | Use TLS | [optional] 
**TLSCACertFile** | **Int32[]** | The TLS CA certificate file | [optional] 
**TLSCertFile** | **Int32[]** | The TLS client certificate file | [optional] 
**TLSKeyFile** | **Int32[]** | The TLS client key file | [optional] 
**TLSSkipVerify** | **Boolean** | Skip the verification of the server TLS certificate | [optional] 
**Username** | **String** | Username used to authenticate against this registry. Required when Authentication is true | [optional] 

## Examples

- Prepare the resource
```powershell
$RegistriesRegistryConfigurePayload = Initialize-PSOpenAPIToolsRegistriesRegistryConfigurePayload  -Authentication false `
 -Password registry_password `
 -Region null `
 -TLS true `
 -TLSCACertFile null `
 -TLSCertFile null `
 -TLSKeyFile null `
 -TLSSkipVerify false `
 -Username registry_user
```

- Convert the resource to JSON
```powershell
$RegistriesRegistryConfigurePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

