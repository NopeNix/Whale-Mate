# PortainereeLDAPKerberosSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Configuration** | **String** |  | [optional] 
**Password** | **String** |  | [optional] 
**Realm** | **String** |  | [optional] 
**Service** | **String** |  | [optional] 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeLDAPKerberosSettings = Initialize-PSOpenAPIToolsPortainereeLDAPKerberosSettings  -Configuration null `
 -Password null `
 -Realm null `
 -Service null `
 -Username null
```

- Convert the resource to JSON
```powershell
$PortainereeLDAPKerberosSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

