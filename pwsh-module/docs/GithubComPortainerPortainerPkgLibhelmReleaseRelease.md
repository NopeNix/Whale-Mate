# GithubComPortainerPortainerPkgLibhelmReleaseRelease
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppVersion** | **String** | AppVersion is the app version of the release. | [optional] 
**Chart** | [**ReleaseChart**](ReleaseChart.md) | Chart is the chart that was released. | [optional] 
**ChartReference** | [**ReleaseChartReference**](ReleaseChartReference.md) | ChartReference are the labels that are used to identify the chart source. | [optional] 
**Config** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) | Config is the set of extra Values added to the chart. These values override the default values inside of the chart. | [optional] 
**Hooks** | [**GithubComPortainerPortainerPkgLibhelmReleaseHook[]**](GithubComPortainerPortainerPkgLibhelmReleaseHook.md) | Hooks are all of the hooks declared for this release. | [optional] 
**Info** | [**GithubComPortainerPortainerPkgLibhelmReleaseInfo**](GithubComPortainerPortainerPkgLibhelmReleaseInfo.md) | Info provides information about a release | [optional] 
**Manifest** | **String** | Manifest is the string representation of the rendered template. | [optional] 
**Name** | **String** | Name is the name of the release | [optional] 
**Namespace** | **String** | Namespace is the kubernetes namespace of the release. | [optional] 
**StackID** | **Int32** | StackID is the ID of the Portainer stack associated with this release (if using GitOps) | [optional] 
**Values** | [**ReleaseValues**](ReleaseValues.md) | Values are the values used to deploy the chart. | [optional] 
**Version** | **Int32** | Version is an int which represents the revision of the release. | [optional] 

## Examples

- Prepare the resource
```powershell
$GithubComPortainerPortainerPkgLibhelmReleaseRelease = Initialize-PSOpenAPIToolsGithubComPortainerPortainerPkgLibhelmReleaseRelease  -AppVersion null `
 -Chart null `
 -ChartReference null `
 -Config null `
 -Hooks null `
 -Info null `
 -Manifest null `
 -Name null `
 -Namespace null `
 -StackID null `
 -Values null `
 -Version null
```

- Convert the resource to JSON
```powershell
$GithubComPortainerPortainerPkgLibhelmReleaseRelease | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

