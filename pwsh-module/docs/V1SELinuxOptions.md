# V1SELinuxOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Level** | **String** | Level is SELinux level label that applies to the container. +optional | [optional] 
**Role** | **String** | Role is a SELinux role label that applies to the container. +optional | [optional] 
**Type** | **String** | Type is a SELinux type label that applies to the container. +optional | [optional] 
**User** | **String** | User is a SELinux user label that applies to the container. +optional | [optional] 

## Examples

- Prepare the resource
```powershell
$V1SELinuxOptions = Initialize-PSOpenAPIToolsV1SELinuxOptions  -Level null `
 -Role null `
 -Type null `
 -User null
```

- Convert the resource to JSON
```powershell
$V1SELinuxOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

