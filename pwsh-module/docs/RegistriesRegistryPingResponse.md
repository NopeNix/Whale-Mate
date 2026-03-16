# RegistriesRegistryPingResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | Message provides details about the connection test result | [optional] 
**Success** | **Boolean** | Success indicates if the registry connection was successful | [optional] 

## Examples

- Prepare the resource
```powershell
$RegistriesRegistryPingResponse = Initialize-PSOpenAPIToolsRegistriesRegistryPingResponse  -Message Registry connection successful `
 -Success true
```

- Convert the resource to JSON
```powershell
$RegistriesRegistryPingResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

