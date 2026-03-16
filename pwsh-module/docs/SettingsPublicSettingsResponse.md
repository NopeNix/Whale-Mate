# SettingsPublicSettingsResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthenticationMethod** | [**PortainerAuthenticationMethod**](PortainerAuthenticationMethod.md) | Active authentication method for the Portainer instance. Valid values are: 1 for internal, 2 for LDAP, or 3 for oauth | [optional] 
**AutoPatchSettings** | [**SettingsAutoPatchResponse**](SettingsAutoPatchResponse.md) |  | [optional] 
**CustomLoginBanner** | **String** | The content in plaintext used to display in the login page. Will hide when value is empty string | [optional] 
**DefaultRegistry** | [**SettingsPublicSettingsResponseDefaultRegistry**](SettingsPublicSettingsResponseDefaultRegistry.md) |  | [optional] 
**DisableKubeShell** | **Boolean** | DisableKubeShell will disable the kube shell feature for non-admin users | [optional] 
**DisableKubeconfigDownload** | **Boolean** | DisableKubeconfigDownload will disable the download of kubeconfig files for non-admin users | [optional] 
**Edge** | [**SettingsPublicSettingsResponseEdge**](SettingsPublicSettingsResponseEdge.md) |  | [optional] 
**EnableEdgeComputeFeatures** | **Boolean** | Whether edge compute features are enabled | [optional] 
**FIPSMode** | **Boolean** | Whether FIPS mode is enabled | [optional] 
**Features** | **System.Collections.Hashtable** | Supported feature flags | [optional] 
**GlobalDeploymentOptions** | [**PortainereeGlobalDeploymentOptions**](PortainereeGlobalDeploymentOptions.md) | Deployment options for encouraging deployment as code | [optional] 
**IsAMTEnabled** | **Boolean** | Whether AMT is enabled | [optional] 
**IsObservabilityEnabled** | **Boolean** | Whether observability is enabled | [optional] 
**KubeconfigExpiry** | **String** | The expiry of a Kubeconfig | [optional] [default to "0"]
**LogoURL** | **String** | URL to a logo that will be displayed on the login page as well as on top of the sidebar. Will use default Portainer logo when value is empty string | [optional] 
**OAuthHideInternalAuth** | **Boolean** | Whether portainer internal auth view will be hidden | [optional] 
**OAuthLoginURI** | **String** | The URL used for oauth login | [optional] 
**OAuthLogoutURI** | **String** | The URL used for oauth logout | [optional] 
**RequiredPasswordLength** | **Int32** | The minimum required length for a password of any user when using internal auth mode | [optional] 
**TeamSync** | **Boolean** | Whether team sync is enabled | [optional] 
**Whitelabel** | **String** | The display name of the app | [optional] 

## Examples

- Prepare the resource
```powershell
$SettingsPublicSettingsResponse = Initialize-PSOpenAPIToolsSettingsPublicSettingsResponse  -AuthenticationMethod null `
 -AutoPatchSettings null `
 -CustomLoginBanner notice or agreement `
 -DefaultRegistry null `
 -DisableKubeShell false `
 -DisableKubeconfigDownload false `
 -Edge null `
 -EnableEdgeComputeFeatures true `
 -FIPSMode null `
 -Features null `
 -GlobalDeploymentOptions null `
 -IsAMTEnabled null `
 -IsObservabilityEnabled null `
 -KubeconfigExpiry 24h `
 -LogoURL https://mycompany.mydomain.tld/logo.png `
 -OAuthHideInternalAuth true `
 -OAuthLoginURI https://gitlab.com/oauth `
 -OAuthLogoutURI https://gitlab.com/oauth/logout `
 -RequiredPasswordLength 1 `
 -TeamSync true `
 -Whitelabel My Company
```

- Convert the resource to JSON
```powershell
$SettingsPublicSettingsResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

