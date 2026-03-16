# ProvidersAmazonProvisionPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AmiType** | **String** |  | 
**CredentialID** | **Int32** |  | 
**InstanceType** | **String** |  | 
**KubernetesVersion** | **String** |  | 
**Name** | **String** |  | 
**NetworkID** | **String** |  | [optional] 
**NodeCount** | **Int32** |  | 
**NodeSize** | **String** |  | 
**NodeVolumeSize** | **Int32** |  | [optional] 
**Region** | **String** |  | 
**Meta** | [**TypesEnvironmentMetadata**](TypesEnvironmentMetadata.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProvidersAmazonProvisionPayload = Initialize-PSOpenAPIToolsProvidersAmazonProvisionPayload  -AmiType BOTTLEROCKET_x86_64 `
 -CredentialID 1 `
 -InstanceType m5.large `
 -KubernetesVersion 1.23 `
 -Name myDevCluster `
 -NetworkID 8465fb26-632e-4fa3-bb9b-21c449629026 `
 -NodeCount 3 `
 -NodeSize g3.small `
 -NodeVolumeSize 20 `
 -Region NYC1 `
 -Meta null
```

- Convert the resource to JSON
```powershell
$ProvidersAmazonProvisionPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

