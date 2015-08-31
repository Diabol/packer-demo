Packer.io Examples
==================

Prerequisites
-------------

- Install [Packer.io](https://packer.io/downloads.html), see [installtion instructions](https://packer.io/docs/installation.html).
- Install [VirtualBox 5](https://www.virtualbox.org/wiki/Downloads)
- Download [CentOS 7.1 x86_64 1503-01 Minimal ISO](http://ftp.lysator.liu.se/pub/CentOS/7/isos/x86_64/CentOS-7-x86_64-Minimal-1503-01.iso)
- Download [Alpine Linux 3.2.3 x86_64 ISO](http://wiki.alpinelinux.org/cgi-bin/dl.cgi/v3.2/releases/x86_64/alpine-3.2.3-x86_64.iso)

Examples
--------

- CentOS Vagrant box for VirtualBox/VMware Fusion & Workstation/Parallels Desktop
Build with: ```packer build -only=virtualbox-iso centos-vagrant.json```

- Alpine VM image for VirtualBox/VMware Fusion & Workstation/Parallels Desktop
Build with: ```packer build -only=virtualbox-iso apline.json```

- Install Puppet on CentOS image on AWS EC2, Digital Ocean Droplet, and Open Stack
Build with: ```packer build -only=digitalocean cloud.json```
