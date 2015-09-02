#!/bin/bash -
set -o nounset

sudo rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
sudo yum install -y puppet-agent

cat << EOF > /tmp/puppet.sh
export PATH=/opt/puppetlabs/bin:$PATH
EOF
sudo mv /tmp/puppet.sh /etc/profile.d/
sudo chown root:root /etc/profile.d/puppet.sh
