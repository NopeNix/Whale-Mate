# PortainerAccessPolicy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Namespaces** | **String[]** | Namespaces is a list of namespaces that this access policy applies to. Only used for namespaced level roles | [optional] 
**RoleId** | **Int32** | Role identifier. Reference the role that will be associated to this access policy | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerAccessPolicy = Initialize-PSOpenAPIToolsPortainerAccessPolicy  -Namespaces null `
 -RoleId 1
```

- Convert the resource to JSON
```powershell
$PortainerAccessPolicy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

