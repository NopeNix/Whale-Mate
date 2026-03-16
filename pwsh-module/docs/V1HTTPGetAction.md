# V1HTTPGetAction
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarHost** | **String** | Host name to connect to, defaults to the pod IP. You probably want to set &quot;&quot;Host&quot;&quot; in httpHeaders instead. +optional | [optional] 
**HttpHeaders** | [**V1HTTPHeader[]**](V1HTTPHeader.md) | Custom headers to set in the request. HTTP allows repeated headers. +optional +listType&#x3D;atomic | [optional] 
**Path** | **String** | Path to access on the HTTP server. +optional | [optional] 
**Port** | [**IntstrIntOrString**](IntstrIntOrString.md) | Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. | [optional] 
**Scheme** | [**V1URIScheme**](V1URIScheme.md) | Scheme to use for connecting to the host. Defaults to HTTP. +optional | [optional] 

## Examples

- Prepare the resource
```powershell
$V1HTTPGetAction = Initialize-PSOpenAPIToolsV1HTTPGetAction  -VarHost null `
 -HttpHeaders null `
 -Path null `
 -Port null `
 -Scheme null
```

- Convert the resource to JSON
```powershell
$V1HTTPGetAction | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

