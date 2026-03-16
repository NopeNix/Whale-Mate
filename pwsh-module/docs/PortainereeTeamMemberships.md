# PortainereeTeamMemberships
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdminAutoPopulate** | **Boolean** |  | [optional] 
**AdminGroupClaimsRegexList** | **String[]** |  | [optional] 
**OAuthClaimMappings** | [**PortainereeOAuthClaimMappings[]**](PortainereeOAuthClaimMappings.md) |  | [optional] 
**OAuthClaimName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeTeamMemberships = Initialize-PSOpenAPIToolsPortainereeTeamMemberships  -AdminAutoPopulate null `
 -AdminGroupClaimsRegexList null `
 -OAuthClaimMappings null `
 -OAuthClaimName null
```

- Convert the resource to JSON
```powershell
$PortainereeTeamMemberships | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

