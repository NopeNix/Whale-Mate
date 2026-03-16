# WebhooksWebhookCreatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EndpointID** | **Int32** |  | [optional] 
**RegistryID** | **Int32** |  | [optional] 
**ResourceID** | **String** |  | [optional] 
**WebhookType** | [**PortainerWebhookType**](PortainerWebhookType.md) | Type of webhook (1 - service, 2 - container) | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhooksWebhookCreatePayload = Initialize-PSOpenAPIToolsWebhooksWebhookCreatePayload  -EndpointID null `
 -RegistryID null `
 -ResourceID null `
 -WebhookType null
```

- Convert the resource to JSON
```powershell
$WebhooksWebhookCreatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

