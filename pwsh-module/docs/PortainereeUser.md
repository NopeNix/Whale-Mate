# PortainereeUser
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EndpointAuthorizations** | [**System.Collections.Hashtable**](Map.md) | Deprecated: in 2.32, no longer populated - see separate dataservice for UserEndpointAuthorizations | [optional] 
**Id** | **Int32** | User Identifier | [optional] 
**PortainerAuthorizations** | **System.Collections.Hashtable** |  | [optional] 
**Role** | [**PortainerUserRole**](PortainerUserRole.md) | User role (1 for administrator account and 2 for regular account) | [optional] 
**ThemeSettings** | [**PortainereeUserThemeSettings**](PortainereeUserThemeSettings.md) |  | [optional] 
**TokenIssueAt** | **Int32** |  | [optional] 
**UseCache** | **Boolean** |  | [optional] 
**UserTheme** | **String** | Deprecated: xxxx | [optional] 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeUser = Initialize-PSOpenAPIToolsPortainereeUser  -EndpointAuthorizations null `
 -Id 1 `
 -PortainerAuthorizations null `
 -Role null `
 -ThemeSettings null `
 -TokenIssueAt 1639408208 `
 -UseCache true `
 -UserTheme dark `
 -Username bob
```

- Convert the resource to JSON
```powershell
$PortainereeUser | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

