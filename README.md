# ACL-OpenWRT

Archlinux container file for building OpenWrt in a container.
Associated write-up can be [found here](https://www.archcloudlabs.com/projects/building-a-router-pt-2/).

Separating OpenWrt `.configs` from the container itself, allow the dependencies to be packaged in one container and multiple configs to be on the underlying host filesystem for testing/parallel building in a distributed environment. For example, one could have the following host file structure to be mounted in `/opt/` of the container at runtime for OpenWrt builds.

```bash
openwrt-rpi4
openwrt-x86_64
openwrt-...
```

## Building

```bash
$> podman build . -t acl:openwrt
```


## Running - Interactive

```
[dllcoolj@thonkpad ACL-OpenWrt]$ podman run -v `pwd`:/opt/ -ti acl:openwrt 
[root@2bbff73cbb71 opt]# ls
Containerfile  README.md  openwrt-rpi4	openwrt-x86_64
```
