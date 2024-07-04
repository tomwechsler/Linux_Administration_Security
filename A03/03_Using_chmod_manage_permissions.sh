#Working on ubuntu

#Set the umask
umask 002

#Create a new file
touch new_file

#List the permissions
ls -l new_file

#Change the permissions
chmod a+w new_file

#Grant write permission to all users for 'new_file'
chmod -v a+w new_file

#Set permissions for 'new_file' to 740 (owner can read, write, and execute; group can read; others have no permissions)
chmod -v 740 new_file

#Grant read permission to others for 'new_file'
chmod -v o+r new_file

#Set group and others' permissions to read and write for 'new_file'
chmod -v go=rw new_file

#Grant execute permission to all users for 'new_file'
chmod -v a+x new_file

#Remove execute permission from all users for 'new_file'
chmod -v a-x new_file

#Remove all permissions for group and others for 'new_file'
chmod -v go= new_file