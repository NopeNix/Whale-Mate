# PortainereeEdgeGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Dynamic** | **Boolean** |  | [optional] 
**EdgeUpdateID** | **Int32** |  | [optional] 
**EndpointIds** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Endpoints** | **Int32[]** | Deprecated: only used for API responses | [optional] 
**Id** | **Int32** | EdgeGroup Identifier | [optional] 
**Name** | **String** |  | [optional] 
**PartialMatch** | **Boolean** |  | [optional] 
**TagIds** | **Int32[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeEdgeGroup = Initialize-PSOpenAPIToolsPortainereeEdgeGroup  -Dynamic null `
 -EdgeUpdateID null `
 -EndpointIds null `
 -Endpoints null `
 -Id 1 `
 -Name null `
 -PartialMatch null `
 -TagIds null
```

- Convert the resource to JSON
```powershell
$PortainereeEdgeGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

