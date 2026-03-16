# V1LifecycleHandler
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Exec** | [**V1ExecAction**](V1ExecAction.md) | Exec specifies a command to execute in the container. +optional | [optional] 
**HttpGet** | [**V1HTTPGetAction**](V1HTTPGetAction.md) | HTTPGet specifies an HTTP GET request to perform. +optional | [optional] 
**Sleep** | [**V1SleepAction**](V1SleepAction.md) | Sleep represents a duration that the container should sleep. +featureGate&#x3D;PodLifecycleSleepAction +optional | [optional] 
**TcpSocket** | [**V1TCPSocketAction**](V1TCPSocketAction.md) | Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for backward compatibility. There is no validation of this field and lifecycle hooks will fail at runtime when it is specified. +optional | [optional] 

## Examples

- Prepare the resource
```powershell
$V1LifecycleHandler = Initialize-PSOpenAPIToolsV1LifecycleHandler  -Exec null `
 -HttpGet null `
 -Sleep null `
 -TcpSocket null
```

- Convert the resource to JSON
```powershell
$V1LifecycleHandler | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

