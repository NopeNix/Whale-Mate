# EndpointsEndpointMTLSCertResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MTLSCertificate** | [**SslCertificate**](SslCertificate.md) | MTLSCertificate is the X.509 Certificate of the MTLS Certificate | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointsEndpointMTLSCertResponse = Initialize-PSOpenAPIToolsEndpointsEndpointMTLSCertResponse  -MTLSCertificate null
```

- Convert the resource to JSON
```powershell
$EndpointsEndpointMTLSCertResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

