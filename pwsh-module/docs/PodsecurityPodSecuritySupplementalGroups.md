# PodsecurityPodSecuritySupplementalGroups
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Idrange** | [**PodsecurityPodSecurityIdrange[]**](PodsecurityPodSecurityIdrange.md) |  | [optional] 
**Type** | [**PodsecuritySupplementalGroupsStrategyType**](PodsecuritySupplementalGroupsStrategyType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PodsecurityPodSecuritySupplementalGroups = Initialize-PSOpenAPIToolsPodsecurityPodSecuritySupplementalGroups  -Idrange null `
 -Type null
```

- Convert the resource to JSON
```powershell
$PodsecurityPodSecuritySupplementalGroups | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

