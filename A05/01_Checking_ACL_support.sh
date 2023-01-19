#Working on alma

#Check the acls
getfacl /etc/hosts

#List the acl packet
sudo dnf list acl

#If it is not installed
sudo dnf install -y acl

#List the /boot
ls /boot

#The kernel version
uname -r

#Do we have the acl support
grep -i acl /boot/config-$(uname -r)

#Where does the getfacl command come from?
rpm -qf $(which getfacl)

#Check the mounts (xfs supports acls)
mount -t xfs

mount -t ext4

#If an ext4 partition is present, we check for acl support
sudo tune2fs -l /dev/sda2 | grep -i acl






Access Control Lists allow for more than one user or
group to have the same or similar permissions to a file
resource. We can also set default permissions allowing
new files or directories to inherit from the parent