# dotfiles
Setup for system

## Vim Setup
Plug in are installed via `vim-plug`, the installation guide can be found through this [link](https://github.com/junegunn/vim-plug).

## Additional hard drive mounting
Find the UUID for the corresponding disk with:
```sh
$ ls -al /dev/disk/by-uuid.
```
Copy the UUID and add it to ```/etc/fstab```:
```shell
# /etc/fstab: static file system information.
#
# Use 'blkid' to print the universally unique identifier for a
# device; this may be used with UUID= as a more robust way to name devices
# that works even if disks are added and removed. See fstab(5).
#
# <file system> <mount point>   <type>  <options>       <dump>  <pass>
# / was on /dev/sdb1 during installation
UUID=XXXXXXXXXXXXXXXX /               ext4    errors=remount-ro 0       1
# swap was on /dev/sdb5 during installation
UUID=XXXXXXXXXXXXXXXX none            swap    sw              0       0
# data drive
UUID=XXXXXXXXXXXXXXXX $CUSTOM_MOUNT_POINT   $PARTITION_TYPE    defaults        0       0
```
