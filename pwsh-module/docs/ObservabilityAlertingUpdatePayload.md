# ObservabilityAlertingUpdatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AlertingSettings** | [**PortainereeAlertingSettings**](PortainereeAlertingSettings.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ObservabilityAlertingUpdatePayload = Initialize-PSOpenAPIToolsObservabilityAlertingUpdatePayload  -AlertingSettings null
```

- Convert the resource to JSON
```powershell
$ObservabilityAlertingUpdatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

