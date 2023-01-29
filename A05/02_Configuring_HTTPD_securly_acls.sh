#Working on alma

#First we remove apache
sudo dnf remove httpd

#And also the index.html
sudo rm -rf /var/www/html/

#Check the umask
umask

#Install apache
sudo dnf install -y httpd

#Set the default acls
sudo setfacl -m d:u:apache:r,d:o:- /var/www/html

#Check the perms (a + at the end - indicates ACLs)
ls -ld /var/www/html

getfacl /var/www/html

#Create a new index.html file
echo "Hello from the new Website!" | sudo tee /var/www/html/index.html

#The permissions
getfacl /var/www/html/index.html

ls -l /var/www/html/index.html


Default ACLs can be applied only to directories. Useful to ensure
services can maintain the correct access to files whilst restricting 
others. Setting the default ACL on the Apache DocumentRoot will not
affect existing content. Create your own new index page and the
permissions will be correct.

