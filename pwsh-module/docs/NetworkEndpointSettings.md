# NetworkEndpointSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Aliases** | **String[]** | Aliases holds the list of extra, user-specified DNS names for this endpoint. | [optional] 
**DNSNames** | **String[]** | DNSNames holds all the (non fully qualified) DNS names associated to this endpoint. First entry is used to generate PTR records. | [optional] 
**DriverOpts** | **System.Collections.Hashtable** |  | [optional] 
**EndpointID** | **String** |  | [optional] 
**Gateway** | **String** |  | [optional] 
**GlobalIPv6Address** | **String** |  | [optional] 
**GlobalIPv6PrefixLen** | **Int32** |  | [optional] 
**GwPriority** | **Int32** | GwPriority determines which endpoint will provide the default gateway for the container. The endpoint with the highest priority will be used. If multiple endpoints have the same priority, they are lexicographically sorted based on their network name, and the one that sorts first is picked. | [optional] 
**IPAMConfig** | [**NetworkEndpointIPAMConfig**](NetworkEndpointIPAMConfig.md) | Configurations | [optional] 
**IPAddress** | **String** |  | [optional] 
**IPPrefixLen** | **Int32** |  | [optional] 
**IPv6Gateway** | **String** |  | [optional] 
**Links** | **String[]** |  | [optional] 
**MacAddress** | **String** | MacAddress may be used to specify a MAC address when the container is created. Once the container is running, it becomes operational data (it may contain a generated address). | [optional] 
**NetworkID** | **String** | Operational data | [optional] 

## Examples

- Prepare the resource
```powershell
$NetworkEndpointSettings = Initialize-PSOpenAPIToolsNetworkEndpointSettings  -Aliases null `
 -DNSNames null `
 -DriverOpts null `
 -EndpointID null `
 -Gateway null `
 -GlobalIPv6Address null `
 -GlobalIPv6PrefixLen null `
 -GwPriority null `
 -IPAMConfig null `
 -IPAddress null `
 -IPPrefixLen null `
 -IPv6Gateway null `
 -Links null `
 -MacAddress null `
 -NetworkID null
```

- Convert the resource to JSON
```powershell
$NetworkEndpointSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

