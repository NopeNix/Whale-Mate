# AuthAuthenticatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApiKey** | **String** | API Key | 
**Password** | **String** | Password | 
**Username** | **String** | Username | 

## Examples

- Prepare the resource
```powershell
$AuthAuthenticatePayload = Initialize-PSOpenAPIToolsAuthAuthenticatePayload  -ApiKey 1234567890 `
 -Password mypassword `
 -Username admin
```

- Convert the resource to JSON
```powershell
$AuthAuthenticatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

