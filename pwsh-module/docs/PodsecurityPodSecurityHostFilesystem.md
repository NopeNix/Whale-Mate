# PodsecurityPodSecurityHostFilesystem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowedPaths** | [**PodsecurityPodSecurityAllowedPaths[]**](PodsecurityPodSecurityAllowedPaths.md) |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PodsecurityPodSecurityHostFilesystem = Initialize-PSOpenAPIToolsPodsecurityPodSecurityHostFilesystem  -AllowedPaths null `
 -Enabled null
```

- Convert the resource to JSON
```powershell
$PodsecurityPodSecurityHostFilesystem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

