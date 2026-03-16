# V1HTTPHeader
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The header field name. This will be canonicalized upon output, so case-variant names will be understood as the same header. | [optional] 
**Value** | **String** | The header field value | [optional] 

## Examples

- Prepare the resource
```powershell
$V1HTTPHeader = Initialize-PSOpenAPIToolsV1HTTPHeader  -Name null `
 -Value null
```

- Convert the resource to JSON
```powershell
$V1HTTPHeader | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

