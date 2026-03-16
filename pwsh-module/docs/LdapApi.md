# PSOpenAPITools.PSOpenAPITools\Api.LdapApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-LDAPAdminGroups**](LdapApi.md#Invoke-LDAPAdminGroups) | **POST** /ldap/admin-groups | Fetch LDAP admin groups
[**Invoke-LDAPCheck**](LdapApi.md#Invoke-LDAPCheck) | **POST** /ldap/check | Test LDAP connectivity
[**Invoke-LDAPGroups**](LdapApi.md#Invoke-LDAPGroups) | **POST** /ldap/groups | Search LDAP Groups
[**Invoke-LDAPTestLogin**](LdapApi.md#Invoke-LDAPTestLogin) | **POST** /ldap/test | Test Login to ldap server
[**Invoke-LDAPUsers**](LdapApi.md#Invoke-LDAPUsers) | **POST** /ldap/users | Search LDAP Users


<a id="Invoke-LDAPAdminGroups"></a>
# **Invoke-LDAPAdminGroups**
> String[] Invoke-LDAPAdminGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Fetch LDAP admin groups

Fetch LDAP admin groups from LDAP server based on AdminGroupSearchSettings **Access policy**: administrator

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

$PortainerLDAPGroupSearchSettings = Initialize-PortainerLDAPGroupSearchSettings -GroupAttribute "member" -GroupBaseDN "dc=ldap,dc=domain,dc=tld" -GroupFilter "(objectClass=account"
$PortainereeLDAPKerberosSettings = Initialize-PortainereeLDAPKerberosSettings -Configuration "MyConfiguration" -Password "MyPassword" -Realm "MyRealm" -Service "MyService" -Username "MyUsername"
$PortainerLDAPSearchSettings = Initialize-PortainerLDAPSearchSettings -BaseDN "dc=ldap,dc=domain,dc=tld" -VarFilter "(objectClass=account)" -UserNameAttribute "uid"
$PortainerTLSConfiguration = Initialize-PortainerTLSConfiguration -TLS $true -TLSCACert "/data/tls/ca.pem" -TLSCert "/data/tls/cert.pem" -TLSKey "/data/tls/key.pem" -TLSSkipVerify $false
$PortainereeLDAPSettings = Initialize-PortainereeLDAPSettings -AdminAutoPopulate $true -AdminGroupSearchSettings $PortainerLDAPGroupSearchSettings -AdminGroups "MyAdminGroups" -AnonymousMode $true -AutoCreateUsers $true -GroupSearchSettings $PortainerLDAPGroupSearchSettings -Kerberos $PortainereeLDAPKerberosSettings -Password "readonly-password" -ReaderDN "cn=readonly-account,dc=ldap,dc=domain,dc=tld" -SearchSettings $PortainerLDAPSearchSettings -ServerType "0" -StartTLS $true -TLSConfig $PortainerTLSConfiguration -URL "MyURL" -URLs "MyURLs"

$LdapAdminGroupsPayload = Initialize-LdapAdminGroupsPayload -LDAPSettings $PortainereeLDAPSettings # LdapAdminGroupsPayload | LDAPSettings

# Fetch LDAP admin groups
try {
    $Result = Invoke-LDAPAdminGroups -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-LDAPAdminGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**LdapAdminGroupsPayload**](LdapAdminGroupsPayload.md)| LDAPSettings | 

### Return type

**String[]**

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LDAPCheck"></a>
# **Invoke-LDAPCheck**
> void Invoke-LDAPCheck<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Test LDAP connectivity

Test LDAP connectivity using LDAP details **Access policy**: administrator

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

$PortainerLDAPGroupSearchSettings = Initialize-PortainerLDAPGroupSearchSettings -GroupAttribute "member" -GroupBaseDN "dc=ldap,dc=domain,dc=tld" -GroupFilter "(objectClass=account"
$PortainereeLDAPKerberosSettings = Initialize-PortainereeLDAPKerberosSettings -Configuration "MyConfiguration" -Password "MyPassword" -Realm "MyRealm" -Service "MyService" -Username "MyUsername"
$PortainerLDAPSearchSettings = Initialize-PortainerLDAPSearchSettings -BaseDN "dc=ldap,dc=domain,dc=tld" -VarFilter "(objectClass=account)" -UserNameAttribute "uid"
$PortainerTLSConfiguration = Initialize-PortainerTLSConfiguration -TLS $true -TLSCACert "/data/tls/ca.pem" -TLSCert "/data/tls/cert.pem" -TLSKey "/data/tls/key.pem" -TLSSkipVerify $false
$PortainereeLDAPSettings = Initialize-PortainereeLDAPSettings -AdminAutoPopulate $true -AdminGroupSearchSettings $PortainerLDAPGroupSearchSettings -AdminGroups "MyAdminGroups" -AnonymousMode $true -AutoCreateUsers $true -GroupSearchSettings $PortainerLDAPGroupSearchSettings -Kerberos $PortainereeLDAPKerberosSettings -Password "readonly-password" -ReaderDN "cn=readonly-account,dc=ldap,dc=domain,dc=tld" -SearchSettings $PortainerLDAPSearchSettings -ServerType "0" -StartTLS $true -TLSConfig $PortainerTLSConfiguration -URL "MyURL" -URLs "MyURLs"

$LdapCheckPayload = Initialize-LdapCheckPayload -LDAPSettings $PortainereeLDAPSettings # LdapCheckPayload | details

# Test LDAP connectivity
try {
    $Result = Invoke-LDAPCheck -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-LDAPCheck: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**LdapCheckPayload**](LdapCheckPayload.md)| details | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LDAPGroups"></a>
# **Invoke-LDAPGroups**
> PortainerLDAPUser[] Invoke-LDAPGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Search LDAP Groups

**Access policy**: administrator

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

$PortainerLDAPGroupSearchSettings = Initialize-PortainerLDAPGroupSearchSettings -GroupAttribute "member" -GroupBaseDN "dc=ldap,dc=domain,dc=tld" -GroupFilter "(objectClass=account"
$PortainereeLDAPKerberosSettings = Initialize-PortainereeLDAPKerberosSettings -Configuration "MyConfiguration" -Password "MyPassword" -Realm "MyRealm" -Service "MyService" -Username "MyUsername"
$PortainerLDAPSearchSettings = Initialize-PortainerLDAPSearchSettings -BaseDN "dc=ldap,dc=domain,dc=tld" -VarFilter "(objectClass=account)" -UserNameAttribute "uid"
$PortainerTLSConfiguration = Initialize-PortainerTLSConfiguration -TLS $true -TLSCACert "/data/tls/ca.pem" -TLSCert "/data/tls/cert.pem" -TLSKey "/data/tls/key.pem" -TLSSkipVerify $false
$PortainereeLDAPSettings = Initialize-PortainereeLDAPSettings -AdminAutoPopulate $true -AdminGroupSearchSettings $PortainerLDAPGroupSearchSettings -AdminGroups "MyAdminGroups" -AnonymousMode $true -AutoCreateUsers $true -GroupSearchSettings $PortainerLDAPGroupSearchSettings -Kerberos $PortainereeLDAPKerberosSettings -Password "readonly-password" -ReaderDN "cn=readonly-account,dc=ldap,dc=domain,dc=tld" -SearchSettings $PortainerLDAPSearchSettings -ServerType "0" -StartTLS $true -TLSConfig $PortainerTLSConfiguration -URL "MyURL" -URLs "MyURLs"

$LdapGroupsPayload = Initialize-LdapGroupsPayload -LDAPSettings $PortainereeLDAPSettings # LdapGroupsPayload | details

# Search LDAP Groups
try {
    $Result = Invoke-LDAPGroups -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-LDAPGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**LdapGroupsPayload**](LdapGroupsPayload.md)| details | 

### Return type

[**PortainerLDAPUser[]**](PortainerLDAPUser.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LDAPTestLogin"></a>
# **Invoke-LDAPTestLogin**
> LdapTestLoginResponse Invoke-LDAPTestLogin<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Test Login to ldap server

**Access policy**: administrator

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

$PortainerLDAPGroupSearchSettings = Initialize-PortainerLDAPGroupSearchSettings -GroupAttribute "member" -GroupBaseDN "dc=ldap,dc=domain,dc=tld" -GroupFilter "(objectClass=account"
$PortainereeLDAPKerberosSettings = Initialize-PortainereeLDAPKerberosSettings -Configuration "MyConfiguration" -Password "MyPassword" -Realm "MyRealm" -Service "MyService" -Username "MyUsername"
$PortainerLDAPSearchSettings = Initialize-PortainerLDAPSearchSettings -BaseDN "dc=ldap,dc=domain,dc=tld" -VarFilter "(objectClass=account)" -UserNameAttribute "uid"
$PortainerTLSConfiguration = Initialize-PortainerTLSConfiguration -TLS $true -TLSCACert "/data/tls/ca.pem" -TLSCert "/data/tls/cert.pem" -TLSKey "/data/tls/key.pem" -TLSSkipVerify $false
$PortainereeLDAPSettings = Initialize-PortainereeLDAPSettings -AdminAutoPopulate $true -AdminGroupSearchSettings $PortainerLDAPGroupSearchSettings -AdminGroups "MyAdminGroups" -AnonymousMode $true -AutoCreateUsers $true -GroupSearchSettings $PortainerLDAPGroupSearchSettings -Kerberos $PortainereeLDAPKerberosSettings -Password "readonly-password" -ReaderDN "cn=readonly-account,dc=ldap,dc=domain,dc=tld" -SearchSettings $PortainerLDAPSearchSettings -ServerType "0" -StartTLS $true -TLSConfig $PortainerTLSConfiguration -URL "MyURL" -URLs "MyURLs"

$LdapTestLoginPayload = Initialize-LdapTestLoginPayload -LDAPSettings $PortainereeLDAPSettings -Password "MyPassword" -Username "MyUsername" # LdapTestLoginPayload | details

# Test Login to ldap server
try {
    $Result = Invoke-LDAPTestLogin -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-LDAPTestLogin: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**LdapTestLoginPayload**](LdapTestLoginPayload.md)| details | 

### Return type

[**LdapTestLoginResponse**](LdapTestLoginResponse.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LDAPUsers"></a>
# **Invoke-LDAPUsers**
> PortainerLDAPUser[] Invoke-LDAPUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Search LDAP Users

**Access policy**: administrator

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

$PortainerLDAPGroupSearchSettings = Initialize-PortainerLDAPGroupSearchSettings -GroupAttribute "member" -GroupBaseDN "dc=ldap,dc=domain,dc=tld" -GroupFilter "(objectClass=account"
$PortainereeLDAPKerberosSettings = Initialize-PortainereeLDAPKerberosSettings -Configuration "MyConfiguration" -Password "MyPassword" -Realm "MyRealm" -Service "MyService" -Username "MyUsername"
$PortainerLDAPSearchSettings = Initialize-PortainerLDAPSearchSettings -BaseDN "dc=ldap,dc=domain,dc=tld" -VarFilter "(objectClass=account)" -UserNameAttribute "uid"
$PortainerTLSConfiguration = Initialize-PortainerTLSConfiguration -TLS $true -TLSCACert "/data/tls/ca.pem" -TLSCert "/data/tls/cert.pem" -TLSKey "/data/tls/key.pem" -TLSSkipVerify $false
$PortainereeLDAPSettings = Initialize-PortainereeLDAPSettings -AdminAutoPopulate $true -AdminGroupSearchSettings $PortainerLDAPGroupSearchSettings -AdminGroups "MyAdminGroups" -AnonymousMode $true -AutoCreateUsers $true -GroupSearchSettings $PortainerLDAPGroupSearchSettings -Kerberos $PortainereeLDAPKerberosSettings -Password "readonly-password" -ReaderDN "cn=readonly-account,dc=ldap,dc=domain,dc=tld" -SearchSettings $PortainerLDAPSearchSettings -ServerType "0" -StartTLS $true -TLSConfig $PortainerTLSConfiguration -URL "MyURL" -URLs "MyURLs"

$LdapUsersPayload = Initialize-LdapUsersPayload -LDAPSettings $PortainereeLDAPSettings # LdapUsersPayload | details

# Search LDAP Users
try {
    $Result = Invoke-LDAPUsers -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-LDAPUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**LdapUsersPayload**](LdapUsersPayload.md)| details | 

### Return type

[**PortainerLDAPUser[]**](PortainerLDAPUser.md) (PSCustomObject)

### Authorization

[jwt](../README.md#jwt), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

