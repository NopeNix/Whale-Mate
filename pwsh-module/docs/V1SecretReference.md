# V1SecretReference
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | name is unique within a namespace to reference a secret resource. +optional | [optional] 
**Namespace** | **String** | namespace defines the space within which the secret name must be unique. +optional | [optional] 

## Examples

- Prepare the resource
```powershell
$V1SecretReference = Initialize-PSOpenAPIToolsV1SecretReference  -Name null `
 -Namespace null
```

- Convert the resource to JSON
```powershell
$V1SecretReference | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

