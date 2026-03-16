# PortainereeCustomTemplateRelativePathSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FilesystemPath** | **String** | Local filesystem path | [optional] 
**PerDeviceConfigsGroupMatchType** | [**PortainerPerDevConfigsFilterType**](PortainerPerDevConfigsFilterType.md) | Per device configs group match type | [optional] 
**PerDeviceConfigsMatchType** | [**PortainerPerDevConfigsFilterType**](PortainerPerDevConfigsFilterType.md) | Per device configs match type | [optional] 
**PerDeviceConfigsPath** | **String** | Per device configs path | [optional] 
**SupportPerDeviceConfigs** | **Boolean** | Whether the edge stack supports per device configs | [optional] 
**SupportRelativePath** | **Boolean** | Whether the stack supports relative path volume | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeCustomTemplateRelativePathSettings = Initialize-PSOpenAPIToolsPortainereeCustomTemplateRelativePathSettings  -FilesystemPath /tmp `
 -PerDeviceConfigsGroupMatchType null `
 -PerDeviceConfigsMatchType null `
 -PerDeviceConfigsPath configs `
 -SupportPerDeviceConfigs false `
 -SupportRelativePath false
```

- Convert the resource to JSON
```powershell
$PortainereeCustomTemplateRelativePathSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

