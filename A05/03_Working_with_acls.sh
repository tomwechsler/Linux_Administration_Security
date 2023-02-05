#Working on alma

# As root we can create a private directory
sudo mkdir -m 700 /private

#List the permissions
ls -ld /private

#Access denied
cd /private

#We set the default ACL to allow user access to files created within
sudo setfacl -m d:u:vagrant:rwx /private

#Access denied
cd /private

#The user vagrant has no access to this but access is required
sudo setfacl -m u:vagrant:rwx /private

#Show the acls
getfacl /private

#We can add additional entries if required
sudo setfacl -m u:apache:r-x /private

sudo setfacl -m g:apache:r-x /private

sudo setfacl -m g:wheel:r-x /private

#Show the acls
getfacl /private

#If that was an error or we simply needed to remove an entry
setfacl -x u:apache /private

#To create a backup of an ACL
getfacl /private > /tmp/acl.txt

cat /tmp/acl.txt

#Remove the complete ACL
sudo setfacl -b /private

#Restore from the / directory. Relative paths are used
cd /

sudo setfacl --restore=/tmp/acl.txt

#Show the acls
getfacl /private