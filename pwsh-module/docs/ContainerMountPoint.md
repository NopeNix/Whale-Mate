# ContainerMountPoint
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Destination** | **String** | Destination is the path relative to the container root (&#x60;/&#x60;) where the Source is mounted inside the container. | [optional] 
**Driver** | **String** | Driver is the volume driver used to create the volume (if it is a volume). | [optional] 
**Mode** | **String** | Mode is a comma separated list of options supplied by the user when creating the bind/volume mount.  The default is platform-specific (&#x60;&quot;&quot;z&quot;&quot;&#x60; on Linux, empty on Windows). | [optional] 
**Name** | **String** | Name is the name reference to the underlying data defined by &#x60;Source&#x60; e.g., the volume name. | [optional] 
**Propagation** | [**MountPropagation**](MountPropagation.md) | Propagation describes how mounts are propagated from the host into the mount point, and vice-versa. Refer to the Linux kernel documentation for details: https://www.kernel.org/doc/Documentation/filesystems/sharedsubtree.txt  This field is not used on Windows. | [optional] 
**RW** | **Boolean** | RW indicates whether the mount is mounted writable (read-write). | [optional] 
**Source** | **String** | Source is the source location of the mount.  For volumes, this contains the storage location of the volume (within &#x60;/var/lib/docker/volumes/&#x60;). For bind-mounts, and &#x60;npipe&#x60;, this contains the source (host) part of the bind-mount. For &#x60;tmpfs&#x60; mount points, this field is empty. | [optional] 
**Type** | [**MountType**](MountType.md) | Type is the type of mount, see &#x60;Type&lt;foo&gt;&#x60; definitions in github.com/docker/docker/api/types/mount.Type | [optional] 

## Examples

- Prepare the resource
```powershell
$ContainerMountPoint = Initialize-PSOpenAPIToolsContainerMountPoint  -Destination null `
 -Driver null `
 -Mode null `
 -Name null `
 -Propagation null `
 -RW null `
 -Source null `
 -Type null
```

- Convert the resource to JSON
```powershell
$ContainerMountPoint | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

