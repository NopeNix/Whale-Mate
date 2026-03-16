# PodsecurityPodSecurityFsGroups
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Idrange** | [**PodsecurityPodSecurityIdrange[]**](PodsecurityPodSecurityIdrange.md) |  | [optional] 
**Type** | [**PodsecurityFSGroupStrategyType**](PodsecurityFSGroupStrategyType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PodsecurityPodSecurityFsGroups = Initialize-PSOpenAPIToolsPodsecurityPodSecurityFsGroups  -Idrange null `
 -Type null
```

- Convert the resource to JSON
```powershell
$PodsecurityPodSecurityFsGroups | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

