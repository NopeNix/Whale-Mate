# PortainerWebhook
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EndpointId** | **Int32** |  | [optional] 
**Id** | **Int32** | Webhook Identifier | [optional] 
**RegistryId** | **Int32** |  | [optional] 
**ResourceId** | **String** |  | [optional] 
**Token** | **String** |  | [optional] 
**Type** | [**PortainerWebhookType**](PortainerWebhookType.md) | Type of webhook (1 - service) | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerWebhook = Initialize-PSOpenAPIToolsPortainerWebhook  -EndpointId null `
 -Id 1 `
 -RegistryId null `
 -ResourceId null `
 -Token null `
 -Type null
```

- Convert the resource to JSON
```powershell
$PortainerWebhook | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

