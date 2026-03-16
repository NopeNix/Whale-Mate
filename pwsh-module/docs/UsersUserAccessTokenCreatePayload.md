# UsersUserAccessTokenCreatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | 
**Password** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$UsersUserAccessTokenCreatePayload = Initialize-PSOpenAPIToolsUsersUserAccessTokenCreatePayload  -Description github-api-key `
 -Password password
```

- Convert the resource to JSON
```powershell
$UsersUserAccessTokenCreatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

