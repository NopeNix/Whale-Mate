# EndpointsForceUpdateServicePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PullImage** | **Boolean** | PullImage if true will pull the image | [optional] 
**ServiceID** | **String** | ServiceId to update | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointsForceUpdateServicePayload = Initialize-PSOpenAPIToolsEndpointsForceUpdateServicePayload  -PullImage null `
 -ServiceID null
```

- Convert the resource to JSON
```powershell
$EndpointsForceUpdateServicePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

