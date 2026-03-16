# EndpointedgeStackStatusResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ForceRedeploy** | **Boolean** | ForceRedeploy indicates whether the stack is force redeployed | [optional] 
**ID** | **Int32** | EdgeStack Identifier | [optional] 
**ReadyRePullImage** | **Boolean** | Deprecated(2.36): use ForceRedeploy and RepullImage instead for cleaner responsibility But keep it for backward compatibility. To remove in future versions (2.44+) ReadyRePullImage indicates whether the stack is ready to re-pull image | [optional] 
**RepullImage** | **Boolean** | RepullImage indicates whether the stack&#39;s images should be repulled | [optional] 
**Version** | **Int32** | Version of this stack | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointedgeStackStatusResponse = Initialize-PSOpenAPIToolsEndpointedgeStackStatusResponse  -ForceRedeploy true `
 -ID 1 `
 -ReadyRePullImage true `
 -RepullImage true `
 -Version 3
```

- Convert the resource to JSON
```powershell
$EndpointedgeStackStatusResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

