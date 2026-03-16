# LicensesLicenseInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Company** | **String** |  | [optional] 
**EnforcedAt** | **Int32** |  | [optional] 
**ExpiresAt** | **Int32** |  | [optional] 
**Nodes** | **Int32** |  | [optional] 
**OveruseStartedTimestamp** | **Int32** | unix timestamp when node usage exceeded available license limit | [optional] 
**Type** | [**LiblicensePortainerLicenseType**](LiblicensePortainerLicenseType.md) |  | [optional] 
**Valid** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LicensesLicenseInfo = Initialize-PSOpenAPIToolsLicensesLicenseInfo  -Company null `
 -EnforcedAt null `
 -ExpiresAt null `
 -Nodes null `
 -OveruseStartedTimestamp null `
 -Type null `
 -Valid null
```

- Convert the resource to JSON
```powershell
$LicensesLicenseInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

