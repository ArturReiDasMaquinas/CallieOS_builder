#!/bin/bash

# 1. Criar o usuário 'callie' com senha '1234'
useradd -m -G wheel,audio,video,storage -s /bin/bash callie
echo "callieuser:1234" | chpasswd

# 2. Dar permissão de sudo sem senha para o grupo wheel
echo "%wheel ALL=(ALL:ALL) ALL" > /etc/sudoers.d/wheel

# 3. Configurar a foto de perfil (AccountsService)
mkdir -p /var/lib/AccountsService/users/
cat << EOF > /var/lib/AccountsService/users/callie
[User]
Session=xfce
Icon=/usr/share/pixmaps/CallieLogo.png
SystemAccount=false
EOF

# 4. Configurar LightDM para login automático (ou apenas habilitar a tela de login)
mkdir -p /etc/lightdm/
cat << EOF > /etc/lightdm/lightdm.conf
[Seat:*]
autologin-user=callie
autologin-user-timeout=0
user-session=xfce
greeter-session=lightdm-gtk-greeter
EOF

# 5. Ativar o LightDM para iniciar com o sistema
systemctl enable lightdm

# 6. Garantir o Fastfetch global no terminal de todo mundo
echo "fastfetch" >> /etc/bash.bashrc
