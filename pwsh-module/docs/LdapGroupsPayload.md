# LdapGroupsPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LDAPSettings** | [**PortainereeLDAPSettings**](PortainereeLDAPSettings.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LdapGroupsPayload = Initialize-PSOpenAPIToolsLdapGroupsPayload  -LDAPSettings null
```

- Convert the resource to JSON
```powershell
$LdapGroupsPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

