# PodsecurityPodSecurityForbiddenSysctlsList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** |  | [optional] 
**RequiredDropCapabilities** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PodsecurityPodSecurityForbiddenSysctlsList = Initialize-PSOpenAPIToolsPodsecurityPodSecurityForbiddenSysctlsList  -Enabled null `
 -RequiredDropCapabilities null
```

- Convert the resource to JSON
```powershell
$PodsecurityPodSecurityForbiddenSysctlsList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

