# StacksStackGitRedployPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Env** | [**PortainerPair[]**](PortainerPair.md) |  | [optional] 
**Prune** | **Boolean** |  | [optional] 
**PullImage** | **Boolean** | Deprecated(2.36): use RepullImageAndRedeploy instead for cleaner responsibility Force a pulling to current image with the original tag though the image is already the latest | [optional] 
**RepositoryAuthentication** | **Boolean** |  | [optional] 
**RepositoryAuthorizationType** | [**GittypesGitCredentialAuthType**](GittypesGitCredentialAuthType.md) |  | [optional] 
**RepositoryGitCredentialID** | **Int32** |  | [optional] 
**RepositoryPassword** | **String** |  | [optional] 
**RepositoryReferenceName** | **String** |  | [optional] 
**RepositoryUsername** | **String** |  | [optional] 
**RepullImageAndRedeploy** | **Boolean** | RepullImageAndRedeploy indicates whether to force repulling images and redeploying the stack | [optional] 
**StackName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StacksStackGitRedployPayload = Initialize-PSOpenAPIToolsStacksStackGitRedployPayload  -Env null `
 -Prune false `
 -PullImage false `
 -RepositoryAuthentication null `
 -RepositoryAuthorizationType null `
 -RepositoryGitCredentialID null `
 -RepositoryPassword null `
 -RepositoryReferenceName null `
 -RepositoryUsername null `
 -RepullImageAndRedeploy null `
 -StackName null
```

- Convert the resource to JSON
```powershell
$StacksStackGitRedployPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

