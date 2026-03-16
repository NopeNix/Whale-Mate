# PortainerResourceDeletion
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApiVersion** | **String** |  | [optional] 
**Kind** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerResourceDeletion = Initialize-PSOpenAPIToolsPortainerResourceDeletion  -ApiVersion v1 `
 -Kind Secret `
 -Name registry-1 `
 -Namespace default
```

- Convert the resource to JSON
```powershell
$PortainerResourceDeletion | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

