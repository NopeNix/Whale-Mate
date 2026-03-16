# PodsecurityPodSecurityCapabilities
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowedCapabilities** | **String[]** |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 
**RequiredDropCapabilities** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PodsecurityPodSecurityCapabilities = Initialize-PSOpenAPIToolsPodsecurityPodSecurityCapabilities  -AllowedCapabilities null `
 -Enabled null `
 -RequiredDropCapabilities null
```

- Convert the resource to JSON
```powershell
$PodsecurityPodSecurityCapabilities | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

