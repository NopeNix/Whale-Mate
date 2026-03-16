# LdapTestLoginPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LDAPSettings** | [**PortainereeLDAPSettings**](PortainereeLDAPSettings.md) |  | [optional] 
**Password** | **String** |  | [optional] 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LdapTestLoginPayload = Initialize-PSOpenAPIToolsLdapTestLoginPayload  -LDAPSettings null `
 -Password null `
 -Username null
```

- Convert the resource to JSON
```powershell
$LdapTestLoginPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

