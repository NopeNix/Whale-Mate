# NetworkEndpointIPAMConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IPv4Address** | **String** |  | [optional] 
**IPv6Address** | **String** |  | [optional] 
**LinkLocalIPs** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NetworkEndpointIPAMConfig = Initialize-PSOpenAPIToolsNetworkEndpointIPAMConfig  -IPv4Address null `
 -IPv6Address null `
 -LinkLocalIPs null
```

- Convert the resource to JSON
```powershell
$NetworkEndpointIPAMConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

