# PortainerKubernetesStorageClassConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessModes** | **String[]** |  | [optional] 
**AllowVolumeExpansion** | **Boolean** |  | [optional] 
**Name** | **String** |  | [optional] 
**Provisioner** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerKubernetesStorageClassConfig = Initialize-PSOpenAPIToolsPortainerKubernetesStorageClassConfig  -AccessModes null `
 -AllowVolumeExpansion null `
 -Name null `
 -Provisioner null
```

- Convert the resource to JSON
```powershell
$PortainerKubernetesStorageClassConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

