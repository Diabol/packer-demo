#!/bin/sh -x

case "$PACKER_BUILDER_TYPE" in

vmware-iso)
    apk --update add open-vm-tools;
    rm -rf /var/cache/apk/*;
    rc-update -u add open-vm-tools default;
    service open-vm-tools start;
    vmware-toolbox-cmd timesync enable;
    ;;

virtualbox-iso)
    # apk add virtualbox-additions-grsec; Missing!
    ;;

parallels-iso)
    # mkdir -p /tmp/parallels; Currently not working
    # mount /dev/sr0 /tmp/parallels;
    # apk add bash;
    # /tmp/parallels/install --install-unattended-with-deps \
    #   || (code="$?"; \
    #       echo "Parallels tools installation exited $code, attempting" \
    #       "to output /var/log/parallels-tools-install.log"; \
    #       cat /var/log/parallels-tools-install.log; \
    #       exit $code);
    # umount /tmp/parallels;
    # rmdir /tmp/parallels;
    ;;

*)
    echo "Unknown Packer Builder Type >>$PACKER_BUILDER_TYPE<< selected.";
    echo "Known are vmware-iso|parallels-iso|virtualbox-iso.";
    ;;

esac

rm -rf /etc/ssh/ssh_host_*
cat <<EOF >> /etc/ssh/sshd_config
UseDNS no
EOF
