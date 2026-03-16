# PortainereeLDAPSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdminAutoPopulate** | **Boolean** | Whether auto admin population is switched on or not | [optional] 
**AdminGroupSearchSettings** | [**PortainerLDAPGroupSearchSettings[]**](PortainerLDAPGroupSearchSettings.md) |  | [optional] 
**AdminGroups** | **String[]** | Saved admin group list, the user will be populated as an admin role if any user group matches the record in the list | [optional] 
**AnonymousMode** | **Boolean** | Enable this option if the server is configured for Anonymous access. When enabled, ReaderDN and Password will not be used | [optional] 
**AutoCreateUsers** | **Boolean** | Automatically provision users and assign them to matching LDAP group names | [optional] 
**GroupSearchSettings** | [**PortainerLDAPGroupSearchSettings[]**](PortainerLDAPGroupSearchSettings.md) |  | [optional] 
**Kerberos** | [**PortainereeLDAPKerberosSettings**](PortainereeLDAPKerberosSettings.md) | Kerberos settings | [optional] 
**Password** | **String** | Password of the account that will be used to search users | [optional] 
**ReaderDN** | **String** | Account that will be used to search for users | [optional] 
**SearchSettings** | [**PortainerLDAPSearchSettings[]**](PortainerLDAPSearchSettings.md) |  | [optional] 
**ServerType** | [**PortainereeLDAPServerType**](PortainereeLDAPServerType.md) |  | [optional] 
**StartTLS** | **Boolean** | Whether LDAP connection should use StartTLS | [optional] 
**TLSConfig** | [**PortainerTLSConfiguration**](PortainerTLSConfiguration.md) |  | [optional] 
**URL** | **String** | Deprecated | [optional] 
**URLs** | **String[]** | URLs or IP addresses of the LDAP server | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeLDAPSettings = Initialize-PSOpenAPIToolsPortainereeLDAPSettings  -AdminAutoPopulate true `
 -AdminGroupSearchSettings null `
 -AdminGroups [[&#39;manager&#39;, &#39;operator&#39;]] `
 -AnonymousMode true `
 -AutoCreateUsers true `
 -GroupSearchSettings null `
 -Kerberos null `
 -Password readonly-password `
 -ReaderDN cn&#x3D;readonly-account,dc&#x3D;ldap,dc&#x3D;domain,dc&#x3D;tld `
 -SearchSettings null `
 -ServerType null `
 -StartTLS true `
 -TLSConfig null `
 -URL null `
 -URLs null
```

- Convert the resource to JSON
```powershell
$PortainereeLDAPSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

