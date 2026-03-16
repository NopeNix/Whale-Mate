# V1EnvVar
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of the environment variable. May consist of any printable ASCII characters except &#39;&#x3D;&#39;. | [optional] 
**Value** | **String** | Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. &quot;&quot;$$(VAR_NAME)&quot;&quot; will produce the string literal &quot;&quot;$(VAR_NAME)&quot;&quot;. Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to &quot;&quot;&quot;&quot;. +optional | [optional] 
**ValueFrom** | [**V1EnvVarSource**](V1EnvVarSource.md) | Source for the environment variable&#39;s value. Cannot be used if value is not empty. +optional | [optional] 

## Examples

- Prepare the resource
```powershell
$V1EnvVar = Initialize-PSOpenAPIToolsV1EnvVar  -Name null `
 -Value null `
 -ValueFrom null
```

- Convert the resource to JSON
```powershell
$V1EnvVar | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

