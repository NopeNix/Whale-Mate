# EdgeDeployerOptionsPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ForceRecreate** | **Boolean** | ForceRecreate is a flag indicating if the agent must force the redeployment of the stack. This field is only used when the Force Redeployment is triggered. Once the stack is redeployed, this field will be reset to false. For standard edge agent, this field is used in agent side For async edge agent, this field is used in both agent side and server side. This flag drives &#x60;docker compose up --force-recreate&#x60; option | [optional] 
**Prune** | **Boolean** | Prune is a flag indicating if the agent must prune the containers or not when creating/updating an edge stack This flag drives &#x60;docker compose up --remove-orphans&#x60; and &#x60;docker stack up --prune&#x60; options Used only for EE | [optional] 
**RemoveVolumes** | **Boolean** | RemoveVolumes is a flag indicating if the agent must remove the named volumes declared in the compose file and anonymouse volumes attached to containers This flag drives &#x60;docker compose down --volumes&#x60; option Used only for EE | [optional] 

## Examples

- Prepare the resource
```powershell
$EdgeDeployerOptionsPayload = Initialize-PSOpenAPIToolsEdgeDeployerOptionsPayload  -ForceRecreate null `
 -Prune null `
 -RemoveVolumes null
```

- Convert the resource to JSON
```powershell
$EdgeDeployerOptionsPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

