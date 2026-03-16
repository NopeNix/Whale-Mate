# KubernetesK8sEvent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Count** | **Int32** |  | [optional] 
**EventTime** | **String** |  | [optional] 
**FirstTimestamp** | **String** |  | [optional] 
**InvolvedObject** | [**KubernetesK8sEventInvolvedObject**](KubernetesK8sEventInvolvedObject.md) |  | [optional] 
**Kind** | **String** |  | [optional] 
**LastTimestamp** | **String** |  | [optional] 
**Message** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**Reason** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 
**Uid** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$KubernetesK8sEvent = Initialize-PSOpenAPIToolsKubernetesK8sEvent  -Count null `
 -EventTime null `
 -FirstTimestamp null `
 -InvolvedObject null `
 -Kind null `
 -LastTimestamp null `
 -Message null `
 -Name null `
 -Namespace null `
 -Reason null `
 -Type null `
 -Uid null
```

- Convert the resource to JSON
```powershell
$KubernetesK8sEvent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

