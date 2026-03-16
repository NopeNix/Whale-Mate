# V1Probe
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Exec** | [**V1ExecAction**](V1ExecAction.md) | Exec specifies a command to execute in the container. +optional | [optional] 
**FailureThreshold** | **Int32** | Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1. +optional | [optional] 
**Grpc** | [**V1GRPCAction**](V1GRPCAction.md) | GRPC specifies a GRPC HealthCheckRequest. +optional | [optional] 
**HttpGet** | [**V1HTTPGetAction**](V1HTTPGetAction.md) | HTTPGet specifies an HTTP GET request to perform. +optional | [optional] 
**InitialDelaySeconds** | **Int32** | Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes +optional | [optional] 
**PeriodSeconds** | **Int32** | How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. +optional | [optional] 
**SuccessThreshold** | **Int32** | Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1. +optional | [optional] 
**TcpSocket** | [**V1TCPSocketAction**](V1TCPSocketAction.md) | TCPSocket specifies a connection to a TCP port. +optional | [optional] 
**TerminationGracePeriodSeconds** | **Int32** | Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod&#39;s terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is a beta field and requires enabling ProbeTerminationGracePeriod feature gate. Minimum value is 1. spec.terminationGracePeriodSeconds is used if unset. +optional | [optional] 
**TimeoutSeconds** | **Int32** | Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes +optional | [optional] 

## Examples

- Prepare the resource
```powershell
$V1Probe = Initialize-PSOpenAPIToolsV1Probe  -Exec null `
 -FailureThreshold null `
 -Grpc null `
 -HttpGet null `
 -InitialDelaySeconds null `
 -PeriodSeconds null `
 -SuccessThreshold null `
 -TcpSocket null `
 -TerminationGracePeriodSeconds null `
 -TimeoutSeconds null
```

- Convert the resource to JSON
```powershell
$V1Probe | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

