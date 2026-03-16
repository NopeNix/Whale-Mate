# PortainereeEdgeConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BaseDir** | **String** |  | [optional] 
**Category** | [**PortainereeEdgeConfigCategory**](PortainereeEdgeConfigCategory.md) |  | [optional] 
**Created** | **Int32** |  | [optional] 
**CreatedBy** | **Int32** |  | [optional] 
**EdgeGroupIDs** | **Int32[]** |  | [optional] 
**Id** | **Int32** |  | [optional] 
**Name** | **String** |  | [optional] 
**Prev** | [**PortainereeEdgeConfig**](PortainereeEdgeConfig.md) |  | [optional] 
**Progress** | [**PortainereeEdgeConfigProgress**](PortainereeEdgeConfigProgress.md) |  | [optional] 
**State** | [**PortainereeEdgeConfigStateType**](PortainereeEdgeConfigStateType.md) |  | [optional] 
**Type** | **Int32** |  | [optional] 
**Updated** | **Int32** |  | [optional] 
**UpdatedBy** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeEdgeConfig = Initialize-PSOpenAPIToolsPortainereeEdgeConfig  -BaseDir null `
 -Category null `
 -Created null `
 -CreatedBy null `
 -EdgeGroupIDs null `
 -Id null `
 -Name null `
 -Prev null `
 -Progress null `
 -State null `
 -Type null `
 -Updated null `
 -UpdatedBy null
```

- Convert the resource to JSON
```powershell
$PortainereeEdgeConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

