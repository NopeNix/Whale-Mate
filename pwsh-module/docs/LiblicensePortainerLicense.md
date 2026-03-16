# LiblicensePortainerLicense
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Company** | **String** |  | [optional] 
**Created** | **Int32** |  | [optional] 
**Email** | **String** |  | [optional] 
**ExpiresAfter** | **Int32** |  | [optional] 
**ExpiresAt** | **Int32** |  | [optional] 
**FirstCheckin** | **Int32** |  | [optional] 
**Id** | **String** |  | [optional] 
**LastCheckin** | **Int32** |  | [optional] 
**LicenseKey** | **String** |  | [optional] 
**MultiCheckinCount** | **Int32** |  | [optional] 
**MultiuseInstancesCount** | **Int32** |  | [optional] 
**Nodes** | **Int32** |  | [optional] 
**ProductEdition** | [**LiblicenseProductEdition**](LiblicenseProductEdition.md) | ProductEdition was created originally with plans on having a seperate portainer product for Enterprise users and Business users with differing features. This didn&#39;t wind up coming about, but may still serve useful in the future if we need to issue keys for a different product entirely. Originally, the ProductEdition was used as the prefix for generating license keys, but in practice most people thought it was the &quot;&quot;version&quot;&quot; due to us having the original extension licenses which can be thought of as the true version 1 licenses. | [optional] 
**RedisRef** | **String** |  | [optional] 
**Reference** | **String** |  | [optional] 
**Revoked** | **Boolean** |  | [optional] 
**RevokedAt** | **Int32** |  | [optional] 
**Type** | [**LiblicensePortainerLicenseType**](LiblicensePortainerLicenseType.md) | Type is used to distinguish different kinds of licenses, trial licenses, enterprise subscriptions | [optional] 
**UniqueId** | **String** |  | [optional] 
**Version** | **Int32** | Version indicates which key should be used to encode/decode the license string. | [optional] 

## Examples

- Prepare the resource
```powershell
$LiblicensePortainerLicense = Initialize-PSOpenAPIToolsLiblicensePortainerLicense  -Company null `
 -Created null `
 -Email null `
 -ExpiresAfter null `
 -ExpiresAt null `
 -FirstCheckin null `
 -Id null `
 -LastCheckin null `
 -LicenseKey null `
 -MultiCheckinCount null `
 -MultiuseInstancesCount null `
 -Nodes null `
 -ProductEdition null `
 -RedisRef null `
 -Reference null `
 -Revoked null `
 -RevokedAt null `
 -Type null `
 -UniqueId null `
 -Version null
```

- Convert the resource to JSON
```powershell
$LiblicensePortainerLicense | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

