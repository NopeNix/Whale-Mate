# PortainerLDAPSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AnonymousMode** | **Boolean** | Enable this option if the server is configured for Anonymous access. When enabled, ReaderDN and Password will not be used | [optional] 
**AutoCreateUsers** | **Boolean** | Automatically provision users and assign them to matching LDAP group names | [optional] 
**GroupSearchSettings** | [**PortainerLDAPGroupSearchSettings[]**](PortainerLDAPGroupSearchSettings.md) |  | [optional] 
**Password** | **String** | Password of the account that will be used to search users | [optional] 
**ReaderDN** | **String** | Account that will be used to search for users | [optional] 
**SearchSettings** | [**PortainerLDAPSearchSettings[]**](PortainerLDAPSearchSettings.md) |  | [optional] 
**StartTLS** | **Boolean** | Whether LDAP connection should use StartTLS | [optional] 
**TLSConfig** | [**PortainerTLSConfiguration**](PortainerTLSConfiguration.md) |  | [optional] 
**URL** | **String** | URL or IP address of the LDAP server | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerLDAPSettings = Initialize-PSOpenAPIToolsPortainerLDAPSettings  -AnonymousMode true `
 -AutoCreateUsers true `
 -GroupSearchSettings null `
 -Password readonly-password `
 -ReaderDN cn&#x3D;readonly-account,dc&#x3D;ldap,dc&#x3D;domain,dc&#x3D;tld `
 -SearchSettings null `
 -StartTLS true `
 -TLSConfig null `
 -URL myldap.domain.tld:389
```

- Convert the resource to JSON
```powershell
$PortainerLDAPSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

