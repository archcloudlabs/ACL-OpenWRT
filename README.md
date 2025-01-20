# ACL-OpenWRT

Archlinux container file for building OpenWrt in a container.
Associated write-up can be [found here](https://www.archcloudlabs.com/projects/building-a-router-pt-2/).

Separating `.configs` from the container itself, allow the dependencies to be packaged in one container and multiple configs to be on the underlying host filesystem for testing/parallel building in a distributed environment.

## Building

```bash
$> podman build . -t acl:openwrt
```
