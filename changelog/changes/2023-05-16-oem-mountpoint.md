- Moved a mountpoint of the OEM partition from `/usr/share/oem` to `/oem`. `/usr/share/oem` became a symlink to `/oem` for backward compatibility. Despite the move, the initrd images providing files through `/usr/share/oem` should keep using `/usr/share/oem`. The move was done to enable activating the OEM sysext images that are placed in the OEM partition.