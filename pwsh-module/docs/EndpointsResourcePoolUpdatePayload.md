# EndpointsResourcePoolUpdatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TeamsToAdd** | **Int32[]** |  | [optional] 
**TeamsToRemove** | **Int32[]** |  | [optional] 
**UsersToAdd** | **Int32[]** |  | [optional] 
**UsersToRemove** | **Int32[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointsResourcePoolUpdatePayload = Initialize-PSOpenAPIToolsEndpointsResourcePoolUpdatePayload  -TeamsToAdd null `
 -TeamsToRemove null `
 -UsersToAdd null `
 -UsersToRemove null
```

- Convert the resource to JSON
```powershell
$EndpointsResourcePoolUpdatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

