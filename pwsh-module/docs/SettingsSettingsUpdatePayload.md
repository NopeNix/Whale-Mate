# SettingsSettingsUpdatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthenticationMethod** | **Int32** | Active authentication method for the Portainer instance. Valid values are: 1 for internal, 2 for LDAP, or 3 for oauth | [optional] 
**AutoPatchSettings** | [**SettingsAutoPatchSettingsPayload**](SettingsAutoPatchSettingsPayload.md) | Whether to enable automatic patches | [optional] 
**BlackListedLabels** | [**PortainerPair[]**](PortainerPair.md) | A list of label name &amp; value that will be used to hide containers when querying containers | [optional] 
**CustomLoginBanner** | **String** | The content in plaintext used to display in the login page. Will hide when value is empty string | [optional] 
**DisableKubeRolesSync** | **Boolean** | Whether to disable kube roles sync for all built-in roles | [optional] 
**DisableKubeShell** | **Boolean** | Whether to disable kubeshell access for non-admin users | [optional] 
**DisableKubeconfigDownload** | **Boolean** | Whether to disable kubeconfig download for non-admin users | [optional] 
**Edge** | [**SettingsSettingsUpdatePayloadEdge**](SettingsSettingsUpdatePayloadEdge.md) |  | [optional] 
**EdgeAgentCheckinInterval** | **Int32** | The default check in interval for edge agent (in seconds) | [optional] 
**EdgePortainerURL** | **String** | EdgePortainerURL is the URL that is exposed to edge agents | [optional] 
**EnableEdgeComputeFeatures** | **Boolean** | Whether edge compute features are enabled | [optional] 
**EnforceEdgeID** | **Boolean** | EnforceEdgeID makes Portainer store the Edge ID instead of accepting anyone | [optional] 
**GlobalDeploymentOptions** | [**PortainereeGlobalDeploymentOptions**](PortainereeGlobalDeploymentOptions.md) | Deployment options for encouraging deployment as code | [optional] 
**HelmRepositoryURL** | **String** | Helm repository URL | [optional] 
**InternalAuthSettings** | [**PortainerInternalAuthSettings**](PortainerInternalAuthSettings.md) |  | [optional] 
**KubeconfigExpiry** | **String** | The expiry of a Kubeconfig | [optional] [default to "0"]
**KubectlShellImage** | **String** | Kubec tl Shell Image Name/Tag | [optional] 
**LDAPSettings** | [**PortainereeLDAPSettings**](PortainereeLDAPSettings.md) |  | [optional] 
**LogoURL** | **String** | URL to a logo that will be displayed on the login page as well as on top of the sidebar. Will use default Portainer logo when value is empty string | [optional] 
**OAuthSettings** | [**PortainereeOAuthSettings**](PortainereeOAuthSettings.md) |  | [optional] 
**SnapshotInterval** | **String** | The interval in which environment(endpoint) snapshots are created | [optional] 
**TemplatesURL** | **String** | URL to the templates that will be displayed in the UI when navigating to App Templates | [optional] 
**TrustOnFirstConnect** | **Boolean** | TrustOnFirstConnect makes Portainer accepting edge agent connection by default | [optional] 
**UserSessionTimeout** | **String** | The duration of a user session | [optional] 

## Examples

- Prepare the resource
```powershell
$SettingsSettingsUpdatePayload = Initialize-PSOpenAPIToolsSettingsSettingsUpdatePayload  -AuthenticationMethod 1 `
 -AutoPatchSettings null `
 -BlackListedLabels null `
 -CustomLoginBanner notice or agreement `
 -DisableKubeRolesSync false `
 -DisableKubeShell false `
 -DisableKubeconfigDownload false `
 -Edge null `
 -EdgeAgentCheckinInterval 5 `
 -EdgePortainerURL null `
 -EnableEdgeComputeFeatures true `
 -EnforceEdgeID false `
 -GlobalDeploymentOptions null `
 -HelmRepositoryURL https://charts.bitnami.com/bitnami `
 -InternalAuthSettings null `
 -KubeconfigExpiry 24h `
 -KubectlShellImage portainer/kubectl-shell:latest `
 -LDAPSettings null `
 -LogoURL https://mycompany.mydomain.tld/logo.png `
 -OAuthSettings null `
 -SnapshotInterval 5m `
 -TemplatesURL https://raw.githubusercontent.com/portainer/templates/master/templates.json `
 -TrustOnFirstConnect false `
 -UserSessionTimeout 5m
```

- Convert the resource to JSON
```powershell
$SettingsSettingsUpdatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

