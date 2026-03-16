# V1ResourceQuotaStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hard** | [**System.Collections.Hashtable**](ResourceQuantity.md) | Hard is the set of enforced hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/ +optional | [optional] 
**Used** | [**System.Collections.Hashtable**](ResourceQuantity.md) | Used is the current observed total usage of the resource in the namespace. +optional | [optional] 

## Examples

- Prepare the resource
```powershell
$V1ResourceQuotaStatus = Initialize-PSOpenAPIToolsV1ResourceQuotaStatus  -Hard null `
 -Used null
```

- Convert the resource to JSON
```powershell
$V1ResourceQuotaStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

