# Installing Ansible on Ubuntu OS
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
sudo apt install python3-pip -y
pip3 install boto3

# Provisioning Ansible Deployer Access
sudo useradd ansibleadmin
echo ansibleadmin | sudo passwd ansibleadmin --stdin
sudo sed -i "s/.*#host_key_checking = False/host_key_checking = False/g" /etc/ansible/ansible.cfg
sudo sed -i "s/.*#enable_plugins = host_list, virtualbox, yaml, constructed/enable_plugins = aws_ec2/g" /etc/ansible/ansible.cfg
ansible-galaxy collection install amazon.aws

# Enable Password Authentication and Grant Sudo Privilege
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo systemctl restart sshd
echo "ansibleadmin ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers

# Apache Maven Installation/Config
#sudo apt install maven -y
#sudo apt install openjdk-8-jdk -y

# Use The Amazon Linux 2 AMI When Launching The Jenkins VM/EC2 Instance
# Instance Type: t2.medium or small minimum
# Open Port (Security Group): 8080
