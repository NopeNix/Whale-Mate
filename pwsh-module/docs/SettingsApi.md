# PSOpenAPITools.PSOpenAPITools\Api.SettingsApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DefaultRegistryUpdate**](SettingsApi.md#Invoke-DefaultRegistryUpdate) | **PUT** /settings/default_registry | Update Portainer default registry settings
[**Set-tingsAdditionalFunctionalityInspect**](SettingsApi.md#Set-tingsAdditionalFunctionalityInspect) | **GET** /settings/additional_functionality | Retrieve Portainer additional functionality settings
[**Set-tingsAdditionalFunctionalityUpdate**](SettingsApi.md#Set-tingsAdditionalFunctionalityUpdate) | **PUT** /settings/additional_functionality | Update Portainer additional functionality settings
[**Set-tingsEdgeMTLSCACertificates**](SettingsApi.md#Set-tingsEdgeMTLSCACertificates) | **GET** /settings/edge/mtls_ca_certificate | Retrieve Portainer Edge MTLS CA Certificates
[**Set-tingsEdgeMTLSCertificates**](SettingsApi.md#Set-tingsEdgeMTLSCertificates) | **GET** /settings/edge/mtls_certificate | Retrieve Portainer Edge MTLS Certificates
[**Set-tingsExperimentalInspect**](SettingsApi.md#Set-tingsExperimentalInspect) | **GET** /settings/experimental | Retrieve Portainer experimental settings
[**Set-tingsExperimentalUpdate**](SettingsApi.md#Set-tingsExperimentalUpdate) | **PUT** /settings/experimental | Update Portainer experimental settings
[**Set-tingsInspect**](SettingsApi.md#Set-tingsInspect) | **GET** /settings | Retrieve Portainer settings
[**Set-tingsPublic**](SettingsApi.md#Set-tingsPublic) | **GET** /settings/public | Retrieve Portainer public settings
[**Set-tingsUpdate**](SettingsApi.md#Set-tingsUpdate) | **PUT** /settings | Update Portainer settings


<a id="Invoke-DefaultRegistryUpdate"></a>
# **Invoke-DefaultRegistryUpdate**
> PortainereeSettings Invoke-DefaultRegistryUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update Portainer default registry settings

Update Portainer default registry settings. **Access policy**: administrator

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure API key authorization: ApiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

$SettingsDefaultRegistryUpdatePayload = Initialize-SettingsDefaultRegistryUpdatePayload -Hide $false # SettingsDefaultRegistryUpdatePayload | Update default registry

# Update Portainer default registry settings
try {
    $Result = Invoke-DefaultRegistryUpdate -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-DefaultRegistryUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**SettingsDefaultRegistryUpdatePayload**](SettingsDefaultRegistryUpdatePayload.md)| Update default registry | 

### Return type

[**PortainereeSettings**](PortainereeSettings.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-tingsAdditionalFunctionalityInspect"></a>
# **Set-tingsAdditionalFunctionalityInspect**
> SettingsSettingsAdditionalFunctionalityInspectResponse Set-tingsAdditionalFunctionalityInspect<br>

Retrieve Portainer additional functionality settings

Retrieve Portainer additional functionality settings. **Access policy**: authenticated

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure API key authorization: ApiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"


# Retrieve Portainer additional functionality settings
try {
    $Result = Set-tingsAdditionalFunctionalityInspect
} catch {
    Write-Host ("Exception occurred when calling Set-tingsAdditionalFunctionalityInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SettingsSettingsAdditionalFunctionalityInspectResponse**](SettingsSettingsAdditionalFunctionalityInspectResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-tingsAdditionalFunctionalityUpdate"></a>
# **Set-tingsAdditionalFunctionalityUpdate**
> void Set-tingsAdditionalFunctionalityUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update Portainer additional functionality settings

Update Portainer additional functionality settings. **Access policy**: administrator

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure API key authorization: ApiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

$SettingsSettingsAdditionalFunctionalityUpdatePayload = Initialize-SettingsSettingsAdditionalFunctionalityUpdatePayload -Observability $true -Policies $true # SettingsSettingsAdditionalFunctionalityUpdatePayload | New settings

# Update Portainer additional functionality settings
try {
    $Result = Set-tingsAdditionalFunctionalityUpdate -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Set-tingsAdditionalFunctionalityUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**SettingsSettingsAdditionalFunctionalityUpdatePayload**](SettingsSettingsAdditionalFunctionalityUpdatePayload.md)| New settings | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-tingsEdgeMTLSCACertificates"></a>
# **Set-tingsEdgeMTLSCACertificates**
> SettingsSettingsCACertResponse Set-tingsEdgeMTLSCACertificates<br>

Retrieve Portainer Edge MTLS CA Certificates

Retrieve Portainer Edge MTLS CA Certificates. **Access policy**: administrator

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure API key authorization: ApiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"


# Retrieve Portainer Edge MTLS CA Certificates
try {
    $Result = Set-tingsEdgeMTLSCACertificates
} catch {
    Write-Host ("Exception occurred when calling Set-tingsEdgeMTLSCACertificates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SettingsSettingsCACertResponse**](SettingsSettingsCACertResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-tingsEdgeMTLSCertificates"></a>
# **Set-tingsEdgeMTLSCertificates**
> SettingsSettingsCertResponse Set-tingsEdgeMTLSCertificates<br>

Retrieve Portainer Edge MTLS Certificates

Retrieve Portainer Edge MTLS Certificates. **Access policy**: administrator

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure API key authorization: ApiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"


# Retrieve Portainer Edge MTLS Certificates
try {
    $Result = Set-tingsEdgeMTLSCertificates
} catch {
    Write-Host ("Exception occurred when calling Set-tingsEdgeMTLSCertificates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SettingsSettingsCertResponse**](SettingsSettingsCertResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-tingsExperimentalInspect"></a>
# **Set-tingsExperimentalInspect**
> SettingsSettingsExperimentalInspectResponse Set-tingsExperimentalInspect<br>

Retrieve Portainer experimental settings

Retrieve Portainer experimental settings. **Access policy**: authenticated

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure API key authorization: ApiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"


# Retrieve Portainer experimental settings
try {
    $Result = Set-tingsExperimentalInspect
} catch {
    Write-Host ("Exception occurred when calling Set-tingsExperimentalInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SettingsSettingsExperimentalInspectResponse**](SettingsSettingsExperimentalInspectResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-tingsExperimentalUpdate"></a>
# **Set-tingsExperimentalUpdate**
> void Set-tingsExperimentalUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update Portainer experimental settings

Update Portainer experimental settings. **Access policy**: administrator

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure API key authorization: ApiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

$SettingsSettingsExperimentalUpdatePayload = Initialize-SettingsSettingsExperimentalUpdatePayload -FleetManagement $false # SettingsSettingsExperimentalUpdatePayload | New settings

# Update Portainer experimental settings
try {
    $Result = Set-tingsExperimentalUpdate -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Set-tingsExperimentalUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**SettingsSettingsExperimentalUpdatePayload**](SettingsSettingsExperimentalUpdatePayload.md)| New settings | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-tingsInspect"></a>
# **Set-tingsInspect**
> PortainereeSettings Set-tingsInspect<br>

Retrieve Portainer settings

Retrieve Portainer settings. **Access policy**: administrator

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure API key authorization: ApiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"


# Retrieve Portainer settings
try {
    $Result = Set-tingsInspect
} catch {
    Write-Host ("Exception occurred when calling Set-tingsInspect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PortainereeSettings**](PortainereeSettings.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-tingsPublic"></a>
# **Set-tingsPublic**
> SettingsPublicSettingsResponse Set-tingsPublic<br>

Retrieve Portainer public settings

Retrieve public settings. Returns a small set of settings that are not reserved to administrators only. **Access policy**: public

### Example
```powershell

# Retrieve Portainer public settings
try {
    $Result = Set-tingsPublic
} catch {
    Write-Host ("Exception occurred when calling Set-tingsPublic: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SettingsPublicSettingsResponse**](SettingsPublicSettingsResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-tingsUpdate"></a>
# **Set-tingsUpdate**
> PortainereeSettings Set-tingsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update Portainer settings

Update Portainer settings. **Access policy**: administrator

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: jwt
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure API key authorization: ApiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

$SettingsAutoPatchSettingsPayload = Initialize-SettingsAutoPatchSettingsPayload -Enabled $false -PatchCron "0 0 * * *" -PortainerRepository "portainer/portainer-ee" -RegistryID 1 -UpdaterRepository "portainer/portainer-updater"
$PortainerPair = Initialize-PortainerPair -Name "name" -Value "value"

$SettingsMTLSPayload = Initialize-SettingsMTLSPayload -CaCert "MyCaCert" -Cert "MyCert" -Key "MyKey" -UseSeparateCert $false
$SettingsSettingsUpdatePayloadEdge = Initialize-SettingsSettingsUpdatePayloadEdge -AsyncMode $false -CommandInterval 5 -MTLS $SettingsMTLSPayload -PingInterval 5 -SnapshotInterval 5 -TunnelServerAddress "MyTunnelServerAddress"

$PortainereeGlobalDeploymentOptions = Initialize-PortainereeGlobalDeploymentOptions -HideAddWithForm $false -HideFileUpload $false -HideStacksFunctionality $false -HideWebEditor $false -MinApplicationNoteLength 10 -PerEnvOverride $false -RequireNoteOnApplications $false
$PortainerInternalAuthSettings = Initialize-PortainerInternalAuthSettings -RequiredPasswordLength 0

$PortainerLDAPGroupSearchSettings = Initialize-PortainerLDAPGroupSearchSettings -GroupAttribute "member" -GroupBaseDN "dc=ldap,dc=domain,dc=tld" -GroupFilter "(objectClass=account"
$PortainereeLDAPKerberosSettings = Initialize-PortainereeLDAPKerberosSettings -Configuration "MyConfiguration" -Password "MyPassword" -Realm "MyRealm" -Service "MyService" -Username "MyUsername"
$PortainerLDAPSearchSettings = Initialize-PortainerLDAPSearchSettings -BaseDN "dc=ldap,dc=domain,dc=tld" -VarFilter "(objectClass=account)" -UserNameAttribute "uid"
$PortainerTLSConfiguration = Initialize-PortainerTLSConfiguration -TLS $true -TLSCACert "/data/tls/ca.pem" -TLSCert "/data/tls/cert.pem" -TLSKey "/data/tls/key.pem" -TLSSkipVerify $false
$PortainereeLDAPSettings = Initialize-PortainereeLDAPSettings -AdminAutoPopulate $true -AdminGroupSearchSettings $PortainerLDAPGroupSearchSettings -AdminGroups "MyAdminGroups" -AnonymousMode $true -AutoCreateUsers $true -GroupSearchSettings $PortainerLDAPGroupSearchSettings -Kerberos $PortainereeLDAPKerberosSettings -Password "readonly-password" -ReaderDN "cn=readonly-account,dc=ldap,dc=domain,dc=tld" -SearchSettings $PortainerLDAPSearchSettings -ServerType "0" -StartTLS $true -TLSConfig $PortainerTLSConfiguration -URL "MyURL" -URLs "MyURLs"

$PortainereeOAuthClaimMappings = Initialize-PortainereeOAuthClaimMappings -ClaimValRegex "MyClaimValRegex" -Team 0
$PortainereeTeamMemberships = Initialize-PortainereeTeamMemberships -AdminAutoPopulate $false -AdminGroupClaimsRegexList "MyAdminGroupClaimsRegexList" -OAuthClaimMappings $PortainereeOAuthClaimMappings -OAuthClaimName "MyOAuthClaimName"

$PortainereeOAuthSettings = Initialize-PortainereeOAuthSettings -AccessTokenURI "MyAccessTokenURI" -AuthStyle "0" -AuthorizationURI "MyAuthorizationURI" -ClientID "MyClientID" -ClientSecret "MyClientSecret" -DefaultTeamID 0 -HideInternalAuth $false -KubeSecretKey 0 -LogoutURI "MyLogoutURI" -MicrosoftTenantID "MyMicrosoftTenantID" -OAuthAutoCreateUsers $false -OAuthAutoMapTeamMemberships $false -RedirectURI "MyRedirectURI" -ResourceURI "MyResourceURI" -SSO $false -Scopes "MyScopes" -TeamMemberships $PortainereeTeamMemberships -UserIdentifier "MyUserIdentifier"

$SettingsSettingsUpdatePayload = Initialize-SettingsSettingsUpdatePayload -AuthenticationMethod 1 -AutoPatchSettings $SettingsAutoPatchSettingsPayload -BlackListedLabels $PortainerPair -CustomLoginBanner "notice or agreement" -DisableKubeRolesSync $false -DisableKubeShell $false -DisableKubeconfigDownload $false -Edge $SettingsSettingsUpdatePayloadEdge -EdgeAgentCheckinInterval 5 -EdgePortainerURL "MyEdgePortainerURL" -EnableEdgeComputeFeatures $true -EnforceEdgeID $false -GlobalDeploymentOptions $PortainereeGlobalDeploymentOptions -HelmRepositoryURL "https://charts.bitnami.com/bitnami" -InternalAuthSettings $PortainerInternalAuthSettings -KubeconfigExpiry "24h" -KubectlShellImage "portainer/kubectl-shell:latest" -LDAPSettings $PortainereeLDAPSettings -LogoURL "https://mycompany.mydomain.tld/logo.png" -OAuthSettings $PortainereeOAuthSettings -SnapshotInterval "5m" -TemplatesURL "https://raw.githubusercontent.com/portainer/templates/master/templates.json" -TrustOnFirstConnect $false -UserSessionTimeout "5m" # SettingsSettingsUpdatePayload | New settings

# Update Portainer settings
try {
    $Result = Set-tingsUpdate -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Set-tingsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**SettingsSettingsUpdatePayload**](SettingsSettingsUpdatePayload.md)| New settings | 

### Return type

[**PortainereeSettings**](PortainereeSettings.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

