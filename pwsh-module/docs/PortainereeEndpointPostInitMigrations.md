# PortainereeEndpointPostInitMigrations
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MigrateGPUs** | **Boolean** |  | [optional] 
**MigrateGateKeeper** | **Boolean** |  | [optional] 
**MigrateIngresses** | **Boolean** |  | [optional] 
**MigrateSecretOwners** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeEndpointPostInitMigrations = Initialize-PSOpenAPIToolsPortainereeEndpointPostInitMigrations  -MigrateGPUs null `
 -MigrateGateKeeper null `
 -MigrateIngresses null `
 -MigrateSecretOwners null
```

- Convert the resource to JSON
```powershell
$PortainereeEndpointPostInitMigrations | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

