# PortainereeSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdditionalFunctionality** | [**PortainereeAdditionalFunctionality**](PortainereeAdditionalFunctionality.md) | Additional Functionality | [optional] 
**AgentSecret** | **String** | Container environment parameter AGENT_SECRET | [optional] 
**AllowBindMountsForRegularUsers** | **Boolean** |  | [optional] 
**AllowContainerCapabilitiesForRegularUsers** | **Boolean** |  | [optional] 
**AllowDeviceMappingForRegularUsers** | **Boolean** |  | [optional] 
**AllowHostNamespaceForRegularUsers** | **Boolean** |  | [optional] 
**AllowPrivilegedModeForRegularUsers** | **Boolean** |  | [optional] 
**AllowStackManagementForRegularUsers** | **Boolean** |  | [optional] 
**AllowVolumeBrowserForRegularUsers** | **Boolean** |  | [optional] 
**AuthenticationMethod** | [**PortainerAuthenticationMethod**](PortainerAuthenticationMethod.md) | Active authentication method for the Portainer instance. Valid values are: 1 for internal, 2 for LDAP, or 3 for oauth | [optional] 
**AutoPatchSettings** | [**PortainereeAutoPatchSettings**](PortainereeAutoPatchSettings.md) |  | [optional] 
**BlackListedLabels** | [**PortainerPair[]**](PortainerPair.md) | A list of label name &amp; value that will be used to hide containers when querying containers | [optional] 
**CloudApiKeys** | [**PortainereeCloudApiKeys**](PortainereeCloudApiKeys.md) | CloudAPIKeys | [optional] 
**CustomLoginBanner** | **String** | The content in plaintext used to display in the login page. Will hide when value is empty string | [optional] 
**DefaultRegistry** | [**PortainereeSettingsDefaultRegistry**](PortainereeSettingsDefaultRegistry.md) |  | [optional] 
**DisableKubeRolesSync** | **Boolean** | DisableKubeRolesSync will disable the sync of kube roles for all built-in roles | [optional] 
**DisableKubeShell** | **Boolean** | DisableKubeShell will disable the kube shell feature for non-admin users | [optional] 
**DisableKubeconfigDownload** | **Boolean** | DisableKubeconfigDownload will disable the download of kubeconfig files for non-admin users | [optional] 
**DisplayDonationHeader** | **Boolean** | Deprecated fields | [optional] 
**DisplayExternalContributors** | **Boolean** |  | [optional] 
**Edge** | [**PortainereeEdge**](PortainereeEdge.md) |  | [optional] 
**EdgeAgentCheckinInterval** | **Int32** | The default check in interval for edge agent (in seconds) | [optional] 
**EdgePortainerUrl** | **String** | EdgePortainerURL is the URL that is exposed to edge agents | [optional] 
**EnableEdgeComputeFeatures** | **Boolean** | Whether edge compute features are enabled | [optional] 
**EnableHostManagementFeatures** | **Boolean** | Deprecated fields v26 | [optional] 
**EnforceEdgeID** | **Boolean** | EnforceEdgeID makes Portainer store the Edge ID instead of accepting anyone | [optional] 
**ExperimentalFeatures** | [**SystemCollectionsHashtable**](.md) | Experimental features | [optional] 
**FeatureFlagSettings** | **System.Collections.Hashtable** |  | [optional] 
**GlobalDeploymentOptions** | [**PortainereeGlobalDeploymentOptions**](PortainereeGlobalDeploymentOptions.md) | Deployment options for encouraging git ops workflows | [optional] 
**HelmRepositoryURL** | **String** | Helm repository URL, defaults to &quot;&quot;https://charts.bitnami.com/bitnami&quot;&quot; | [optional] 
**InternalAuthSettings** | [**PortainerInternalAuthSettings**](PortainerInternalAuthSettings.md) |  | [optional] 
**IsDockerDesktopExtension** | **Boolean** |  | [optional] 
**KubeconfigExpiry** | **String** | The expiry of a Kubeconfig | [optional] 
**KubectlShellImage** | **String** | KubectlImage, defaults to portainer/kubectl-shell | [optional] 
**LDAPSettings** | [**PortainereeLDAPSettings**](PortainereeLDAPSettings.md) |  | [optional] 
**LogoURL** | **String** | URL to a logo that will be displayed on the login page as well as on top of the sidebar. Will use default Portainer logo when value is empty string | [optional] 
**OAuthSettings** | [**PortainereeOAuthSettings**](PortainereeOAuthSettings.md) |  | [optional] 
**SnapshotInterval** | **String** | The interval in which environment(endpoint) snapshots are created | [optional] 
**TemplatesURL** | **String** | URL to the templates that will be displayed in the UI when navigating to App Templates | [optional] 
**TrustOnFirstConnect** | **Boolean** | TrustOnFirstConnect makes Portainer accepting edge agent connection by default | [optional] 
**UserSessionTimeout** | **String** | The duration of a user session | [optional] 
**OpenAMTConfiguration** | [**PortainerOpenAMTConfiguration**](PortainerOpenAMTConfiguration.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeSettings = Initialize-PSOpenAPIToolsPortainereeSettings  -AdditionalFunctionality null `
 -AgentSecret null `
 -AllowBindMountsForRegularUsers null `
 -AllowContainerCapabilitiesForRegularUsers null `
 -AllowDeviceMappingForRegularUsers null `
 -AllowHostNamespaceForRegularUsers null `
 -AllowPrivilegedModeForRegularUsers null `
 -AllowStackManagementForRegularUsers null `
 -AllowVolumeBrowserForRegularUsers null `
 -AuthenticationMethod null `
 -AutoPatchSettings null `
 -BlackListedLabels null `
 -CloudApiKeys null `
 -CustomLoginBanner null `
 -DefaultRegistry null `
 -DisableKubeRolesSync false `
 -DisableKubeShell false `
 -DisableKubeconfigDownload false `
 -DisplayDonationHeader null `
 -DisplayExternalContributors null `
 -Edge null `
 -EdgeAgentCheckinInterval 5 `
 -EdgePortainerUrl null `
 -EnableEdgeComputeFeatures null `
 -EnableHostManagementFeatures null `
 -EnforceEdgeID false `
 -ExperimentalFeatures null `
 -FeatureFlagSettings null `
 -GlobalDeploymentOptions null `
 -HelmRepositoryURL https://charts.bitnami.com/bitnami `
 -InternalAuthSettings null `
 -IsDockerDesktopExtension null `
 -KubeconfigExpiry 24h `
 -KubectlShellImage portainer/kubectl-shell `
 -LDAPSettings null `
 -LogoURL https://mycompany.mydomain.tld/logo.png `
 -OAuthSettings null `
 -SnapshotInterval 5m `
 -TemplatesURL https://raw.githubusercontent.com/portainer/templates/master/templates.json `
 -TrustOnFirstConnect false `
 -UserSessionTimeout 5m `
 -OpenAMTConfiguration null
```

- Convert the resource to JSON
```powershell
$PortainereeSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

