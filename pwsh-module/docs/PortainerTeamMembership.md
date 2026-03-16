# PortainerTeamMembership
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** | Membership Identifier | [optional] 
**Role** | [**PortainerMembershipRole**](PortainerMembershipRole.md) | Team role (1 for team leader and 2 for team member) | [optional] 
**TeamID** | **Int32** | Team identifier | [optional] 
**UserID** | **Int32** | User identifier | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerTeamMembership = Initialize-PSOpenAPIToolsPortainerTeamMembership  -Id 1 `
 -Role null `
 -TeamID 1 `
 -UserID 1
```

- Convert the resource to JSON
```powershell
$PortainerTeamMembership | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

