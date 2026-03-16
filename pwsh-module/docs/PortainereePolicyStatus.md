# PortainereePolicyStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LastAttemptTime** | **Int32** | Unix timestamp | [optional] 
**Message** | **String** |  | [optional] 
**Status** | [**PortainereePolicyStatusType**](PortainereePolicyStatusType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereePolicyStatus = Initialize-PSOpenAPIToolsPortainereePolicyStatus  -LastAttemptTime null `
 -Message null `
 -Status null
```

- Convert the resource to JSON
```powershell
$PortainereePolicyStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

