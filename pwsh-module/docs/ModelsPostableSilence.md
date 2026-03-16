# ModelsPostableSilence
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** | comment Required: true | [optional] 
**CreatedBy** | **String** | created by Required: true | [optional] 
**EndsAt** | **String** | ends at Required: true Format: date-time | [optional] 
**Id** | **String** | id | [optional] 
**Matchers** | [**ModelsMatcher[]**](ModelsMatcher.md) | matchers Required: true | [optional] 
**StartsAt** | **String** | starts at Required: true Format: date-time | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelsPostableSilence = Initialize-PSOpenAPIToolsModelsPostableSilence  -Comment null `
 -CreatedBy null `
 -EndsAt null `
 -Id null `
 -Matchers null `
 -StartsAt null
```

- Convert the resource to JSON
```powershell
$ModelsPostableSilence | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

