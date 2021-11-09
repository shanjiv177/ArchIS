cd

sudo pacman -S --noconfirm xorg gnome gnome-tweaks gparted zsh zsh-autosuggestions zsh-syntax-highlighting materia-gtk-theme papirus-icon-theme firefox noto-fonts htop ttf-croscore ttf-dejavu ttf-droid ttf-ubuntu-font-family ttf-indic-otf adobe-source-code-pro-fonts ttf-roboto gnu-free-fonts ttf-liberation

sudo systemctl enable gdm

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd 

echo "source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> .zshrc
echo "source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> .zshrc

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si PKGBUILD

cd

yay -S --noconfirm ttf-ms-fonts zoom

yay -S --noconfirm flatpak snapd snapd-glib

sudo pacman -S --noconfirm libreoffice-fresh vlc audacity kdenlive telegram-desktop

sudo reboot

