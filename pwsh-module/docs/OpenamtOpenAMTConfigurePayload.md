# OpenamtOpenAMTConfigurePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CertFileContent** | **String** |  | [optional] 
**CertFileName** | **String** |  | [optional] 
**CertFilePassword** | **String** |  | [optional] 
**DomainName** | **String** |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 
**MPSPassword** | **String** |  | [optional] 
**MPSServer** | **String** |  | [optional] 
**MPSUser** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OpenamtOpenAMTConfigurePayload = Initialize-PSOpenAPIToolsOpenamtOpenAMTConfigurePayload  -CertFileContent null `
 -CertFileName null `
 -CertFilePassword null `
 -DomainName null `
 -Enabled null `
 -MPSPassword null `
 -MPSServer null `
 -MPSUser null
```

- Convert the resource to JSON
```powershell
$OpenamtOpenAMTConfigurePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

