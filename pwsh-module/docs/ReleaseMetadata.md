# ReleaseMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Annotations** | **System.Collections.Hashtable** | Annotations are additional mappings uninterpreted by Helm, made available for inspection by other applications. | [optional] 
**ApiVersion** | **String** | The API Version of this chart. Required. | [optional] 
**AppVersion** | **String** | The version of the application enclosed inside of this chart. | [optional] 
**Condition** | **String** | The condition to check to enable chart | [optional] 
**Dependencies** | [**ReleaseDependency[]**](ReleaseDependency.md) | Dependencies are a list of dependencies for a chart. | [optional] 
**Deprecated** | **Boolean** | Whether or not this chart is deprecated | [optional] 
**Description** | **String** | A one-sentence description of the chart | [optional] 
**VarHome** | **String** | The URL to a relevant project page, git repo, or contact person | [optional] 
**Icon** | **String** | The URL to an icon file. | [optional] 
**Keywords** | **String[]** | A list of string keywords | [optional] 
**KubeVersion** | **String** | KubeVersion is a SemVer constraint specifying the version of Kubernetes required. | [optional] 
**Maintainers** | [**ReleaseMaintainer[]**](ReleaseMaintainer.md) | A list of name and URL/email address combinations for the maintainer(s) | [optional] 
**Name** | **String** | The name of the chart. Required. | [optional] 
**Sources** | **String[]** | Source is the URL to the source code of this chart | [optional] 
**Tags** | **String** | The tags to check to enable chart | [optional] 
**Type** | **String** | Specifies the chart type: application or library | [optional] 
**Version** | **String** | A SemVer 2 conformant version string of the chart. Required. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReleaseMetadata = Initialize-PSOpenAPIToolsReleaseMetadata  -Annotations null `
 -ApiVersion null `
 -AppVersion null `
 -Condition null `
 -Dependencies null `
 -Deprecated null `
 -Description null `
 -VarHome null `
 -Icon null `
 -Keywords null `
 -KubeVersion null `
 -Maintainers null `
 -Name null `
 -Sources null `
 -Tags null `
 -Type null `
 -Version null
```

- Convert the resource to JSON
```powershell
$ReleaseMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

