useradd -mG wheel shanjiv

echo shanjiv:shanjiv1707 | chpasswd

sed -i 's/# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/' /etc/sudoers

echo "Type exit and umount -a"
