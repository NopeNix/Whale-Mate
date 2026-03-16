# PortainereeAlertingRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AlertManagerID** | **Int32** |  | [optional] 
**ConditionOperator** | [**PortainereeConditionOperator**](PortainereeConditionOperator.md) |  | [optional] 
**CreatedAt** | **String** |  | [optional] 
**CreatedBy** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Duration** | **Int32** |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 
**Id** | **Int32** |  | [optional] 
**IsEditable** | **Boolean** |  | [optional] 
**IsInternal** | **Boolean** |  | [optional] 
**Labels** | **System.Collections.Hashtable** |  | [optional] 
**MetricType** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Severity** | **String** |  | [optional] 
**Summary** | **String** |  | [optional] 
**SupportedAgentVersion** | **String** |  | [optional] 
**SupportedEnvironmentTypes** | **String** |  | [optional] 
**Threshold** | **Decimal** |  | [optional] 
**UpdatedAt** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeAlertingRule = Initialize-PSOpenAPIToolsPortainereeAlertingRule  -AlertManagerID null `
 -ConditionOperator null `
 -CreatedAt null `
 -CreatedBy null `
 -Description null `
 -Duration null `
 -Enabled null `
 -Id null `
 -IsEditable null `
 -IsInternal null `
 -Labels null `
 -MetricType null `
 -Name null `
 -Severity null `
 -Summary null `
 -SupportedAgentVersion null `
 -SupportedEnvironmentTypes null `
 -Threshold null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$PortainereeAlertingRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

