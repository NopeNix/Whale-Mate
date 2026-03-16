# PortainerRegistryManagementConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessToken** | **String** |  | [optional] 
**AccessTokenExpiry** | **Int32** |  | [optional] 
**Authentication** | **Boolean** |  | [optional] 
**Ecr** | [**PortainerEcrData**](PortainerEcrData.md) |  | [optional] 
**Password** | **String** |  | [optional] 
**TLSConfig** | [**PortainerTLSConfiguration**](PortainerTLSConfiguration.md) |  | [optional] 
**Type** | [**PortainerRegistryType**](PortainerRegistryType.md) |  | [optional] 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerRegistryManagementConfiguration = Initialize-PSOpenAPIToolsPortainerRegistryManagementConfiguration  -AccessToken null `
 -AccessTokenExpiry null `
 -Authentication null `
 -Ecr null `
 -Password null `
 -TLSConfig null `
 -Type null `
 -Username null
```

- Convert the resource to JSON
```powershell
$PortainerRegistryManagementConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

