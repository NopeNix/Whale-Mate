# ObservabilityCreateSilencePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AlertManagerURL** | **String** |  | 
**Silence** | [**ModelsPostableSilence**](ModelsPostableSilence.md) |  | 

## Examples

- Prepare the resource
```powershell
$ObservabilityCreateSilencePayload = Initialize-PSOpenAPIToolsObservabilityCreateSilencePayload  -AlertManagerURL null `
 -Silence null
```

- Convert the resource to JSON
```powershell
$ObservabilityCreateSilencePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

