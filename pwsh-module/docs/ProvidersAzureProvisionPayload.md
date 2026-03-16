# ProvidersAzureProvisionPayload
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
**AvailabilityZones** | **String[]** |  | [optional] 
**DnsPrefix** | **String** |  | [optional] 
**Meta** | [**TypesEnvironmentMetadata**](TypesEnvironmentMetadata.md) |  | [optional] 
**PoolName** | **String** |  | [optional] 
**ResourceGroup** | **String** | Azure specific fields | [optional] 
**ResourceGroupName** | **String** |  | [optional] 
**Tier** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProvidersAzureProvisionPayload = Initialize-PSOpenAPIToolsProvidersAzureProvisionPayload  -CredentialID 1 `
 -KubernetesVersion 1.23 `
 -Name myDevCluster `
 -NetworkID 8465fb26-632e-4fa3-bb9b-21c449629026 `
 -NodeCount 3 `
 -NodeSize g3.small `
 -Region NYC1 `
 -AvailabilityZones null `
 -DnsPrefix null `
 -Meta null `
 -PoolName null `
 -ResourceGroup null `
 -ResourceGroupName null `
 -Tier null
```

- Convert the resource to JSON
```powershell
$ProvidersAzureProvisionPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

