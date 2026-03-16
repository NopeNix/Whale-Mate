# PortainerPolicyChartBundle
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ChartName** | **String** |  | [optional] 
**EncodedTgz** | **String** |  | [optional] 
**EncodedValues** | **String** |  | [optional] 
**Fingerprint** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**PreInstallAdoptions** | [**PortainerResourceAdoption[]**](PortainerResourceAdoption.md) |  | [optional] 
**PreInstallDeletions** | [**PortainerResourceDeletion[]**](PortainerResourceDeletion.md) |  | [optional] 
**PreReleaseManifest** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerPolicyChartBundle = Initialize-PSOpenAPIToolsPortainerPolicyChartBundle  -ChartName null `
 -EncodedTgz null `
 -EncodedValues null `
 -Fingerprint null `
 -Namespace null `
 -PreInstallAdoptions null `
 -PreInstallDeletions null `
 -PreReleaseManifest null
```

- Convert the resource to JSON
```powershell
$PortainerPolicyChartBundle | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

