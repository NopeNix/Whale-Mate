# PortainerTLSConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TLS** | **Boolean** | Use TLS | [optional] 
**TLSCACert** | **String** | Path to the TLS CA certificate file | [optional] 
**TLSCert** | **String** | Path to the TLS client certificate file | [optional] 
**TLSKey** | **String** | Path to the TLS client key file | [optional] 
**TLSSkipVerify** | **Boolean** | Skip the verification of the server TLS certificate | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerTLSConfiguration = Initialize-PSOpenAPIToolsPortainerTLSConfiguration  -TLS true `
 -TLSCACert /data/tls/ca.pem `
 -TLSCert /data/tls/cert.pem `
 -TLSKey /data/tls/key.pem `
 -TLSSkipVerify false
```

- Convert the resource to JSON
```powershell
$PortainerTLSConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

