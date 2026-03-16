# SettingsMTLSPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CaCert** | **String** |  | [optional] 
**Cert** | **String** |  | [optional] 
**Key** | **String** |  | [optional] 
**UseSeparateCert** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SettingsMTLSPayload = Initialize-PSOpenAPIToolsSettingsMTLSPayload  -CaCert null `
 -Cert null `
 -Key null `
 -UseSeparateCert null
```

- Convert the resource to JSON
```powershell
$SettingsMTLSPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

