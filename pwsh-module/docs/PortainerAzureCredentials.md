# PortainerAzureCredentials
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationID** | **String** | Azure application ID | [optional] 
**AuthenticationKey** | **String** | Azure authentication key | [optional] 
**TenantID** | **String** | Azure tenant ID | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerAzureCredentials = Initialize-PSOpenAPIToolsPortainerAzureCredentials  -ApplicationID eag7cdo9-o09l-9i83-9dO9-f0b23oe78db4 `
 -AuthenticationKey cOrXoK/1D35w8YQ8nH1/8ZGwzz45JIYD5jxHKXEQknk&#x3D; `
 -TenantID 34ddc78d-4fel-2358-8cc1-df84c8o839f5
```

- Convert the resource to JSON
```powershell
$PortainerAzureCredentials | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

