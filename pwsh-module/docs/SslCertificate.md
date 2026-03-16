# SslCertificate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthorityKeyId** | **String** |  | [optional] 
**CRLDistributionPoints** | **String[]** |  | [optional] 
**ExtendedKeyUsages** | **String[]** |  | [optional] 
**IsCertificateAuthority** | **Boolean** |  | [optional] 
**Issuer** | [**SslName**](SslName.md) |  | [optional] 
**IssuingCertificateURLs** | **String[]** |  | [optional] 
**KeyUsages** | **String[]** |  | [optional] 
**OCSPServers** | **String[]** |  | [optional] 
**Policies** | **String[]** |  | [optional] 
**PublicKey** | [**SslPublicKey**](SslPublicKey.md) |  | [optional] 
**SHA256Fingerprint** | **String** |  | [optional] 
**SerialNumber** | **String** |  | [optional] 
**SignatureAlgorithm** | **String** |  | [optional] 
**Subject** | [**SslName**](SslName.md) |  | [optional] 
**SubjectAltDNSNames** | **String[]** |  | [optional] 
**SubjectAltEmailAddresses** | **String[]** |  | [optional] 
**SubjectAltIpAddresses** | **String[]** |  | [optional] 
**SubjectAltURIs** | **String[]** |  | [optional] 
**SubjectKeyId** | **String** |  | [optional] 
**ValidNotAfter** | **String** |  | [optional] 
**ValidNotBefore** | **String** |  | [optional] 
**Version** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SslCertificate = Initialize-PSOpenAPIToolsSslCertificate  -AuthorityKeyId null `
 -CRLDistributionPoints null `
 -ExtendedKeyUsages null `
 -IsCertificateAuthority null `
 -Issuer null `
 -IssuingCertificateURLs null `
 -KeyUsages null `
 -OCSPServers null `
 -Policies null `
 -PublicKey null `
 -SHA256Fingerprint null `
 -SerialNumber null `
 -SignatureAlgorithm null `
 -Subject null `
 -SubjectAltDNSNames null `
 -SubjectAltEmailAddresses null `
 -SubjectAltIpAddresses null `
 -SubjectAltURIs null `
 -SubjectKeyId null `
 -ValidNotAfter null `
 -ValidNotBefore null `
 -Version null
```

- Convert the resource to JSON
```powershell
$SslCertificate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

