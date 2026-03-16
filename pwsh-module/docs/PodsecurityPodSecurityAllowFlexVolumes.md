# PodsecurityPodSecurityAllowFlexVolumes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowedVolumes** | **String[]** |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PodsecurityPodSecurityAllowFlexVolumes = Initialize-PSOpenAPIToolsPodsecurityPodSecurityAllowFlexVolumes  -AllowedVolumes null `
 -Enabled null
```

- Convert the resource to JSON
```powershell
$PodsecurityPodSecurityAllowFlexVolumes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

