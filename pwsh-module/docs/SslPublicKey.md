# SslPublicKey
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Algorithm** | **String** |  | [optional] 
**Exponent** | **String** |  | [optional] 
**Modulus** | **String** |  | [optional] 
**Size** | **Int32** |  | [optional] 
**Value** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SslPublicKey = Initialize-PSOpenAPIToolsSslPublicKey  -Algorithm null `
 -Exponent null `
 -Modulus null `
 -Size null `
 -Value null
```

- Convert the resource to JSON
```powershell
$SslPublicKey | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

