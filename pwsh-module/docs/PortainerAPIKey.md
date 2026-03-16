# PortainerAPIKey
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DateCreated** | **Int32** | Unix timestamp (UTC) when the API key was created | [optional] 
**Description** | **String** |  | [optional] 
**Digest** | **String** | Digest represents SHA256 hash of the raw API key | [optional] 
**Id** | **Int32** |  | [optional] 
**LastUsed** | **Int32** | Unix timestamp (UTC) when the API key was last used | [optional] 
**Prefix** | **String** | API key identifier (7 char prefix) | [optional] 
**UserId** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerAPIKey = Initialize-PSOpenAPIToolsPortainerAPIKey  -DateCreated null `
 -Description portainer-api-key `
 -Digest null `
 -Id 1 `
 -LastUsed null `
 -Prefix null `
 -UserId 1
```

- Convert the resource to JSON
```powershell
$PortainerAPIKey | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

