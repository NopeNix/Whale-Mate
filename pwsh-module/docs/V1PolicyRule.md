# V1PolicyRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApiGroups** | **String[]** | APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed. &quot;&quot;&quot;&quot; represents the core API group and &quot;&quot;*&quot;&quot; represents all API groups. +optional +listType&#x3D;atomic | [optional] 
**NonResourceURLs** | **String[]** | NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as &quot;&quot;pods&quot;&quot; or &quot;&quot;secrets&quot;&quot;) or non-resource URL paths (such as &quot;&quot;/api&quot;&quot;),  but not both. +optional +listType&#x3D;atomic | [optional] 
**ResourceNames** | **String[]** | ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed. +optional +listType&#x3D;atomic | [optional] 
**Resources** | **String[]** | Resources is a list of resources this rule applies to. &#39;*&#39; represents all resources. +optional +listType&#x3D;atomic | [optional] 
**Verbs** | **String[]** | Verbs is a list of Verbs that apply to ALL the ResourceKinds contained in this rule. &#39;*&#39; represents all verbs. +listType&#x3D;atomic | [optional] 

## Examples

- Prepare the resource
```powershell
$V1PolicyRule = Initialize-PSOpenAPIToolsV1PolicyRule  -ApiGroups null `
 -NonResourceURLs null `
 -ResourceNames null `
 -Resources null `
 -Verbs null
```

- Convert the resource to JSON
```powershell
$V1PolicyRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

