# PoliciesPolicyTemplate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Category** | [**PoliciesPolicyCategory**](PoliciesPolicyCategory.md) |  | [optional] 
**VarData** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] 
**Description** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Type** | [**PoliciesPolicyType**](PoliciesPolicyType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PoliciesPolicyTemplate = Initialize-PSOpenAPIToolsPoliciesPolicyTemplate  -Category null `
 -VarData null `
 -Description null `
 -Id null `
 -Name null `
 -Type null
```

- Convert the resource to JSON
```powershell
$PoliciesPolicyTemplate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

