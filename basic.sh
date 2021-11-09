timedatectl set-ntp true

mkfs.ext4 /dev/sda2
mkswap /dev/sda1

mount /dev/sda2 /mnt
swapon /dev/sda1

pacman -S --no-confirm reflector

mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak

reflector -l 10 -a 6 --sort rate --save /etc/pacman.d/mirrorlist --verbose

pacstrap /mnt linux linux-firmware nano vim intel-ucode linux-headers linux-docs broadcom-wl

 genfstab -U /mnt >> /mnt/etc/fstab

 arch-chroot /mnt
