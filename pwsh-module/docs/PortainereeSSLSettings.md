# PortainereeSSLSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CaCertPath** | **String** |  | [optional] 
**CertPath** | **String** |  | [optional] 
**HttpEnabled** | **Boolean** |  | [optional] 
**KeyPath** | **String** |  | [optional] 
**SelfSigned** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeSSLSettings = Initialize-PSOpenAPIToolsPortainereeSSLSettings  -CaCertPath null `
 -CertPath null `
 -HttpEnabled null `
 -KeyPath null `
 -SelfSigned null
```

- Convert the resource to JSON
```powershell
$PortainereeSSLSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

