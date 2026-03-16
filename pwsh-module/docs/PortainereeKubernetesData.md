# PortainereeKubernetesData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Configuration** | [**PortainereeKubernetesConfiguration**](PortainereeKubernetesConfiguration.md) |  | [optional] 
**Flags** | [**PortainerKubernetesFlags**](PortainerKubernetesFlags.md) |  | [optional] 
**Snapshots** | [**PortainerKubernetesSnapshot[]**](PortainerKubernetesSnapshot.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeKubernetesData = Initialize-PSOpenAPIToolsPortainereeKubernetesData  -Configuration null `
 -Flags null `
 -Snapshots null
```

- Convert the resource to JSON
```powershell
$PortainereeKubernetesData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

