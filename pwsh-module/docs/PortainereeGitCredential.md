# PortainereeGitCredential
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthorizationType** | [**GittypesGitCredentialAuthType**](GittypesGitCredentialAuthType.md) |  | [optional] 
**CreationDate** | **Int32** |  | [optional] 
**Id** | **Int32** |  | [optional] 
**Name** | **String** |  | [optional] 
**Password** | **String** |  | [optional] 
**UserId** | **Int32** |  | [optional] 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeGitCredential = Initialize-PSOpenAPIToolsPortainereeGitCredential  -AuthorizationType null `
 -CreationDate 1587399600 `
 -Id 1 `
 -Name null `
 -Password null `
 -UserId 1 `
 -Username null
```

- Convert the resource to JSON
```powershell
$PortainereeGitCredential | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

