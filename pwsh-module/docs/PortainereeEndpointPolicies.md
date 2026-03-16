# PortainereeEndpointPolicies
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DockerRBACPolicy** | [**PortainereeAppliedPolicy**](PortainereeAppliedPolicy.md) |  | [optional] 
**DockerRegistryPolicy** | [**PortainereeAppliedPolicy**](PortainereeAppliedPolicy.md) |  | [optional] 
**DockerSecurityPolicy** | [**PortainereeAppliedPolicy**](PortainereeAppliedPolicy.md) |  | [optional] 
**DockerSetupPolicy** | [**PortainereeAppliedPolicy**](PortainereeAppliedPolicy.md) |  | [optional] 
**K8sRBACPolicy** | [**PortainereeAppliedPolicy**](PortainereeAppliedPolicy.md) |  | [optional] 
**K8sRegistryPolicy** | [**PortainereeAppliedPolicy**](PortainereeAppliedPolicy.md) |  | [optional] 
**K8sSecurityPolicy** | [**PortainereeAppliedPolicy**](PortainereeAppliedPolicy.md) |  | [optional] 
**K8sSetupPolicy** | [**PortainereeAppliedPolicy**](PortainereeAppliedPolicy.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeEndpointPolicies = Initialize-PSOpenAPIToolsPortainereeEndpointPolicies  -DockerRBACPolicy null `
 -DockerRegistryPolicy null `
 -DockerSecurityPolicy null `
 -DockerSetupPolicy null `
 -K8sRBACPolicy null `
 -K8sRegistryPolicy null `
 -K8sSecurityPolicy null `
 -K8sSetupPolicy null
```

- Convert the resource to JSON
```powershell
$PortainereeEndpointPolicies | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

