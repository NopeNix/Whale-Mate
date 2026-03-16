# PortainerTag
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EndpointGroups** | **System.Collections.Hashtable** | A set of environment(endpoint) group ids that have this tag | [optional] 
**Endpoints** | **System.Collections.Hashtable** | A set of environment(endpoint) ids that have this tag | [optional] 
**ID** | **Int32** | Tag identifier | [optional] 
**Name** | **String** | Tag name | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerTag = Initialize-PSOpenAPIToolsPortainerTag  -EndpointGroups null `
 -Endpoints null `
 -ID 1 `
 -Name org/acme
```

- Convert the resource to JSON
```powershell
$PortainerTag | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

