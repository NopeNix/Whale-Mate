# CreateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Provider** | **String** | cloud provider such as aws, aks, civo, digitalocean, etc. | 
**Name** | **String** | name of the credentials such as rnd-test-credential | 
**Credentials** | **String** | credentials in json format | 

## Examples

- Prepare the resource
```powershell
$CreateRequest = Initialize-PSOpenAPIToolsCreateRequest  -Provider null `
 -Name null `
 -Credentials null
```

- Convert the resource to JSON
```powershell
$CreateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

