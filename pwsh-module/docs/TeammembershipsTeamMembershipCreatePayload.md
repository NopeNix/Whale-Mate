# TeammembershipsTeamMembershipCreatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Role** | **Int32** | Role for the user inside the team (1 for leader and 2 for regular member) | 
**TeamID** | **Int32** | Team identifier | 
**UserID** | **Int32** | User identifier | 

## Examples

- Prepare the resource
```powershell
$TeammembershipsTeamMembershipCreatePayload = Initialize-PSOpenAPIToolsTeammembershipsTeamMembershipCreatePayload  -Role 1 `
 -TeamID 1 `
 -UserID 1
```

- Convert the resource to JSON
```powershell
$TeammembershipsTeamMembershipCreatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

