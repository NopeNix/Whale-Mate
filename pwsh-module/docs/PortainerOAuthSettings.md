# PortainerOAuthSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessTokenURI** | **String** |  | [optional] 
**AuthStyle** | [**Oauth2AuthStyle**](Oauth2AuthStyle.md) |  | [optional] 
**AuthorizationURI** | **String** |  | [optional] 
**ClientID** | **String** |  | [optional] 
**ClientSecret** | **String** |  | [optional] 
**DefaultTeamID** | **Int32** |  | [optional] 
**KubeSecretKey** | **Int32[]** |  | [optional] 
**LogoutURI** | **String** |  | [optional] 
**OAuthAutoCreateUsers** | **Boolean** |  | [optional] 
**RedirectURI** | **String** |  | [optional] 
**ResourceURI** | **String** |  | [optional] 
**SSO** | **Boolean** |  | [optional] 
**Scopes** | **String** |  | [optional] 
**UserIdentifier** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerOAuthSettings = Initialize-PSOpenAPIToolsPortainerOAuthSettings  -AccessTokenURI null `
 -AuthStyle null `
 -AuthorizationURI null `
 -ClientID null `
 -ClientSecret null `
 -DefaultTeamID null `
 -KubeSecretKey null `
 -LogoutURI null `
 -OAuthAutoCreateUsers null `
 -RedirectURI null `
 -ResourceURI null `
 -SSO null `
 -Scopes null `
 -UserIdentifier null
```

- Convert the resource to JSON
```powershell
$PortainerOAuthSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

