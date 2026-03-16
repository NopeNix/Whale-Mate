# UsersAccessTokenResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApiKey** | [**PortainerAPIKey**](PortainerAPIKey.md) |  | [optional] 
**RawAPIKey** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UsersAccessTokenResponse = Initialize-PSOpenAPIToolsUsersAccessTokenResponse  -ApiKey null `
 -RawAPIKey null
```

- Convert the resource to JSON
```powershell
$UsersAccessTokenResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

