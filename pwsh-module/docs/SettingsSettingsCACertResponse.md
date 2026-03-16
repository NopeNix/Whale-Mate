# SettingsSettingsCACertResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MTLSCACertificate** | [**SslCertificate**](SslCertificate.md) | MTLSCACertificate is the X.509 Certificate of the MTLS CA Certificate | [optional] 

## Examples

- Prepare the resource
```powershell
$SettingsSettingsCACertResponse = Initialize-PSOpenAPIToolsSettingsSettingsCACertResponse  -MTLSCACertificate null
```

- Convert the resource to JSON
```powershell
$SettingsSettingsCACertResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

