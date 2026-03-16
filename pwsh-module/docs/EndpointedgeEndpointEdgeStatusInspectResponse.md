# EndpointedgeEndpointEdgeStatusInspectResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Checkin** | **Int32** | The current value of CheckinInterval | [optional] 
**Credentials** | **String** |  | [optional] 
**EdgeConfigurations** | [**System.Collections.Hashtable**](PortainereeEdgeConfigStateType.md) | Edge configurations associated to this environment(endpoint) | [optional] 
**PolicyChartSummaries** | [**PortainerPolicyChartSummary[]**](PortainerPolicyChartSummary.md) | Helm charts to be installed on the environment(endpoint) | [optional] 
**Port** | **Int32** | The tunnel port | [optional] 
**Schedules** | [**EndpointedgeEdgeJobResponse[]**](EndpointedgeEdgeJobResponse.md) | List of requests for jobs to run on the environment(endpoint) | [optional] 
**Stacks** | [**EndpointedgeStackStatusResponse[]**](EndpointedgeStackStatusResponse.md) | List of stacks to be deployed on the environments(endpoints) | [optional] 
**Status** | **String** | Status represents the environment(endpoint) status | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointedgeEndpointEdgeStatusInspectResponse = Initialize-PSOpenAPIToolsEndpointedgeEndpointEdgeStatusInspectResponse  -Checkin 5 `
 -Credentials null `
 -EdgeConfigurations null `
 -PolicyChartSummaries null `
 -Port 8732 `
 -Schedules null `
 -Stacks null `
 -Status REQUIRED
```

- Convert the resource to JSON
```powershell
$EndpointedgeEndpointEdgeStatusInspectResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

