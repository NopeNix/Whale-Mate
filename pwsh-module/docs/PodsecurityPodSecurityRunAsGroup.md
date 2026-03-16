# PodsecurityPodSecurityRunAsGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Idrange** | [**PodsecurityPodSecurityIdrange[]**](PodsecurityPodSecurityIdrange.md) |  | [optional] 
**Type** | [**PodsecurityRunAsGroupStrategy**](PodsecurityRunAsGroupStrategy.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PodsecurityPodSecurityRunAsGroup = Initialize-PSOpenAPIToolsPodsecurityPodSecurityRunAsGroup  -Idrange null `
 -Type null
```

- Convert the resource to JSON
```powershell
$PodsecurityPodSecurityRunAsGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

