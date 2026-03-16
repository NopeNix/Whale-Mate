# V1ContainerRestartRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | [**V1ContainerRestartRuleAction**](V1ContainerRestartRuleAction.md) | Specifies the action taken on a container exit if the requirements are satisfied. The only possible value is &quot;&quot;Restart&quot;&quot; to restart the container. +required | [optional] 
**ExitCodes** | [**V1ContainerRestartRuleOnExitCodes**](V1ContainerRestartRuleOnExitCodes.md) | Represents the exit codes to check on container exits. +optional +oneOf&#x3D;when | [optional] 

## Examples

- Prepare the resource
```powershell
$V1ContainerRestartRule = Initialize-PSOpenAPIToolsV1ContainerRestartRule  -Action null `
 -ExitCodes null
```

- Convert the resource to JSON
```powershell
$V1ContainerRestartRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

