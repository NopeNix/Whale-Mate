# ModelsMatcher
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsEqual** | **Boolean** | is equal | [optional] 
**IsRegex** | **Boolean** | is regex Required: true | [optional] 
**Name** | **String** | name Required: true | [optional] 
**Value** | **String** | value Required: true | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelsMatcher = Initialize-PSOpenAPIToolsModelsMatcher  -IsEqual null `
 -IsRegex null `
 -Name null `
 -Value null
```

- Convert the resource to JSON
```powershell
$ModelsMatcher | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

