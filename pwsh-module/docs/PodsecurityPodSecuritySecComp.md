# PodsecurityPodSecuritySecComp
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** |  | [optional] 
**SecCompType** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PodsecurityPodSecuritySecComp = Initialize-PSOpenAPIToolsPodsecurityPodSecuritySecComp  -Enabled null `
 -SecCompType null
```

- Convert the resource to JSON
```powershell
$PodsecurityPodSecuritySecComp | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

