# ApertureScienceOS - Custom Arch Linux ISO Project

System designed for test subjects and Aperture Science Laboratories personnel.

---

## 🎨 System Specs & Branding

- **OS Name:** ApertureScienceOS
- **Primary Color:** Aperture Orange (`#ff9900`)
- **Active Boot Logo:** `ApertureLogo01.png`
- **Old Logo:** `ApertureLogoOld.png` (Disabled/Archived)
- **Wallpapers Included:**
  - `/usr/share/backgrounds/aperture/ApertureWallpaper01.png`
  - `/usr/share/backgrounds/aperture/ApertureWallpaperOld.png`

---

## 🚀 How to Build the ISO

```bash
sudo pacman -S archiso git rsync qemu-desktop
chmod +x build.sh
sudo ./build.sh
```

The output ISO will be generated in `./out/ApertureScienceOS-*.iso`.
