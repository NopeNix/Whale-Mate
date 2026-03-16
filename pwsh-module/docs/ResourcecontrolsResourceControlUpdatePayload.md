# ResourcecontrolsResourceControlUpdatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdministratorsOnly** | **Boolean** | Permit access to resource only to admins | [optional] 
**Public** | **Boolean** | Permit access to the associated resource to any user | [optional] 
**Teams** | **Int32[]** | List of team identifiers with access to the associated resource | [optional] 
**Users** | **Int32[]** | List of user identifiers with access to the associated resource | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourcecontrolsResourceControlUpdatePayload = Initialize-PSOpenAPIToolsResourcecontrolsResourceControlUpdatePayload  -AdministratorsOnly true `
 -Public true `
 -Teams [7] `
 -Users [4]
```

- Convert the resource to JSON
```powershell
$ResourcecontrolsResourceControlUpdatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

