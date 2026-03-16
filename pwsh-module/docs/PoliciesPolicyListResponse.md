# PoliciesPolicyListResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Policies** | [**PoliciesGenericPolicy[]**](PoliciesGenericPolicy.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PoliciesPolicyListResponse = Initialize-PSOpenAPIToolsPoliciesPolicyListResponse  -Policies null
```

- Convert the resource to JSON
```powershell
$PoliciesPolicyListResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

