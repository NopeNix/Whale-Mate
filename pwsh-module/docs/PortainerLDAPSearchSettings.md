# PortainerLDAPSearchSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BaseDN** | **String** | The distinguished name of the element from which the LDAP server will search for users | [optional] 
**VarFilter** | **String** | Optional LDAP search filter used to select user elements | [optional] 
**UserNameAttribute** | **String** | LDAP attribute which denotes the username | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerLDAPSearchSettings = Initialize-PSOpenAPIToolsPortainerLDAPSearchSettings  -BaseDN dc&#x3D;ldap,dc&#x3D;domain,dc&#x3D;tld `
 -VarFilter (objectClass&#x3D;account) `
 -UserNameAttribute uid
```

- Convert the resource to JSON
```powershell
$PortainerLDAPSearchSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

