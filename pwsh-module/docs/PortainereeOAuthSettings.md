# PortainereeOAuthSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessTokenURI** | **String** |  | [optional] 
**AuthStyle** | [**Oauth2AuthStyle**](Oauth2AuthStyle.md) |  | [optional] 
**AuthorizationURI** | **String** |  | [optional] 
**ClientID** | **String** |  | [optional] 
**ClientSecret** | **String** |  | [optional] 
**DefaultTeamID** | **Int32** |  | [optional] 
**HideInternalAuth** | **Boolean** |  | [optional] 
**KubeSecretKey** | **Int32[]** |  | [optional] 
**LogoutURI** | **String** |  | [optional] 
**MicrosoftTenantID** | **String** |  | [optional] 
**OAuthAutoCreateUsers** | **Boolean** |  | [optional] 
**OAuthAutoMapTeamMemberships** | **Boolean** |  | [optional] 
**RedirectURI** | **String** |  | [optional] 
**ResourceURI** | **String** |  | [optional] 
**SSO** | **Boolean** |  | [optional] 
**Scopes** | **String** |  | [optional] 
**TeamMemberships** | [**PortainereeTeamMemberships**](PortainereeTeamMemberships.md) |  | [optional] 
**UserIdentifier** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeOAuthSettings = Initialize-PSOpenAPIToolsPortainereeOAuthSettings  -AccessTokenURI null `
 -AuthStyle null `
 -AuthorizationURI null `
 -ClientID null `
 -ClientSecret null `
 -DefaultTeamID null `
 -HideInternalAuth null `
 -KubeSecretKey null `
 -LogoutURI null `
 -MicrosoftTenantID null `
 -OAuthAutoCreateUsers null `
 -OAuthAutoMapTeamMemberships null `
 -RedirectURI null `
 -ResourceURI null `
 -SSO null `
 -Scopes null `
 -TeamMemberships null `
 -UserIdentifier null
```

- Convert the resource to JSON
```powershell
$PortainereeOAuthSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

