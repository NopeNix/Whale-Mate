# PodsecurityPodSecurityUsers
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** |  | [optional] 
**FsGroups** | [**PodsecurityPodSecurityFsGroups**](PodsecurityPodSecurityFsGroups.md) |  | [optional] 
**RunAsGroup** | [**PodsecurityPodSecurityRunAsGroup**](PodsecurityPodSecurityRunAsGroup.md) |  | [optional] 
**RunAsUser** | [**PodsecurityPodSecurityRunAsUser**](PodsecurityPodSecurityRunAsUser.md) |  | [optional] 
**SupplementalGroups** | [**PodsecurityPodSecuritySupplementalGroups**](PodsecurityPodSecuritySupplementalGroups.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PodsecurityPodSecurityUsers = Initialize-PSOpenAPIToolsPodsecurityPodSecurityUsers  -Enabled null `
 -FsGroups null `
 -RunAsGroup null `
 -RunAsUser null `
 -SupplementalGroups null
```

- Convert the resource to JSON
```powershell
$PodsecurityPodSecurityUsers | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

