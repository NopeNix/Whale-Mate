# PortainerOpenAMTConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CertFileContent** | **String** |  | [optional] 
**CertFileName** | **String** |  | [optional] 
**CertFilePassword** | **String** |  | [optional] 
**DomainName** | **String** |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 
**MpsPassword** | **String** |  | [optional] 
**MpsServer** | **String** |  | [optional] 
**MpsToken** | **String** | retrieved from API | [optional] 
**MpsUser** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerOpenAMTConfiguration = Initialize-PSOpenAPIToolsPortainerOpenAMTConfiguration  -CertFileContent null `
 -CertFileName null `
 -CertFilePassword null `
 -DomainName null `
 -Enabled null `
 -MpsPassword null `
 -MpsServer null `
 -MpsToken null `
 -MpsUser null
```

- Convert the resource to JSON
```powershell
$PortainerOpenAMTConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

