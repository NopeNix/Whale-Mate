# ResourcecontrolsResourceControlCreatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdministratorsOnly** | **Boolean** | Permit access to resource only to admins | [optional] 
**Public** | **Boolean** | Permit access to the associated resource to any user | [optional] 
**ResourceID** | **String** |  | 
**SubResourceIDs** | **String[]** | List of Docker resources that will inherit this access control | [optional] 
**Teams** | **Int32[]** | List of team identifiers with access to the associated resource | [optional] 
**Type** | [**PortainerResourceControlType**](PortainerResourceControlType.md) | Type of Resource. Valid values are: 1 - container, 2 - service 3 - volume, 4 - network, 5 - secret, 6 - stack, 7 - config, 8 - custom template, 9 - azure-container-group | 
**Users** | **Int32[]** | List of user identifiers with access to the associated resource | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourcecontrolsResourceControlCreatePayload = Initialize-PSOpenAPIToolsResourcecontrolsResourceControlCreatePayload  -AdministratorsOnly true `
 -Public true `
 -ResourceID 617c5f22bb9b023d6daab7cba43a57576f83492867bc767d1c59416b065e5f08 `
 -SubResourceIDs [617c5f22bb9b023d6daab7cba43a57576f83492867bc767d1c59416b065e5f08] `
 -Teams [56, 7] `
 -Type null `
 -Users [1, 4]
```

- Convert the resource to JSON
```powershell
$ResourcecontrolsResourceControlCreatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

