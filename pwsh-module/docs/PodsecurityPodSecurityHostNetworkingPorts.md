# PodsecurityPodSecurityHostNetworkingPorts
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** |  | [optional] 
**HostNetwork** | **Boolean** |  | [optional] 
**Max** | **Int32** |  | [optional] 
**Min** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PodsecurityPodSecurityHostNetworkingPorts = Initialize-PSOpenAPIToolsPodsecurityPodSecurityHostNetworkingPorts  -Enabled null `
 -HostNetwork null `
 -Max null `
 -Min null
```

- Convert the resource to JSON
```powershell
$PodsecurityPodSecurityHostNetworkingPorts | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

