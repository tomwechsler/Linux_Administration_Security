#Working on alma in a root session

sudo -i

#Change some user settings
usermod -c 'User One' -aG wheel -g users u1

id u1

getent passwd u1

#Delete a user
userdel u1

#What is not removed from the user u1
ls -l /home

#Find the infos
find /home /var -nouser

#And delete the findings
find /home /var -nouser -delete

#Delete u2 with -r
userdel -r u2

#Nothing left
find /home /var -nouser

The same options to useradd or available to usermod which is used to modify user accounts.

Deleting users is affected using userdel. The option -r deletes the home directory, mail spool
files and user cron jobs