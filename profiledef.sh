#!/usr/bin/env bash
# ApertureScienceOS Archiso Profile Configuration

iso_name="ApertureScienceOS"
iso_label="APERTURE_$(date +%Y%m)"
iso_publisher="Aperture Science Laboratories <https://aperturescience.com>"
iso_application="Aperture Science Computer Operating System"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.grub.esp' 'uefi-x86_64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x86_64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')

file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/usr/local/bin/aperture-welcome"]="0:0:755"
  ["/usr/share/pixmaps/ApertureLogo01.png"]="0:0:644"
)
