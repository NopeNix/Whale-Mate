# AutoupdatesListResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AutoUpdates** | [**AutoupdatesAutoUpdateResponseItem[]**](AutoupdatesAutoUpdateResponseItem.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AutoupdatesListResponse = Initialize-PSOpenAPIToolsAutoupdatesListResponse  -AutoUpdates null
```

- Convert the resource to JSON
```powershell
$AutoupdatesListResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

