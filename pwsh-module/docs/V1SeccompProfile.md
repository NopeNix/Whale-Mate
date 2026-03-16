# V1SeccompProfile
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LocalhostProfile** | **String** | localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet&#39;s configured seccomp profile location. Must be set if type is &quot;&quot;Localhost&quot;&quot;. Must NOT be set for any other type. +optional | [optional] 
**Type** | [**V1SeccompProfileType**](V1SeccompProfileType.md) | type indicates which kind of seccomp profile will be applied. Valid options are:  Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied. +unionDiscriminator | [optional] 

## Examples

- Prepare the resource
```powershell
$V1SeccompProfile = Initialize-PSOpenAPIToolsV1SeccompProfile  -LocalhostProfile null `
 -Type null
```

- Convert the resource to JSON
```powershell
$V1SeccompProfile | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

