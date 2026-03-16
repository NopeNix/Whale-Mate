# EdgestacksDeployerOptionsPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Prune** | **Boolean** |  | [optional] 
**RemoveVolumes** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EdgestacksDeployerOptionsPayload = Initialize-PSOpenAPIToolsEdgestacksDeployerOptionsPayload  -Prune null `
 -RemoveVolumes null
```

- Convert the resource to JSON
```powershell
$EdgestacksDeployerOptionsPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

