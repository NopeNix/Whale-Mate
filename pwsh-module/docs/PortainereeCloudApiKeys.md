# PortainereeCloudApiKeys
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CivoApiKey** | **String** |  | [optional] 
**DigitalOceanToken** | **String** |  | [optional] 
**GKEApiKey** | **String** |  | [optional] 
**LinodeToken** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeCloudApiKeys = Initialize-PSOpenAPIToolsPortainereeCloudApiKeys  -CivoApiKey DgJ33kwIhnHumQFyc8ihGwWJql9cC8UJDiBhN8YImKqiX `
 -DigitalOceanToken dop_v1_n9rq7dkcbg3zb3bewtk9nnvmfkyfnr94d42n28lym22vhqu23rtkllsldygqm22v `
 -GKEApiKey an entire base64ed key file `
 -LinodeToken 92gsh9r9u5helgs4eibcuvlo403vm45hrmc6mzbslotnrqmkwc1ovqgmolcyq0wc
```

- Convert the resource to JSON
```powershell
$PortainereeCloudApiKeys | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

