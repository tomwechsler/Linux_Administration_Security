#Working on ubuntu

#Show the permissions
ls -l /etc/hosts

#This is bit special
ls -l /etc/shadow

#List the size in human readable
ls -lh /etc/services

#List with a subshell -h does not work
ls -lh $(tty)

#The block device -h does not work
ls -lh /dev/sda1

#Show the block device
lsblk

#Show the statistics
stat /etc/hosts

#Just an element of the stat
stat -c %a /etc/hosts   #numbers
stat -c %A /etc/hosts   #letters

stat -c %x /etc/hosts

stat -c %y /etc/hosts

stat -c %z /etc/hosts