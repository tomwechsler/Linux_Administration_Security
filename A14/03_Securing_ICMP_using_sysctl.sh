#Working on ubuntu

#List the kernel settings
sysctl -a

#Search for icmp (net.ipv4.icmp_echo_ignore_all)
sysctl -ar 'icmp'

#Ping work's fine
ping localhost

#But if we change the settings (this is not permanent)
sudo sysctl net.ipv4.icmp_echo_ignore_all=1

#The ping will fail
ping localhost

#Set it back
sudo sysctl net.ipv4.icmp_echo_ignore_all=0

#To change it persistent
sudo vim /etc/sysctl.d/99-icmp.conf

net.ipv4.icmp_echo_ignore_all=1

#Save and exit

#This will emulate whats happend on boot
sudo sysctl --system

#We check
sysctl -ar 'icmp'

#It work's
ping localhost



The kernel is tuned using the procfs, files below /proc. We can display and configure settings
using the command sysctl. Persisting configuration using files below /etc/sysctl.d. Higher
number files are applied AFTER lower numbers becoming the most effective.