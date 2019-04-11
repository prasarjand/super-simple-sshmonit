# super-simple-sshmonit

this is super simple ssh monitoring log using nc
this program isn't secure way, but when i have workload and test this is the fastest way

the test have tried on digitalocean box with ubuntu installed

server.sh
loop of nc listen on 8000 port

client.sh
execute when users login, and send few variable such as user, ip, hostname

### how to use
🚀 deploy using ansible
- clone the repo
- edit client.sh with your server ip
- edit hosts file under ansible folder with your server and client ip
- execute **ansible-playbook -i hosts setup.yml** to setup everything

##### what setup.yml do?
setup.yml include a few configuration  to make ansible works
first it will install python on your vps and setup ufw to allow ssh and port that nc using there is 8000

after that on server group it will only copy server.ssh into server vm and automaticly execute when you login to server

and then on client group it will copy client.sh to /etc/profile.d/ and make it executeable



