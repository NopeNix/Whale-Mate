# PortainerTemplateRepository
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Stackfile** | **String** | Path to the stack file inside the git repository | [optional] 
**Url** | **String** | URL of a git repository used to deploy a stack template. Mandatory for a Swarm/Compose stack template | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerTemplateRepository = Initialize-PSOpenAPIToolsPortainerTemplateRepository  -Stackfile ./subfolder/docker-compose.yml `
 -Url https://github.com/portainer/portainer-compose
```

- Convert the resource to JSON
```powershell
$PortainerTemplateRepository | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

