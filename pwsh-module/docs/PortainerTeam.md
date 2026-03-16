# PortainerTeam
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** | Team Identifier | [optional] 
**Name** | **String** | Team name | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerTeam = Initialize-PSOpenAPIToolsPortainerTeam  -Id 1 `
 -Name developers
```

- Convert the resource to JSON
```powershell
$PortainerTeam | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

