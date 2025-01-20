# ACL-OpenWRT

Archlinux container file for building OpenWrt in a container.
Associated write-up can be [found here](https://www.archcloudlabs.com/projects/building-a-router-pt-2/).

Separating `.configs` from the container itself, allow the dependencies to be packaged in one container and multiple configs to be on the underlying host filesystem for testing/parallel building in a distributed environment.

## Building

```bash
$> podman build . -t acl:openwrt
```


## Running - Interactive

```
[dllcoolj@thonkpad ACL-OpenWrt]$ podman run -ti acl:openwrt /bin/bash
/bin/bash: /bin/bash: cannot execute binary file
[dllcoolj@thonkpad ACL-OpenWrt]$ podman run -ti acl:openwrt 
[root@60c25ad3418a opt]# id
uid=0(root) gid=0(root) groups=0(root)
[root@60c25ad3418a opt]# ps
    PID TTY          TIME CMD
      1 pts/0    00:00:00 bash
      3 pts/0    00:00:00 ps
```
