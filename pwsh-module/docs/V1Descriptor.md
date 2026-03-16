# V1Descriptor
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Annotations** | **System.Collections.Hashtable** | Annotations contains arbitrary metadata relating to the targeted content. | [optional] 
**ArtifactType** | **String** | ArtifactType is the IANA media type of this artifact. | [optional] 
**VarData** | **Int32[]** | Data is an embedding of the targeted content. This is encoded as a base64 string when marshalled to JSON (automatically, by encoding/json). If present, Data can be used directly to avoid fetching the targeted content. | [optional] 
**Digest** | **String** | Digest is the digest of the targeted content. | [optional] 
**MediaType** | **String** | MediaType is the media type of the object this schema refers to. | [optional] 
**Platform** | [**V1Platform**](V1Platform.md) | Platform describes the platform which the image in the manifest runs on.  This should only be used when referring to a manifest. | [optional] 
**Size** | **Int32** | Size specifies the size in bytes of the blob. | [optional] 
**Urls** | **String[]** | URLs specifies a list of URLs from which this object MAY be downloaded | [optional] 

## Examples

- Prepare the resource
```powershell
$V1Descriptor = Initialize-PSOpenAPIToolsV1Descriptor  -Annotations null `
 -ArtifactType null `
 -VarData null `
 -Digest null `
 -MediaType null `
 -Platform null `
 -Size null `
 -Urls null
```

- Convert the resource to JSON
```powershell
$V1Descriptor | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

