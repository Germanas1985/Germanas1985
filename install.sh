#!/bin/bash

    bash 0-preinstall.sh
    arch-chroot /mnt /root/arch/1-setup.sh
    source /mnt/root/arch/install.conf
    arch-chroot /mnt /usr/bin/runuser -u $username -- /home/$username/ArchTitus/2-user.sh
    arch-chroot /mnt /root/arch/3-post-setup.sh
