# PortainerEndpointPostInitMigrations
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MigrateGPUs** | **Boolean** |  | [optional] 
**MigrateIngresses** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerEndpointPostInitMigrations = Initialize-PSOpenAPIToolsPortainerEndpointPostInitMigrations  -MigrateGPUs null `
 -MigrateIngresses null
```

- Convert the resource to JSON
```powershell
$PortainerEndpointPostInitMigrations | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

