# V1GRPCAction
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Port** | **Int32** | Port number of the gRPC service. Number must be in the range 1 to 65535. | [optional] 
**Service** | **String** | Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).  If this is not specified, the default behavior is defined by gRPC. +optional +default&#x3D;&quot;&quot;&quot;&quot; | [optional] 

## Examples

- Prepare the resource
```powershell
$V1GRPCAction = Initialize-PSOpenAPIToolsV1GRPCAction  -Port null `
 -Service null
```

- Convert the resource to JSON
```powershell
$V1GRPCAction | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

