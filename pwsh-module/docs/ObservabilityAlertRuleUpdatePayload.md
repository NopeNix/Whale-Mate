# ObservabilityAlertRuleUpdatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AlertingRule** | [**PortainereeAlertingRule**](PortainereeAlertingRule.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ObservabilityAlertRuleUpdatePayload = Initialize-PSOpenAPIToolsObservabilityAlertRuleUpdatePayload  -AlertingRule null
```

- Convert the resource to JSON
```powershell
$ObservabilityAlertRuleUpdatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

