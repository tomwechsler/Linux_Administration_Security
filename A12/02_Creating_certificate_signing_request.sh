#Working on ubuntu in a root session

sudo -i

#Generate private key
openssl genrsa -out /etc/ssl/private/ubuntu.key

#Create a certificate signing request
openssl req -new -key /etc/ssl/private/ubuntu.key -out /tmp/ubuntu.csr #Set the Common Name to ubuntu

#Check the files
file /tmp/ubuntu.csr

#Set a password for vagrant
passwd vagrant

#We set the PasswordAuthentication to yes - to be able to use scp
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/ssh_config

#Restart the service
systemctl restart sshd





On the Ubuntu system we will now create a new private key and certificate signing request. The
CSR will be sent to the CA. We also make sure that we can use password-based authentication
via SSH and set a password for the vagrant account that I am using