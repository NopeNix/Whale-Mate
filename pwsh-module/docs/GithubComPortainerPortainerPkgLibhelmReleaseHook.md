# GithubComPortainerPortainerPkgLibhelmReleaseHook
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DeletePolicies** | **String[]** | DeletePolicies are the policies that indicate when to delete the hook | [optional] 
**Events** | **String[]** | Events are the events that this hook fires on. | [optional] 
**Kind** | **String** | Kind is the Kubernetes kind. | [optional] 
**LastRun** | [**GithubComPortainerPortainerPkgLibhelmReleaseHookExecution**](GithubComPortainerPortainerPkgLibhelmReleaseHookExecution.md) | LastRun indicates the date/time this was last run. | [optional] 
**Manifest** | **String** | Manifest is the manifest contents. | [optional] 
**Name** | **String** |  | [optional] 
**Path** | **String** | Path is the chart-relative path to the template. | [optional] 
**Weight** | **Int32** | Weight indicates the sort order for execution among similar Hook type | [optional] 

## Examples

- Prepare the resource
```powershell
$GithubComPortainerPortainerPkgLibhelmReleaseHook = Initialize-PSOpenAPIToolsGithubComPortainerPortainerPkgLibhelmReleaseHook  -DeletePolicies null `
 -Events null `
 -Kind null `
 -LastRun null `
 -Manifest null `
 -Name null `
 -Path null `
 -Weight null
```

- Convert the resource to JSON
```powershell
$GithubComPortainerPortainerPkgLibhelmReleaseHook | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

