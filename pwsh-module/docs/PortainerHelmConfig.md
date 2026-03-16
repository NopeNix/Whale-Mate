# PortainerHelmConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Atomic** | **Boolean** | Enable automatic rollback on deployment failure (equivalent to helm --atomic flag) | [optional] 
**ChartPath** | **String** | Path to a Helm chart folder for Helm git deployments | [optional] 
**Timeout** | **String** | Timeout for Helm operations (equivalent to helm --timeout flag) | [optional] 
**ValuesFiles** | **String[]** | Array of paths to Helm values YAML files for Helm git deployments | [optional] 
**Version** | **String** | Helm chart version from Chart.yaml (read-only, extracted during Git sync) | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerHelmConfig = Initialize-PSOpenAPIToolsPortainerHelmConfig  -Atomic true `
 -ChartPath charts/my-app `
 -Timeout 5m0s `
 -ValuesFiles [[&#39;values/prod.yaml&#39;,  &#39;values/secrets.yaml&#39;]] `
 -Version 1.2.3
```

- Convert the resource to JSON
```powershell
$PortainerHelmConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

