#Working on ubuntu


openssl genrsa -out /etc/ssl/private/ubuntu.key 2048
openssl req -new -key /etc/ssl/private/ubuntu.key -out /tmp/ubuntu.csr
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/ssh_config
systemctl restart sshd
passwd vagrant



On the Ubuntu system we will now create a new private key and certificate signing request. The
CSR will be sent to the CA. We also make sure that we can use password-based authentication
via SSH and set a password for the vagrant account that I am using