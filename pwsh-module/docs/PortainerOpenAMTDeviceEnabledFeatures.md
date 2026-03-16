# PortainerOpenAMTDeviceEnabledFeatures
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IDER** | **Boolean** |  | [optional] 
**KVM** | **Boolean** |  | [optional] 
**SOL** | **Boolean** |  | [optional] 
**Redirection** | **Boolean** |  | [optional] 
**UserConsent** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerOpenAMTDeviceEnabledFeatures = Initialize-PSOpenAPIToolsPortainerOpenAMTDeviceEnabledFeatures  -IDER null `
 -KVM null `
 -SOL null `
 -Redirection null `
 -UserConsent null
```

- Convert the resource to JSON
```powershell
$PortainerOpenAMTDeviceEnabledFeatures | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

