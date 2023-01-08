#Working on ubuntu

#Create some directories
mkdir -p ubuntu/{20,18,16,14}.04/{gold,current}

#Install tree
sudp apt update && sudo apt install -y tree

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




Often, it is incorrectly thought that symbolic permissions are simpler and only
used when you start your administration career. This is far from the case as we
see with -X. The upper-case X is used to set execute only of directories or files
where execute is already set in one or more objects.