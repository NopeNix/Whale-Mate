# PodsecurityPodSecurityRunAsUser
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Idrange** | [**PodsecurityPodSecurityIdrange[]**](PodsecurityPodSecurityIdrange.md) |  | [optional] 
**Type** | [**PodsecurityRunAsUserStrategy**](PodsecurityRunAsUserStrategy.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PodsecurityPodSecurityRunAsUser = Initialize-PSOpenAPIToolsPodsecurityPodSecurityRunAsUser  -Idrange null `
 -Type null
```

- Convert the resource to JSON
```powershell
$PodsecurityPodSecurityRunAsUser | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

