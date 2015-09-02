Packer.io Examples
==================

Prerequisites
-------------

- Install [Packer.io](https://packer.io/downloads.html), see [installation instructions](https://packer.io/docs/installation.html).
- Install [VirtualBox 5](https://www.virtualbox.org/wiki/Downloads)
- Download [CentOS 7.1 x86_64 1503-01 Minimal ISO](http://ftp.lysator.liu.se/pub/CentOS/7/isos/x86_64/CentOS-7-x86_64-Minimal-1503-01.iso)
- Download [Alpine Linux 3.2.3 x86_64 ISO](http://wiki.alpinelinux.org/cgi-bin/dl.cgi/v3.2/releases/x86_64/alpine-3.2.3-x86_64.iso)

Local Examples
--------------

- CentOS Vagrant box for VirtualBox/VMware Fusion & Workstation/Parallels Desktop
Build with: ```packer build -only=virtualbox-iso centos-vagrant.json```

- Alpine VM image for VirtualBox/VMware Fusion & Workstation/Parallels Desktop
Build with: ```packer build -only=virtualbox-iso apline.json```

Cloud Examples
--------------

Install Puppet on CentOS 7.1 image on AWS EC2, Digital Ocean Droplet, and Open Stack.

- Building on Digital Ocean requires environment variable
```DIGITALOCEAN_API_TOKEN``` set.

```DIGITALOCEAN_API_TOKEN=mySecretToken packer build -only=digitalocean cloud.json```

- Building on AWS requires environment variables ```AWS_ACCESS_KEY_ID``` and
```AWS_SECRET_ACCESS_KEY``` set. The _user_ for this key must have full **S3**
and **EC2** access.

```AWS_ACCESS_KEY_ID=AKIAIIA4DNA5BGBUIAFQ AWS_SECRET_ACCESS_KEY=mySecretKey packer build -only=amazon-ebs cloud.json```

- Building on OpenStack on City Cloud requires all the following environment
variables (with example values):

```
export OS_AUTH_URL=https://identity1.citycloud.com:5000/v3
export OS_IDENTITY_API_VERSION=3
export OS_DOMAIN_ID=58919a3823e94770989eb67e158f11f5
export OS_PROJECT_DOMAIN_ID=58919a3823e94770989eb67e158f11f5
export OS_USER_DOMAIN_ID=58919a3823e94770989eb67e158f11f5
export OS_TENANT_ID=5e6baffe348448a6b37ddbbed7def0ec
export OS_PROJECT_ID=5e6baffe348448a6b37ddbbed7def0ec
export OS_USERNAME=packer-demo
export OS_PASSWORD=ThePassword
export OS_REGION_NAME=Sto2
```

With the above variables set run: ```packer build -only=openstack cloud.json```
