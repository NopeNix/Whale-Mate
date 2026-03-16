# ContainerPort
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IP** | **String** | Host IP address that the container&#39;s port is mapped to | [optional] 
**PrivatePort** | **Int32** | Port on the container Required: true | [optional] 
**PublicPort** | **Int32** | Port exposed on the host | [optional] 
**Type** | **String** | type Required: true | [optional] 

## Examples

- Prepare the resource
```powershell
$ContainerPort = Initialize-PSOpenAPIToolsContainerPort  -IP null `
 -PrivatePort null `
 -PublicPort null `
 -Type null
```

- Convert the resource to JSON
```powershell
$ContainerPort | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

