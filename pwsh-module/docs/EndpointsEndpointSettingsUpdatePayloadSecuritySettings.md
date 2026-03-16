# EndpointsEndpointSettingsUpdatePayloadSecuritySettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowBindMountsForRegularUsers** | **Boolean** | Whether non-administrator should be able to use bind mounts when creating containers | [optional] 
**AllowContainerCapabilitiesForRegularUsers** | **Boolean** | Whether non-administrator should be able to use container capabilities | [optional] 
**AllowDeviceMappingForRegularUsers** | **Boolean** | Whether non-administrator should be able to use device mapping | [optional] 
**AllowHostNamespaceForRegularUsers** | **Boolean** | Whether non-administrator should be able to use the host pid | [optional] 
**AllowPrivilegedModeForRegularUsers** | **Boolean** | Whether non-administrator should be able to use privileged mode when creating containers | [optional] 
**AllowStackManagementForRegularUsers** | **Boolean** | Whether non-administrator should be able to manage stacks | [optional] 
**AllowSysctlSettingForRegularUsers** | **Boolean** | Whether non-administrator should be able to use sysctl settings | [optional] 
**AllowVolumeBrowserForRegularUsers** | **Boolean** | Whether non-administrator should be able to browse volumes | [optional] 
**EnableHostManagementFeatures** | **Boolean** | Whether host management features are enabled | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointsEndpointSettingsUpdatePayloadSecuritySettings = Initialize-PSOpenAPIToolsEndpointsEndpointSettingsUpdatePayloadSecuritySettings  -AllowBindMountsForRegularUsers false `
 -AllowContainerCapabilitiesForRegularUsers true `
 -AllowDeviceMappingForRegularUsers true `
 -AllowHostNamespaceForRegularUsers true `
 -AllowPrivilegedModeForRegularUsers false `
 -AllowStackManagementForRegularUsers true `
 -AllowSysctlSettingForRegularUsers true `
 -AllowVolumeBrowserForRegularUsers true `
 -EnableHostManagementFeatures true
```

- Convert the resource to JSON
```powershell
$EndpointsEndpointSettingsUpdatePayloadSecuritySettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

