# V1ContainerRestartRuleOnExitCodes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operator** | [**V1ContainerRestartRuleOnExitCodesOperator**](V1ContainerRestartRuleOnExitCodesOperator.md) | Represents the relationship between the container exit code(s) and the specified values. Possible values are: - In: the requirement is satisfied if the container exit code is in the   set of specified values. - NotIn: the requirement is satisfied if the container exit code is   not in the set of specified values. +required | [optional] 
**Values** | **Int32[]** | Specifies the set of values to check for container exit codes. At most 255 elements are allowed. +optional +listType&#x3D;set | [optional] 

## Examples

- Prepare the resource
```powershell
$V1ContainerRestartRuleOnExitCodes = Initialize-PSOpenAPIToolsV1ContainerRestartRuleOnExitCodes  -Operator null `
 -Values null
```

- Convert the resource to JSON
```powershell
$V1ContainerRestartRuleOnExitCodes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

