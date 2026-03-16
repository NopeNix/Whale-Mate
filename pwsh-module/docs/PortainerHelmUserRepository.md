# PortainerHelmUserRepository
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** | Membership Identifier | [optional] 
**URL** | **String** | Helm repository URL | [optional] 
**UserId** | **Int32** | User identifier | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerHelmUserRepository = Initialize-PSOpenAPIToolsPortainerHelmUserRepository  -Id 1 `
 -URL https://charts.bitnami.com/bitnami `
 -UserId 1
```

- Convert the resource to JSON
```powershell
$PortainerHelmUserRepository | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

