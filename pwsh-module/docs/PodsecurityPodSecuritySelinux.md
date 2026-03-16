# PodsecurityPodSecuritySelinux
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowedCapabilities** | [**PodsecurityPodSecurityAllowedCapabilities[]**](PodsecurityPodSecurityAllowedCapabilities.md) |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PodsecurityPodSecuritySelinux = Initialize-PSOpenAPIToolsPodsecurityPodSecuritySelinux  -AllowedCapabilities null `
 -Enabled null
```

- Convert the resource to JSON
```powershell
$PodsecurityPodSecuritySelinux | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

