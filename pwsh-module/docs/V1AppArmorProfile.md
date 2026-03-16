# V1AppArmorProfile
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LocalhostProfile** | **String** | localhostProfile indicates a profile loaded on the node that should be used. The profile must be preconfigured on the node to work. Must match the loaded name of the profile. Must be set if and only if type is &quot;&quot;Localhost&quot;&quot;. +optional | [optional] 
**Type** | [**V1AppArmorProfileType**](V1AppArmorProfileType.md) | type indicates which kind of AppArmor profile will be applied. Valid options are:   Localhost - a profile pre-loaded on the node.   RuntimeDefault - the container runtime&#39;s default profile.   Unconfined - no AppArmor enforcement. +unionDiscriminator | [optional] 

## Examples

- Prepare the resource
```powershell
$V1AppArmorProfile = Initialize-PSOpenAPIToolsV1AppArmorProfile  -LocalhostProfile null `
 -Type null
```

- Convert the resource to JSON
```powershell
$V1AppArmorProfile | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

