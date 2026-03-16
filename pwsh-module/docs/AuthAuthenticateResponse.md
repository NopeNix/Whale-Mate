# AuthAuthenticateResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Jwt** | **String** | JWT token used to authenticate against the API | [optional] 

## Examples

- Prepare the resource
```powershell
$AuthAuthenticateResponse = Initialize-PSOpenAPIToolsAuthAuthenticateResponse  -Jwt abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzAB
```

- Convert the resource to JSON
```powershell
$AuthAuthenticateResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

