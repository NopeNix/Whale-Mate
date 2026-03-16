# PodsecurityPodSecurityRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowFlexVolumes** | [**PodsecurityPodSecurityAllowFlexVolumes**](PodsecurityPodSecurityAllowFlexVolumes.md) |  | [optional] 
**AllowPrivilegeEscalation** | [**PodsecurityPodSecurityAllowPrivilegeEscalation**](PodsecurityPodSecurityAllowPrivilegeEscalation.md) |  | [optional] 
**AllowProcMount** | [**PodsecurityPodSecurityAllowProcMount**](PodsecurityPodSecurityAllowProcMount.md) |  | [optional] 
**AppArmor** | [**PodsecurityPodSecurityAppArmour**](PodsecurityPodSecurityAppArmour.md) |  | [optional] 
**Capabilities** | [**PodsecurityPodSecurityCapabilities**](PodsecurityPodSecurityCapabilities.md) |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 
**EndPointID** | **Int32** |  | [optional] 
**ForbiddenSysctlsList** | [**PodsecurityPodSecurityForbiddenSysctlsList**](PodsecurityPodSecurityForbiddenSysctlsList.md) |  | [optional] 
**HostFilesystem** | [**PodsecurityPodSecurityHostFilesystem**](PodsecurityPodSecurityHostFilesystem.md) |  | [optional] 
**HostNamespaces** | [**PodsecurityPodSecurityHostNamespaces**](PodsecurityPodSecurityHostNamespaces.md) |  | [optional] 
**HostPorts** | [**PodsecurityPodSecurityHostNetworkingPorts**](PodsecurityPodSecurityHostNetworkingPorts.md) |  | [optional] 
**Id** | **Int32** |  | [optional] 
**PrivilegedContainers** | [**PodsecurityPodSecurityPrivilegedContainers**](PodsecurityPodSecurityPrivilegedContainers.md) |  | [optional] 
**ReadOnlyRootFileSystem** | [**PodsecurityPodSecurityReadOnlyRootFileSystem**](PodsecurityPodSecurityReadOnlyRootFileSystem.md) |  | [optional] 
**RestrictDefaultNamespace** | **Boolean** |  | [optional] 
**RestrictSecrets** | **Boolean** |  | [optional] 
**SecComp** | [**PodsecurityPodSecuritySecComp**](PodsecurityPodSecuritySecComp.md) |  | [optional] 
**Selinux** | [**PodsecurityPodSecuritySelinux**](PodsecurityPodSecuritySelinux.md) |  | [optional] 
**Users** | [**PodsecurityPodSecurityUsers**](PodsecurityPodSecurityUsers.md) |  | [optional] 
**VolumeTypes** | [**PodsecurityPodSecurityVolumeTypes**](PodsecurityPodSecurityVolumeTypes.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PodsecurityPodSecurityRule = Initialize-PSOpenAPIToolsPodsecurityPodSecurityRule  -AllowFlexVolumes null `
 -AllowPrivilegeEscalation null `
 -AllowProcMount null `
 -AppArmor null `
 -Capabilities null `
 -Enabled null `
 -EndPointID null `
 -ForbiddenSysctlsList null `
 -HostFilesystem null `
 -HostNamespaces null `
 -HostPorts null `
 -Id null `
 -PrivilegedContainers null `
 -ReadOnlyRootFileSystem null `
 -RestrictDefaultNamespace null `
 -RestrictSecrets null `
 -SecComp null `
 -Selinux null `
 -Users null `
 -VolumeTypes null
```

- Convert the resource to JSON
```powershell
$PodsecurityPodSecurityRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

