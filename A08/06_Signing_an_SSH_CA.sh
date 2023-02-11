#Working on ubuntu in a root session

sudo su -

#We need to publish our pub key to the remote systems
scp vagrant@192.168.56.101:/etc/ssh/ssh_host_rsa_key.pub alma.pub

ssh-keygen -s server_ca -I alma -h -n 192.168.56.101 -V +52w alma.pub

scp alma-cert.pub 192.168.56.101:/tmp/ssh_host_rsa_key-cert.pub

cat server_ca.pub >> /etc/ssh/ssh_known_hosts

vim /etc/ssh/ssh_known_hosts



mv /tmp/ssh_host_rsa_keys-cert.pub /etc/ssh

echo "HostCertificate /etc/ssh/ssh_host_rsa_key-cert.pup" >> /etc/ssh/sshd_config

systemctl restart sshd
