#!/bin/bash

    bash preinstall.sh
    arch-chroot /mnt /root/arch/1-setup.sh
    source /mnt/root/arch/install.conf
    arch-chroot /mnt /usr/bin/runuser -u $username -- /home/$username/arch/2-user.sh
    arch-chroot /mnt /root/arch/3-post-setup.sh
