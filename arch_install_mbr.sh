ln -sf /usr/share/zoneinfo/Europe/Zurich /etc/localtime
hwclock --systohc
sed -i '177s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "myarchpc" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 myarchpc.localdomain    arch" >> /etc/hosts
echo root:shanjiv1707 | chpasswd

pacman -S --noconfirm grub networkmanager netowrk-manager-applet dialog wpa_aupplicant linux-headers base-devel mtools dosfstools reflector git curl wget xdg-user-dirs xdg-utils ntfs-3g bluez bluez-utils os-prober xorg gnome gnome-tweaks zsh

grub-install --target=i386-pc /dev/sda #/dev/vda for virtualbox
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable bluetooth

useradd -mG shanjiv

echo shanjiv:shanjiv1707 | chpasswd

echo "shanjiv ALL=(ALL) ALL" >> /etc/sudoers.d/ermanno


echo "Type exit and umount -a"

