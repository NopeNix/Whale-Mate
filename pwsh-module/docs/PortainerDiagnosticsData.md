# PortainerDiagnosticsData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DNS** | **System.Collections.Hashtable** |  | [optional] 
**Log** | **String** |  | [optional] 
**Proxy** | **System.Collections.Hashtable** |  | [optional] 
**Telnet** | **System.Collections.Hashtable** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerDiagnosticsData = Initialize-PSOpenAPIToolsPortainerDiagnosticsData  -DNS null `
 -Log null `
 -Proxy null `
 -Telnet null
```

- Convert the resource to JSON
```powershell
$PortainerDiagnosticsData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

