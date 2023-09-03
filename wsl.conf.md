# create/add file on wsl dir /etc/wsl.conf

```shell
[interop]
appendWindowsPath=false
[boot]
command = /bin/bash -c 'chown root:kvm /dev/kvm && chmod 660 /dev/kvm'
```
