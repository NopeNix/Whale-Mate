# PortainerLDAPGroupSearchSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GroupAttribute** | **String** | LDAP attribute which denotes the group membership | [optional] 
**GroupBaseDN** | **String** | The distinguished name of the element from which the LDAP server will search for groups | [optional] 
**GroupFilter** | **String** | The LDAP search filter used to select group elements, optional | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerLDAPGroupSearchSettings = Initialize-PSOpenAPIToolsPortainerLDAPGroupSearchSettings  -GroupAttribute member `
 -GroupBaseDN dc&#x3D;ldap,dc&#x3D;domain,dc&#x3D;tld `
 -GroupFilter (objectClass&#x3D;account
```

- Convert the resource to JSON
```powershell
$PortainerLDAPGroupSearchSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

