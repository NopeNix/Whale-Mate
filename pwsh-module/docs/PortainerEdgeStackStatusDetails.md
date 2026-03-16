# PortainerEdgeStackStatusDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Acknowledged** | **Boolean** |  | [optional] 
**VarError** | **Boolean** |  | [optional] 
**ImagesPulled** | **Boolean** |  | [optional] 
**Ok** | **Boolean** |  | [optional] 
**Pending** | **Boolean** |  | [optional] 
**RemoteUpdateSuccess** | **Boolean** |  | [optional] 
**Remove** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerEdgeStackStatusDetails = Initialize-PSOpenAPIToolsPortainerEdgeStackStatusDetails  -Acknowledged null `
 -VarError null `
 -ImagesPulled null `
 -Ok null `
 -Pending null `
 -RemoteUpdateSuccess null `
 -Remove null
```

- Convert the resource to JSON
```powershell
$PortainerEdgeStackStatusDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

