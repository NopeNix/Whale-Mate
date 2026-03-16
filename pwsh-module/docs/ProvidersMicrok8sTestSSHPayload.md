# ProvidersMicrok8sTestSSHPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CredentialID** | **Int32** |  | 
**NodeIPs** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$ProvidersMicrok8sTestSSHPayload = Initialize-PSOpenAPIToolsProvidersMicrok8sTestSSHPayload  -CredentialID 1 `
 -NodeIPs null
```

- Convert the resource to JSON
```powershell
$ProvidersMicrok8sTestSSHPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

