# GithubComPortainerPortainerPkgLibhelmReleaseInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Deleted** | **String** | Deleted tracks when this object was deleted. | [optional] 
**Description** | **String** | Description is human-friendly &quot;&quot;log entry&quot;&quot; about this release. | [optional] 
**FirstDeployed** | **String** | FirstDeployed is when the release was first deployed. | [optional] 
**LastDeployed** | **String** | LastDeployed is when the release was last deployed. | [optional] 
**Notes** | **String** | Contains the rendered templates/NOTES.txt if available | [optional] 
**Resources** | [**UnstructuredUnstructured[]**](UnstructuredUnstructured.md) | Resources is the list of resources that are part of the release | [optional] 
**Status** | **String** | Status is the current state of the release | [optional] 

## Examples

- Prepare the resource
```powershell
$GithubComPortainerPortainerPkgLibhelmReleaseInfo = Initialize-PSOpenAPIToolsGithubComPortainerPortainerPkgLibhelmReleaseInfo  -Deleted null `
 -Description null `
 -FirstDeployed null `
 -LastDeployed null `
 -Notes null `
 -Resources null `
 -Status null
```

- Convert the resource to JSON
```powershell
$GithubComPortainerPortainerPkgLibhelmReleaseInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

