# V1ContainerPort
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContainerPort** | **Int32** | Number of port to expose on the pod&#39;s IP address. This must be a valid port number, 0 &lt; x &lt; 65536. | [optional] 
**HostIP** | **String** | What host IP to bind the external port to. +optional | [optional] 
**HostPort** | **Int32** | Number of port to expose on the host. If specified, this must be a valid port number, 0 &lt; x &lt; 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this. +optional | [optional] 
**Name** | **String** | If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services. +optional | [optional] 
**Protocol** | [**V1Protocol**](V1Protocol.md) | Protocol for port. Must be UDP, TCP, or SCTP. Defaults to &quot;&quot;TCP&quot;&quot;. +optional +default&#x3D;&quot;&quot;TCP&quot;&quot; | [optional] 

## Examples

- Prepare the resource
```powershell
$V1ContainerPort = Initialize-PSOpenAPIToolsV1ContainerPort  -ContainerPort null `
 -HostIP null `
 -HostPort null `
 -Name null `
 -Protocol null
```

- Convert the resource to JSON
```powershell
$V1ContainerPort | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

