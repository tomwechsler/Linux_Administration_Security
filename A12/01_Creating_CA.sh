#Working on alma in a root session

sudo -i

#Create a private directory
mkdir -m 700 /root/ca

cd /root/ca

openssl genrsa -des -out myca.key 4096

openssl req -x509 -new -key myca.key -sha256 -days 3650 -out myca.crt



A CA is just a public key and private. key pair. The CA should de secured in the filesystem and
with a strong password