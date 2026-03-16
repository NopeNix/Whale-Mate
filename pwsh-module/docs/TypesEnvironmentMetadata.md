# TypesEnvironmentMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CustomTemplateContent** | **String** |  | [optional] 
**CustomTemplateID** | **Int32** |  | [optional] 
**GroupId** | **Int32** |  | [optional] 
**StackName** | **String** |  | [optional] 
**TagIds** | **Int32[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TypesEnvironmentMetadata = Initialize-PSOpenAPIToolsTypesEnvironmentMetadata  -CustomTemplateContent null `
 -CustomTemplateID null `
 -GroupId null `
 -StackName null `
 -TagIds null
```

- Convert the resource to JSON
```powershell
$TypesEnvironmentMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

