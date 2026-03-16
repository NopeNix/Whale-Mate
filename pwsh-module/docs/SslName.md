# SslName
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Country** | **String[]** |  | [optional] 
**Locality** | **String[]** |  | [optional] 
**SerialNumber** | **String** |  | [optional] 
**StreetAddress** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SslName = Initialize-PSOpenAPIToolsSslName  -Country null `
 -Locality null `
 -SerialNumber null `
 -StreetAddress null
```

- Convert the resource to JSON
```powershell
$SslName | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

