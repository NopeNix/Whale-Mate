# V1TCPSocketAction
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarHost** | **String** | Optional: Host name to connect to, defaults to the pod IP. +optional | [optional] 
**Port** | [**IntstrIntOrString**](IntstrIntOrString.md) | Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1TCPSocketAction = Initialize-PSOpenAPIToolsV1TCPSocketAction  -VarHost null `
 -Port null
```

- Convert the resource to JSON
```powershell
$V1TCPSocketAction | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

