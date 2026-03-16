# UsersThemePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Color** | **String** | Color represents the color theme of the UI | [optional] 
**SubtleUpgradeButton** | **Boolean** | SubtleUpgradeButton indicates if the upgrade banner should be displayed in a subtle way | [optional] 

## Examples

- Prepare the resource
```powershell
$UsersThemePayload = Initialize-PSOpenAPIToolsUsersThemePayload  -Color dark `
 -SubtleUpgradeButton false
```

- Convert the resource to JSON
```powershell
$UsersThemePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

