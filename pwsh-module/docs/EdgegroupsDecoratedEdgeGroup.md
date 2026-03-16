# EdgegroupsDecoratedEdgeGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Dynamic** | **Boolean** |  | [optional] 
**EdgeUpdateID** | **Int32** |  | [optional] 
**EndpointIds** | **Int32** | Shadow to avoid exposing in the API | [optional] 
**EndpointTypes** | [**PortainerEndpointType[]**](PortainerEndpointType.md) |  | [optional] 
**Endpoints** | **Int32[]** | Deprecated: only used for API responses | [optional] 
**EndpointsCount** | **Int32** |  | [optional] 
**HasEdgeConfig** | **Boolean** |  | [optional] 
**HasEdgeJob** | **Boolean** |  | [optional] 
**HasEdgeStack** | **Boolean** |  | [optional] 
**Id** | **Int32** | EdgeGroup Identifier | [optional] 
**Name** | **String** |  | [optional] 
**PartialMatch** | **Boolean** |  | [optional] 
**TagIds** | **Int32[]** |  | [optional] 
**TrustedEndpoints** | **Int32[]** |  | [optional] 
**TrustedEndpointsCount** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EdgegroupsDecoratedEdgeGroup = Initialize-PSOpenAPIToolsEdgegroupsDecoratedEdgeGroup  -Dynamic null `
 -EdgeUpdateID null `
 -EndpointIds null `
 -EndpointTypes null `
 -Endpoints null `
 -EndpointsCount null `
 -HasEdgeConfig null `
 -HasEdgeJob null `
 -HasEdgeStack null `
 -Id 1 `
 -Name null `
 -PartialMatch null `
 -TagIds null `
 -TrustedEndpoints null `
 -TrustedEndpointsCount null
```

- Convert the resource to JSON
```powershell
$EdgegroupsDecoratedEdgeGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

