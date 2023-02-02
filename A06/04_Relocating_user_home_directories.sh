#Working on alma

sudo ls /etc/selinux/targeted/contexts/files

man semanage-fcontext

sudo mkdir /staff

sudo semanage fcontext -a -e /home /staff

sudo restorecon -v /staff

ls -ldZ /staff

sudo useradd -m -d /staff/u1 u1

sudo ls -ldZ /staff/u1



The file contextused by restorecon are part of the current SELinux policy. Relocating user
home directories, for example, we can create the top-level directory and store the definition by
cloning the configuration of the existing home. This ensures the correct SELinux context on
user home directories created below staff.