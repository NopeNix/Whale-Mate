# PortainereeRole
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Authorizations** | **System.Collections.Hashtable** | Authorizations associated to a role | 
**Description** | **String** | Role description | 
**Id** | **Int32** | Role Identifier | 
**Name** | **String** | Role name | 
**Priority** | **Int32** |  | 
**Scope** | [**System.Collections.Hashtable**](Array.md) |  | 

## Examples

- Prepare the resource
```powershell
$PortainereeRole = Initialize-PSOpenAPIToolsPortainereeRole  -Authorizations null `
 -Description Read-only access of all resources in an environment(endpoint) `
 -Id 1 `
 -Name HelpDesk `
 -Priority null `
 -Scope null
```

- Convert the resource to JSON
```powershell
$PortainereeRole | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

