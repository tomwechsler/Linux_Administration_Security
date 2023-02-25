#Working on ubuntu

#List the services
sudo systemctl status

#Disable atd
sudo systemctl disable --now atd

#What package has atd installed
dpkg -S atd

#Remove atd
sudo apt purge at

#Also the dependencies
sudo apt autoremove

#Don't forget to check the MAC System
sudo apparmor_status

sudo apparmor_status | less

sudo getenforce #On Red Hat based systems




We can list listening services easily, but we can always drill down to specific services. To list
all services; we can use the status sub-command without arguments.

M-ACLs such as SELinux and AppArmor can go a long way to securing your systems, validate
that they are running.