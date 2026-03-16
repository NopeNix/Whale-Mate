# GitopsHelmValuesPreviewPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthorizationType** | [**GittypesGitCredentialAuthType**](GittypesGitCredentialAuthType.md) |  | [optional] 
**GitCredentialID** | **Int32** |  | [optional] 
**Password** | **String** |  | [optional] 
**Reference** | **String** |  | [optional] 
**Repository** | **String** |  | 
**TlsSkipVerify** | **Boolean** |  | [optional] 
**Username** | **String** |  | [optional] 
**ValuesFiles** | **String[]** | ValuesFiles is an array of paths to Helm values files (matches Stack.HelmValuesFiles) | 

## Examples

- Prepare the resource
```powershell
$GitopsHelmValuesPreviewPayload = Initialize-PSOpenAPIToolsGitopsHelmValuesPreviewPayload  -AuthorizationType null `
 -GitCredentialID 0 `
 -Password myGitPassword `
 -Reference refs/heads/main `
 -Repository https://github.com/example/charts `
 -TlsSkipVerify false `
 -Username myGitUsername `
 -ValuesFiles [[&quot;values/base.yaml&quot;, &quot;values/prod.yaml&quot;]]
```

- Convert the resource to JSON
```powershell
$GitopsHelmValuesPreviewPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

