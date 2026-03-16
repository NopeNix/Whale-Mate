# PortainerTemplateEnvSelect
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Default** | **Boolean** | Will set this choice as the default choice | [optional] 
**Text** | **String** | Some text that will displayed as a choice | [optional] 
**Value** | **String** | A value that will be associated to the choice | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerTemplateEnvSelect = Initialize-PSOpenAPIToolsPortainerTemplateEnvSelect  -Default false `
 -Text text value `
 -Value value
```

- Convert the resource to JSON
```powershell
$PortainerTemplateEnvSelect | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

