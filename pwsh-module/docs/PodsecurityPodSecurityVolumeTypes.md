# PodsecurityPodSecurityVolumeTypes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowedTypes** | [**PodsecurityFSType[]**](PodsecurityFSType.md) |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PodsecurityPodSecurityVolumeTypes = Initialize-PSOpenAPIToolsPodsecurityPodSecurityVolumeTypes  -AllowedTypes null `
 -Enabled null
```

- Convert the resource to JSON
```powershell
$PodsecurityPodSecurityVolumeTypes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

