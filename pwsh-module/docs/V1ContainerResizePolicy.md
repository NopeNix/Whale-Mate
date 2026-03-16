# V1ContainerResizePolicy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ResourceName** | [**V1ResourceName**](V1ResourceName.md) | Name of the resource to which this resource resize policy applies. Supported values: cpu, memory. | [optional] 
**RestartPolicy** | [**V1ResourceResizeRestartPolicy**](V1ResourceResizeRestartPolicy.md) | Restart policy to apply when specified resource is resized. If not specified, it defaults to NotRequired. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1ContainerResizePolicy = Initialize-PSOpenAPIToolsV1ContainerResizePolicy  -ResourceName null `
 -RestartPolicy null
```

- Convert the resource to JSON
```powershell
$V1ContainerResizePolicy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

