# ProvidersGKEProvisionPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CPU** | **Int32** |  | [optional] 
**CredentialID** | **Int32** |  | 
**HDD** | **Int32** |  | [optional] 
**KubernetesVersion** | **String** |  | 
**Name** | **String** |  | 
**NetworkID** | **String** |  | [optional] 
**NodeCount** | **Int32** |  | 
**NodeSize** | **String** |  | 
**RAM** | **Decimal** |  | [optional] 
**Region** | **String** |  | 
**Meta** | [**TypesEnvironmentMetadata**](TypesEnvironmentMetadata.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProvidersGKEProvisionPayload = Initialize-PSOpenAPIToolsProvidersGKEProvisionPayload  -CPU 2 `
 -CredentialID 1 `
 -HDD 100 `
 -KubernetesVersion 1.23 `
 -Name myDevCluster `
 -NetworkID 8465fb26-632e-4fa3-bb9b-21c449629026 `
 -NodeCount 3 `
 -NodeSize g3.small `
 -RAM 4.0 `
 -Region NYC1 `
 -Meta null
```

- Convert the resource to JSON
```powershell
$ProvidersGKEProvisionPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

