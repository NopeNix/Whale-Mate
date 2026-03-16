# WebhooksWebhookReassignPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ResourceID** | **String** |  | [optional] 
**WebhookType** | [**PortainerWebhookType**](PortainerWebhookType.md) | Type of webhook (1 - service, 2 - container) | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhooksWebhookReassignPayload = Initialize-PSOpenAPIToolsWebhooksWebhookReassignPayload  -ResourceID null `
 -WebhookType null
```

- Convert the resource to JSON
```powershell
$WebhooksWebhookReassignPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

