# AutoupdatesAutoUpdateResponseItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DoneAtUnix** | **Int32** |  | [optional] 
**StartedAtUnix** | **Int32** |  | [optional] 
**Status** | [**PortainereeAutoUpdateStatus**](PortainereeAutoUpdateStatus.md) |  | [optional] 
**Version** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AutoupdatesAutoUpdateResponseItem = Initialize-PSOpenAPIToolsAutoupdatesAutoUpdateResponseItem  -DoneAtUnix null `
 -StartedAtUnix null `
 -Status null `
 -Version null
```

- Convert the resource to JSON
```powershell
$AutoupdatesAutoUpdateResponseItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

