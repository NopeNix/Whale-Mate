# PortainerTemplateVolume
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Bind** | **String** | Path on the host | [optional] 
**Container** | **String** | Path inside the container | [optional] 
**Readonly** | **Boolean** | Whether the volume used should be readonly | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerTemplateVolume = Initialize-PSOpenAPIToolsPortainerTemplateVolume  -Bind /tmp `
 -Container /data `
 -Readonly true
```

- Convert the resource to JSON
```powershell
$PortainerTemplateVolume | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

