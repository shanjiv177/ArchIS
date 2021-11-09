timedatectl set-ntp true

mkfs.ext4 /dev/vda2
mkswap /dev/vda1

mount /dev/vda2 /mnt
swapon /dev/vda1

pacman -S --no-confirm reflector

mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak

reflector -l 10 -a 6 --sort rate --save /etc/pacman.d/mirrorlist --verbose
 pacstrap -S linux linux-firmware nano vim intel-ucode linux-headers linux-docs broadcom-wl

 genfstab -U /mnt >> /mnt/etc/fstab

 arch-chroot