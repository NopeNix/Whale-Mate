# SslSslUpdatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cert** | **String** | SSL Certificates | [optional] 
**HTTPEnabled** | **Boolean** |  | [optional] 
**Key** | **String** |  | [optional] 
**ClientCert** | **String** | SSL Client Certificates | [optional] 

## Examples

- Prepare the resource
```powershell
$SslSslUpdatePayload = Initialize-PSOpenAPIToolsSslSslUpdatePayload  -Cert null `
 -HTTPEnabled null `
 -Key null `
 -ClientCert null
```

- Convert the resource to JSON
```powershell
$SslSslUpdatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

