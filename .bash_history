ssh-keygen
ssh-copy-id ubuntu@172.31.30.30
ssh-copy-id ubuntu@172.31.26.224
sudo apt-get update
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
ansible --version
ls
cd /etc/ansible
ls
sudo vim hosts
cd
ls
ls -la
ansible all -a 'ls -la'
ansible all -m command -a 'free -m'
ansible all -m shell -a 'curl -fsSL https://get.docker.com/rootless -o get-docker.sh'
ansible all -m shell -a 'sh get-docker.sh'
ssh 172.31.30.30 
ansible all -m user -a 'name=ketan password=kedarnath' -b
ssh 172.31.30.30 
ansible all -m user -a 'name=ketan password=kedarnath uid=1234 home=/tmp/ketan comment="pro user" shell=/big/bash' -b
ssh 172.31.30.30 
ansible all -m file -a 'name=file22 state=touch' -b
ssh 172.31.30.30 
ansible all -m file -a 'name=/tmp/file22 state=touch' -b
ls
ssh 172.31.26.224 
ansible all -m file -a 'name=/tmp/dir state=directory'
ssh 172.31.26.224 
ansible all -m file -a 'name=/tmp/dir state=directory'
ansible all -m copy -a 'src=dir dest=/home/ubuntu'
touch file4
ansible all -m apt -a 'name=git state=present' -b
ansible all -m apt -a 'name=tomcat9 state=present update_cache=yes' -b
ansible all -m service -a 'name=tomcat9 state=restarted' -b
ansible all -m apt -a 'name=tomcat9 state=absent purge=yes' -b
ansible all -m apt -a 'name=tomcat9 state=present update_cache=yes' -b
ansible all -m apt -a 'name=tomcat9-admin state=present' -b
vim tomcat-users.xml
cat tomcat-users.xml
ansible all -m copy -a 'src=tomcat-users.xml dest=/etc/tomct9'
ansible all -m copy -a 'src=tomcat-users.xml dest=/etc/tomct9' -b
ansible all -m service -a 'name=tomcat9 state=restarted' -b
ansible all -m uri -a 'url=http://172.31.30.30:8080 status_code=200' -b
ansible all -m uri -a 'url=http://172.31.26.224:8080 status_code=200' -b
mkdir playbooks
cd playbooks/
vim playbook.yml
ansible-playbook playbook.yml --syntax-check
ansible-playbook playbook.yml 
ansible-playbook playbook.yml -b
vim playbook1.yml
ansible-playbook playbook1.yml --syntax-check
ansible-playbook playbook2.yml -b
vim playbook2.yml
cd ..
ls
cd playbooks/
cd ..
cp   tomcat-users.xml playbooks/
cd playbooks/
ls
vim playbook2.yml
ansible-playbook playbook2.yml --syntax-check
ansible-playbook playbook2.yml 
vim playbook2.yml
ansible-playbook playbook2.yml 
cd ..
cd playbooks/
ls
git init
git add .
git commit -m "play"
git remote add origin https://github.com/kedarnathh/ansible.git
git push -u origin master
git remote add origin https://github.com/kedarnathh/ansible.git
git push -u origin master
playbooks
cd playbooks
ls
cd ..
vim playbooks
