# V1VolumeDevice
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DevicePath** | **String** | devicePath is the path inside of the container that the device will be mapped to. | [optional] 
**Name** | **String** | name must match the name of a persistentVolumeClaim in the pod | [optional] 

## Examples

- Prepare the resource
```powershell
$V1VolumeDevice = Initialize-PSOpenAPIToolsV1VolumeDevice  -DevicePath null `
 -Name null
```

- Convert the resource to JSON
```powershell
$V1VolumeDevice | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

