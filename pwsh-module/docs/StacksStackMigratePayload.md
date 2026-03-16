# StacksStackMigratePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EndpointID** | **Int32** |  | 
**Name** | **String** |  | [optional] 
**SwarmID** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StacksStackMigratePayload = Initialize-PSOpenAPIToolsStacksStackMigratePayload  -EndpointID 2 `
 -Name new-stack `
 -SwarmID jpofkc0i9uo9wtx1zesuk649w
```

- Convert the resource to JSON
```powershell
$StacksStackMigratePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

