# V1Lifecycle
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PostStart** | [**V1LifecycleHandler**](V1LifecycleHandler.md) | PostStart is called immediately after a container is created. If the handler fails, the container is terminated and restarted according to its restart policy. Other management of the container blocks until the hook completes. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks +optional | [optional] 
**PreStop** | [**V1LifecycleHandler**](V1LifecycleHandler.md) | PreStop is called immediately before a container is terminated due to an API request or management event such as liveness/startup probe failure, preemption, resource contention, etc. The handler is not called if the container crashes or exits. The Pod&#39;s termination grace period countdown begins before the PreStop hook is executed. Regardless of the outcome of the handler, the container will eventually terminate within the Pod&#39;s termination grace period (unless delayed by finalizers). Other management of the container blocks until the hook completes or until the termination grace period is reached. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks +optional | [optional] 
**StopSignal** | [**V1Signal**](V1Signal.md) | StopSignal defines which signal will be sent to a container when it is being stopped. If not specified, the default is defined by the container runtime in use. StopSignal can only be set for Pods with a non-empty .spec.os.name +optional | [optional] 

## Examples

- Prepare the resource
```powershell
$V1Lifecycle = Initialize-PSOpenAPIToolsV1Lifecycle  -PostStart null `
 -PreStop null `
 -StopSignal null
```

- Convert the resource to JSON
```powershell
$V1Lifecycle | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

