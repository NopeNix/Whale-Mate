# UsersHelmUserRepositoryResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GlobalRepository** | **String** |  | [optional] 
**UserRepositories** | [**PortainerHelmUserRepository[]**](PortainerHelmUserRepository.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UsersHelmUserRepositoryResponse = Initialize-PSOpenAPIToolsUsersHelmUserRepositoryResponse  -GlobalRepository null `
 -UserRepositories null
```

- Convert the resource to JSON
```powershell
$UsersHelmUserRepositoryResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

