# PoliciesPolicyUpdatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowOverride** | **Boolean** |  | [optional] 
**VarData** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] 
**EnvironmentGroups** | **Int32[]** |  | [optional] 
**EnvironmentType** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Type** | [**PoliciesPolicyType**](PoliciesPolicyType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PoliciesPolicyUpdatePayload = Initialize-PSOpenAPIToolsPoliciesPolicyUpdatePayload  -AllowOverride false `
 -VarData null `
 -EnvironmentGroups null `
 -EnvironmentType kubernetes `
 -Name Updated Development Policy `
 -Type null
```

- Convert the resource to JSON
```powershell
$PoliciesPolicyUpdatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

