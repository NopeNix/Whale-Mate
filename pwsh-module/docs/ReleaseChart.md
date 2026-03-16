# ReleaseChart
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Files** | [**ReleaseFile[]**](ReleaseFile.md) | Files are miscellaneous files in a chart archive, e.g. README, LICENSE, etc. | [optional] 
**Lock** | [**ReleaseLock**](ReleaseLock.md) | Lock is the contents of Chart.lock. | [optional] 
**Metadata** | [**ReleaseMetadata**](ReleaseMetadata.md) | Metadata is the contents of the Chartfile. | [optional] 
**Schema** | **Int32[]** | Schema is an optional JSON schema for imposing structure on Values | [optional] 
**Templates** | [**ReleaseFile[]**](ReleaseFile.md) | Templates for this chart. | [optional] 
**Values** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) | Values are default config for this chart. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReleaseChart = Initialize-PSOpenAPIToolsReleaseChart  -Files null `
 -Lock null `
 -Metadata null `
 -Schema null `
 -Templates null `
 -Values null
```

- Convert the resource to JSON
```powershell
$ReleaseChart | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

