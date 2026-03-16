# CustomtemplatesCustomTemplateUpdatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ComposeFilePathInRepository** | **String** | Path to the Stack file inside the Git repository | [optional] [default to "docker-compose.yml"]
**Description** | **String** | Description of the template | 
**EdgeSettings** | [**PortainereeCustomTemplateEdgeSettings**](PortainereeCustomTemplateEdgeSettings.md) |  | [optional] 
**EdgeTemplate** | **Boolean** | EdgeTemplate indicates if this template purpose for Edge Stack | [optional] 
**FileContent** | **String** | Content of stack file | 
**IsComposeFormat** | **Boolean** | IsComposeFormat indicates if the Kubernetes template is created from a Docker Compose file | [optional] 
**Logo** | **String** | URL of the template&#39;s logo | [optional] 
**Note** | **String** | A note that will be displayed in the UI. Supports HTML content | [optional] 
**Platform** | [**PortainerCustomTemplatePlatform**](PortainerCustomTemplatePlatform.md) | Platform associated to the template. Valid values are: 1 - &#39;linux&#39;, 2 - &#39;windows&#39; Required for Docker stacks | [optional] 
**RepositoryAuthentication** | **Boolean** | Use authentication to clone the Git repository | [optional] 
**RepositoryAuthorizationType** | [**GittypesGitCredentialAuthType**](GittypesGitCredentialAuthType.md) | RepositoryAuthorizationType is the authorization type to use | [optional] 
**RepositoryGitCredentialID** | **Int32** | GitCredentialID used to identify the bound git credential. Required when RepositoryAuthentication is true and RepositoryUsername/RepositoryPassword are not provided | [optional] 
**RepositoryPassword** | **String** | Password used in basic authentication or token used in token authentication. Required when RepositoryAuthentication is true and RepositoryGitCredentialID is 0 | [optional] 
**RepositoryReferenceName** | **String** | Reference name of a Git repository hosting the Stack file | [optional] 
**RepositoryURL** | **String** | URL of a Git repository hosting the Stack file | 
**RepositoryUsername** | **String** | Username used in basic authentication. Required when RepositoryAuthentication is true and RepositoryGitCredentialID is 0. Ignored if RepositoryAuthType is token | [optional] 
**TLSSkipVerify** | **Boolean** | TLSSkipVerify skips SSL verification when cloning the Git repository | [optional] 
**Title** | **String** | Title of the template | 
**Type** | [**PortainerStackType**](PortainerStackType.md) | Type of created stack (1 - swarm, 2 - compose, 3 - kubernetes) | 
**Variables** | [**PortainerCustomTemplateVariableDefinition[]**](PortainerCustomTemplateVariableDefinition.md) | Definitions of variables in the stack file | [optional] 

## Examples

- Prepare the resource
```powershell
$CustomtemplatesCustomTemplateUpdatePayload = Initialize-PSOpenAPIToolsCustomtemplatesCustomTemplateUpdatePayload  -ComposeFilePathInRepository docker-compose.yml `
 -Description High performance web server `
 -EdgeSettings null `
 -EdgeTemplate false `
 -FileContent null `
 -IsComposeFormat false `
 -Logo https://portainer.io/img/logo.svg `
 -Note This is my &lt;b&gt;custom&lt;/b&gt; template `
 -Platform null `
 -RepositoryAuthentication true `
 -RepositoryAuthorizationType null `
 -RepositoryGitCredentialID 0 `
 -RepositoryPassword myGitPassword `
 -RepositoryReferenceName refs/heads/master `
 -RepositoryURL https://github.com/openfaas/faas `
 -RepositoryUsername myGitUsername `
 -TLSSkipVerify false `
 -Title Nginx `
 -Type null `
 -Variables null
```

- Convert the resource to JSON
```powershell
$CustomtemplatesCustomTemplateUpdatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

