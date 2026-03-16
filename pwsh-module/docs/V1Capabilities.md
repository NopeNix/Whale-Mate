# V1Capabilities
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Add** | **String[]** | Added capabilities +optional +listType&#x3D;atomic | [optional] 
**Drop** | **String[]** | Removed capabilities +optional +listType&#x3D;atomic | [optional] 

## Examples

- Prepare the resource
```powershell
$V1Capabilities = Initialize-PSOpenAPIToolsV1Capabilities  -Add null `
 -Drop null
```

- Convert the resource to JSON
```powershell
$V1Capabilities | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

