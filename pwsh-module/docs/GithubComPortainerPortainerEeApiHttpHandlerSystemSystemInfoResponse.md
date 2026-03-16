# GithubComPortainerPortainerEeApiHttpHandlerSystemSystemInfoResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Agents** | **Int32** |  | [optional] 
**EdgeAgents** | **Int32** |  | [optional] 
**EdgeDevices** | **Int32** |  | [optional] 
**Platform** | [**PlatformContainerPlatform**](PlatformContainerPlatform.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GithubComPortainerPortainerEeApiHttpHandlerSystemSystemInfoResponse = Initialize-PSOpenAPIToolsGithubComPortainerPortainerEeApiHttpHandlerSystemSystemInfoResponse  -Agents null `
 -EdgeAgents null `
 -EdgeDevices null `
 -Platform null
```

- Convert the resource to JSON
```powershell
$GithubComPortainerPortainerEeApiHttpHandlerSystemSystemInfoResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

