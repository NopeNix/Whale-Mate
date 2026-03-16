# PortainereeRegistry
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessToken** | **String** | Stores temporary access token | [optional] 
**AccessTokenExpiry** | **Int32** |  | [optional] 
**Authentication** | **Boolean** | Is authentication against this registry enabled | [optional] 
**AuthorizedTeams** | **Int32[]** | Deprecated in DBVersion &#x3D;&#x3D; 18 | [optional] 
**AuthorizedUsers** | **Int32[]** | Deprecated in DBVersion &#x3D;&#x3D; 18 | [optional] 
**BaseURL** | **String** | Base URL, introduced for ProGet registry | [optional] 
**Ecr** | [**PortainerEcrData**](PortainerEcrData.md) |  | [optional] 
**Github** | [**PortainereeGithubRegistryData**](PortainereeGithubRegistryData.md) | TODO: remove this in 2.34.0 https://linear.app/portainer/issue/R8S-399/ this data is migrated in migrateGithubRegistry_2_32_0 | [optional] 
**Gitlab** | [**PortainerGitlabRegistryData**](PortainerGitlabRegistryData.md) |  | [optional] 
**Id** | **Int32** | Registry Identifier | [optional] 
**ManagementConfiguration** | [**PortainerRegistryManagementConfiguration**](PortainerRegistryManagementConfiguration.md) |  | [optional] 
**Name** | **String** | Registry Name | [optional] 
**Password** | **String** | Password or SecretAccessKey used to authenticate against this registry | [optional] 
**Quay** | [**PortainerQuayRegistryData**](PortainerQuayRegistryData.md) |  | [optional] 
**RegistryAccesses** | [**System.Collections.Hashtable**](PortainerRegistryAccessPolicies.md) |  | [optional] 
**TeamAccessPolicies** | [**System.Collections.Hashtable**](PortainerAccessPolicy.md) | Deprecated in DBVersion &#x3D;&#x3D; 31 | [optional] 
**Type** | [**PortainerRegistryType**](PortainerRegistryType.md) | Registry Type (1 - Quay, 2 - Azure, 3 - Custom, 4 - Gitlab, 5 - ProGet, 6 - DockerHub, 7 - ECR) | [optional] 
**URL** | **String** | URL or IP address of the Docker registry | [optional] 
**UserAccessPolicies** | [**System.Collections.Hashtable**](PortainerAccessPolicy.md) | Deprecated fields Deprecated in DBVersion &#x3D;&#x3D; 31 | [optional] 
**Username** | **String** | Username or AccessKeyID used to authenticate against this registry | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeRegistry = Initialize-PSOpenAPIToolsPortainereeRegistry  -AccessToken null `
 -AccessTokenExpiry null `
 -Authentication true `
 -AuthorizedTeams null `
 -AuthorizedUsers null `
 -BaseURL registry.mydomain.tld:2375 `
 -Ecr null `
 -Github null `
 -Gitlab null `
 -Id 1 `
 -ManagementConfiguration null `
 -Name my-registry `
 -Password registry_password `
 -Quay null `
 -RegistryAccesses null `
 -TeamAccessPolicies null `
 -Type null `
 -URL registry.mydomain.tld:2375 `
 -UserAccessPolicies null `
 -Username registry user
```

- Convert the resource to JSON
```powershell
$PortainereeRegistry | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

