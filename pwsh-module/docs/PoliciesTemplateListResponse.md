# PoliciesTemplateListResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Templates** | [**PoliciesPolicyTemplate[]**](PoliciesPolicyTemplate.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PoliciesTemplateListResponse = Initialize-PSOpenAPIToolsPoliciesTemplateListResponse  -Templates null
```

- Convert the resource to JSON
```powershell
$PoliciesTemplateListResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

