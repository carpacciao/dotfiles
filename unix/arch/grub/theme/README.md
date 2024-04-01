# Theme

---

In WIP, but verrrrrrrryyyyyyyy in progress

---

1. Convert the used fonts
    - `$ ./convert_font.sh`
2. Move theme to grub
    - `$ rm -rf /boot/grub/themes/lvd` 
    - `$ mkdir /boot/grub/themes/lvd`
    - `$ cp -r ./lvd/* /boot/grub/themes/lvd`
3. Update Grub config file
    - `/etc/default/grub`
    - Update line `GRUB_THEME="/boot/grub/themes/lvd/theme.txt"`
4. Load Grub config file
    - `$  `
