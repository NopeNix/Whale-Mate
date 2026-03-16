# PortainereeCloudProvider
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AddonWithArgs** | [**PortainereeMicroK8sAddon[]**](PortainereeMicroK8sAddon.md) | MicroK8S specific fields | [optional] 
**AmiType** | **String** | Amazon specific fields | [optional] 
**CPU** | **Int32** |  | [optional] 
**CredentialID** | **Int32** | CredentialID holds an ID of the credential used to create the cluster | [optional] 
**DNSPrefix** | **String** |  | [optional] 
**HDD** | **Int32** |  | [optional] 
**InstanceType** | **String** |  | [optional] 
**KubernetesVersion** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**NetworkID** | **String** | Pointer will hide this field for providers other than civo which do not use this field. | [optional] 
**NodeCount** | **Int32** |  | [optional] 
**NodeIPs** | **String** |  | [optional] 
**NodeVolumeSize** | **Int32** |  | [optional] 
**OfflineInstall** | **Boolean** |  | [optional] 
**PoolName** | **String** |  | [optional] 
**Provider** | **String** |  | [optional] 
**RAM** | **Decimal** |  | [optional] 
**Region** | **String** |  | [optional] 
**ResourceGroup** | **String** | Azure specific fields | [optional] 
**Size** | **String** |  | [optional] 
**Tier** | **String** |  | [optional] 
**URL** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeCloudProvider = Initialize-PSOpenAPIToolsPortainereeCloudProvider  -AddonWithArgs null `
 -AmiType null `
 -CPU null `
 -CredentialID null `
 -DNSPrefix null `
 -HDD null `
 -InstanceType null `
 -KubernetesVersion null `
 -Name null `
 -NetworkID null `
 -NodeCount null `
 -NodeIPs null `
 -NodeVolumeSize null `
 -OfflineInstall null `
 -PoolName null `
 -Provider null `
 -RAM null `
 -Region null `
 -ResourceGroup null `
 -Size null `
 -Tier null `
 -URL null
```

- Convert the resource to JSON
```powershell
$PortainereeCloudProvider | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

