# ProvidersDefaultProvisionPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CredentialID** | **Int32** |  | 
**KubernetesVersion** | **String** |  | 
**Name** | **String** |  | 
**NetworkID** | **String** |  | [optional] 
**NodeCount** | **Int32** |  | 
**NodeSize** | **String** |  | 
**Region** | **String** |  | 
**Meta** | [**TypesEnvironmentMetadata**](TypesEnvironmentMetadata.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProvidersDefaultProvisionPayload = Initialize-PSOpenAPIToolsProvidersDefaultProvisionPayload  -CredentialID 1 `
 -KubernetesVersion 1.23 `
 -Name myDevCluster `
 -NetworkID 8465fb26-632e-4fa3-bb9b-21c449629026 `
 -NodeCount 3 `
 -NodeSize g3.small `
 -Region NYC1 `
 -Meta null
```

- Convert the resource to JSON
```powershell
$ProvidersDefaultProvisionPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

