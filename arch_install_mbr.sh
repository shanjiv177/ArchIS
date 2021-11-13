cd /
ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
hwclock --systohc
sed -i '177s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "myarchpc" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 myarchpc.localdomain    arch" >> /etc/hosts
echo root:password | chpasswd

pacman -S --noconfirm grub networkmanager network-manager-applet dialog wpa_supplicant linux-headers base-devel mtools dosfstools reflector git curl wget xdg-user-dirs xdg-utils ntfs-3g bluez bluez-utils os-prober

grub-install --target=i386-pc /dev/sda #/dev/vda for virtualbox
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable bluetooth

useradd -mG wheel shanjiv

echo shanjiv:password | chpasswd

sed -i 's/# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/' /etc/sudoers

echo "Type exit and umount -a"
echo "Change Your root password with passwd"
echo "Change your use password with passwd shanjiv"
echo "Default User name is shanjiv"

