# PortainerRestoreSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Manifest** | **String** | Base64-encoded Kubernetes YAML manifest | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerRestoreSettings = Initialize-PSOpenAPIToolsPortainerRestoreSettings  -Manifest null
```

- Convert the resource to JSON
```powershell
$PortainerRestoreSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

