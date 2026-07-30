# Callie - Custom Arch Linux ISO Project

~~joke~~ serious OS.

---

## 🎨 System Specs & Branding

- **OS Name:** CallieOS
- **Primary Color:** magenta (`#ff00ff`)
- **Active Boot Logo:** `CallieLogo.png`
- **Wallpapers Included:**
  - `/usr/share/backgrounds/callie/Wallpaper01.png`
  - `/usr/share/backgrounds/callie/Wallpaper02.png`

---

## 🚀 How to Build the ISO

```bash
sudo pacman -S archiso git rsync qemu-desktop
chmod +x build.sh
sudo ./build.sh
```

The output ISO will be generated in `./out/CallieOS-*.iso`.
