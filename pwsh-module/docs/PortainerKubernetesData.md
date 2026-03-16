# PortainerKubernetesData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Configuration** | [**PortainerKubernetesConfiguration**](PortainerKubernetesConfiguration.md) |  | [optional] 
**Flags** | [**PortainerKubernetesFlags**](PortainerKubernetesFlags.md) |  | [optional] 
**Snapshots** | [**PortainerKubernetesSnapshot[]**](PortainerKubernetesSnapshot.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerKubernetesData = Initialize-PSOpenAPIToolsPortainerKubernetesData  -Configuration null `
 -Flags null `
 -Snapshots null
```

- Convert the resource to JSON
```powershell
$PortainerKubernetesData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

