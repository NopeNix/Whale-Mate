# ReleaseMaintainer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Email** | **String** | Email is an optional email address to contact the named maintainer | [optional] 
**Name** | **String** | Name is a user name or organization name | [optional] 
**Url** | **String** | URL is an optional URL to an address for the named maintainer | [optional] 

## Examples

- Prepare the resource
```powershell
$ReleaseMaintainer = Initialize-PSOpenAPIToolsReleaseMaintainer  -Email null `
 -Name null `
 -Url null
```

- Convert the resource to JSON
```powershell
$ReleaseMaintainer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

