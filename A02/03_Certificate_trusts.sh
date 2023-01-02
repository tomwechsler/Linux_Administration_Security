#Working on ubuntu

#A comprehensive list
ls -l /etc/ssl/certs

#Are there any upgradables?
sudo apt list --upgradable

#We can update this list indirectly
sudo apt update && sudo apt -y upgrade




When browsing the web, we do not need to trust each web site we visit as we trust
certificate issuing authorities as part of the browser or OS. We will see more on PKI later in
the course, but for the moment lets locate these certificates.