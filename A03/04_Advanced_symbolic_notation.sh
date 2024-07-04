#Working on ubuntu

#Create some directories
mkdir -p ubuntu/{20,18,16,14}.04/{gold,current}

#Install tree
sudo apt update && sudo apt install -y tree

#Tree
tree ubuntu

#Show the permissions
ls -lR ubuntu/

#Set the umask
umask 077

#Remove
rm -r ubuntu

#Create the directories again
mkdir -p ubuntu/{20,18,16,14}.04/{gold,current}

#Show the permissions
ls -lR ubuntu/

#Change the umask again
umask 022

#Create a new file
touch ubuntu/newfile2

ls -l ubuntu/newfile2

#Lets change the permissions
chmod -v +x ubuntu/newfile2

#The x is set because it is allowed by the umask

#Lets change the permissions
chmod -v +w ubuntu/newfile2

#The w is not set because it is not allowed by the umask

#To change we need the "a"
chmod -v a+w ubuntu/newfile2