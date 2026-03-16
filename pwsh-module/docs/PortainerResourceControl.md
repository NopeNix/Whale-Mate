# PortainerResourceControl
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessLevel** | [**PortainerResourceAccessLevel**](PortainerResourceAccessLevel.md) |  | [optional] 
**AdministratorsOnly** | **Boolean** | Permit access to resource only to admins | [optional] 
**Id** | **Int32** | ResourceControl Identifier | [optional] 
**OwnerId** | **Int32** | Deprecated fields Deprecated in DBVersion &#x3D;&#x3D; 2 | [optional] 
**Public** | **Boolean** | Permit access to the associated resource to any user | [optional] 
**ResourceId** | **String** | Docker resource identifier on which access control will be applied.\ In the case of a resource control applied to a stack, use the stack name as identifier | [optional] 
**SubResourceIds** | **String[]** | List of Docker resources that will inherit this access control | [optional] 
**System** | **Boolean** |  | [optional] 
**TeamAccesses** | [**PortainerTeamResourceAccess[]**](PortainerTeamResourceAccess.md) |  | [optional] 
**Type** | [**PortainerResourceControlType**](PortainerResourceControlType.md) | Type of Docker resource. Valid values are: 1- container, 2 -service 3 - volume, 4 - secret, 5 - stack, 6 - config or 7 - custom template | [optional] 
**UserAccesses** | [**PortainerUserResourceAccess[]**](PortainerUserResourceAccess.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerResourceControl = Initialize-PSOpenAPIToolsPortainerResourceControl  -AccessLevel null `
 -AdministratorsOnly true `
 -Id 1 `
 -OwnerId null `
 -Public true `
 -ResourceId 617c5f22bb9b023d6daab7cba43a57576f83492867bc767d1c59416b065e5f08 `
 -SubResourceIds [617c5f22bb9b023d6daab7cba43a57576f83492867bc767d1c59416b065e5f08] `
 -System null `
 -TeamAccesses null `
 -Type null `
 -UserAccesses null
```

- Convert the resource to JSON
```powershell
$PortainerResourceControl | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

