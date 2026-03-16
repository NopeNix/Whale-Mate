# PortainereeMTLSSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CaCertFile** | **String** | CaCertFile is the path to the mTLS CA certificate file | [optional] 
**CertFile** | **String** | CertFile is the path to the mTLS certificate file | [optional] 
**KeyFile** | **String** | KeyFile is the path to the mTLS key file | [optional] 
**UseSeparateCert** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeMTLSSettings = Initialize-PSOpenAPIToolsPortainereeMTLSSettings  -CaCertFile null `
 -CertFile null `
 -KeyFile null `
 -UseSeparateCert null
```

- Convert the resource to JSON
```powershell
$PortainereeMTLSSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

