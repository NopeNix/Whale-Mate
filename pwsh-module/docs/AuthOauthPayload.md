# AuthOauthPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **String** | OAuth code returned from OAuth Provided | [optional] 

## Examples

- Prepare the resource
```powershell
$AuthOauthPayload = Initialize-PSOpenAPIToolsAuthOauthPayload  -Code null
```

- Convert the resource to JSON
```powershell
$AuthOauthPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

