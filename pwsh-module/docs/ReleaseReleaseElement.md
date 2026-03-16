# ReleaseReleaseElement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppVersion** | **String** |  | [optional] 
**Chart** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**Revision** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**Updated** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ReleaseReleaseElement = Initialize-PSOpenAPIToolsReleaseReleaseElement  -AppVersion null `
 -Chart null `
 -Name null `
 -Namespace null `
 -Revision null `
 -Status null `
 -Updated null
```

- Convert the resource to JSON
```powershell
$ReleaseReleaseElement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

