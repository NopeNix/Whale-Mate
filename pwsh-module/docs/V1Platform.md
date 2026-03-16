# V1Platform
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Architecture** | **String** | Architecture field specifies the CPU architecture, for example &#x60;amd64&#x60; or &#x60;ppc64le&#x60;. | [optional] 
**Os** | **String** | OS specifies the operating system, for example &#x60;linux&#x60; or &#x60;windows&#x60;. | [optional] 
**OsFeatures** | **String[]** | OSFeatures is an optional field specifying an array of strings, each listing a required OS feature (for example on Windows &#x60;win32k&#x60;). | [optional] 
**OsVersion** | **String** | OSVersion is an optional field specifying the operating system version, for example on Windows &#x60;10.0.14393.1066&#x60;. | [optional] 
**Variant** | **String** | Variant is an optional field specifying a variant of the CPU, for example &#x60;v7&#x60; to specify ARMv7 when architecture is &#x60;arm&#x60;. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1Platform = Initialize-PSOpenAPIToolsV1Platform  -Architecture null `
 -Os null `
 -OsFeatures null `
 -OsVersion null `
 -Variant null
```

- Convert the resource to JSON
```powershell
$V1Platform | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

