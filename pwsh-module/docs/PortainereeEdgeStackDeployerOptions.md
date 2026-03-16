# PortainereeEdgeStackDeployerOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Prune** | **Boolean** | Drives &#x60;compose up --remove-orphans&#x60; and &#x60;stack up --prune&#x60; options | [optional] 
**RemoveVolumes** | **Boolean** | Drives &#x60;compose down --volumes&#x60; option | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeEdgeStackDeployerOptions = Initialize-PSOpenAPIToolsPortainereeEdgeStackDeployerOptions  -Prune null `
 -RemoveVolumes null
```

- Convert the resource to JSON
```powershell
$PortainereeEdgeStackDeployerOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

