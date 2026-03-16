# TeamsTeamCreatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name | 
**TeamLeaders** | **Int32[]** | TeamLeaders | [optional] 

## Examples

- Prepare the resource
```powershell
$TeamsTeamCreatePayload = Initialize-PSOpenAPIToolsTeamsTeamCreatePayload  -Name developers `
 -TeamLeaders [3, 5]
```

- Convert the resource to JSON
```powershell
$TeamsTeamCreatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

