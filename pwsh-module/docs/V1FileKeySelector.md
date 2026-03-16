# V1FileKeySelector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** | The key within the env file. An invalid key will prevent the pod from starting. The keys defined within a source may consist of any printable ASCII characters except &#39;&#x3D;&#39;. During Alpha stage of the EnvFiles feature gate, the key size is limited to 128 characters. +required | [optional] 
**Optional** | **Boolean** | Specify whether the file or its key must be defined. If the file or key does not exist, then the env var is not published. If optional is set to true and the specified key does not exist, the environment variable will not be set in the Pod&#39;s containers.  If optional is set to false and the specified key does not exist, an error will be returned during Pod creation. +optional +default&#x3D;false | [optional] 
**Path** | **String** | The path within the volume from which to select the file. Must be relative and may not contain the &#39;..&#39; path or start with &#39;..&#39;. +required | [optional] 
**VolumeName** | **String** | The name of the volume mount containing the env file. +required | [optional] 

## Examples

- Prepare the resource
```powershell
$V1FileKeySelector = Initialize-PSOpenAPIToolsV1FileKeySelector  -Key null `
 -Optional null `
 -Path null `
 -VolumeName null
```

- Convert the resource to JSON
```powershell
$V1FileKeySelector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

