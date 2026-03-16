# LicensesDeletePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LicenseKeys** | **String[]** | List of license keys to remove | [optional] 

## Examples

- Prepare the resource
```powershell
$LicensesDeletePayload = Initialize-PSOpenAPIToolsLicensesDeletePayload  -LicenseKeys null
```

- Convert the resource to JSON
```powershell
$LicensesDeletePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

